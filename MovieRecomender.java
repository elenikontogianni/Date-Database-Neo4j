import org.neo4j.driver.*;
import static org.neo4j.driver.Values.parameters;

import java.util.List;
import java.util.Map;

public class MovieRecommender {
    private final Driver driver;

    public MovieRecommender(String uri, String user, String password) {
        driver = GraphDatabase.driver(uri, AuthTokens.basic(user, password));
    }

    public void addMovie(String title, int year, double imdb, int emotional, int drama, int romance, int action, int funny, int charDev, int adventure) {
        try (Session session = driver.session()) {
            session.run("MERGE (m:Movie {title: $title}) " +
                        "SET m.year = $year, m.imdb = $imdb, m.emotional = $emotional, " +
                        "m.drama = $drama, m.romance = $romance, m.action = $action, " +
                        "m.funny = $funny, m.char_dev = $charDev, m.adventure = $adventure",
                    parameters("title", title, "year", year, "imdb", imdb, "emotional", emotional,
                               "drama", drama, "romance", romance, "action", action, "funny", funny, 
                               "charDev", charDev, "adventure", adventure));
        }
    }

    public List<Map<String, Object>> getRecommendations(double minScore) {
        try (Session session = driver.session()) {
            return session.run("MATCH (m:Movie) " +
                               "WITH m, " +
                               "(m.imdb + (m.romance * 1.2) + (m.funny * 1.2) + m.emotional + m.char_dev + " +
                               "(m.drama * 0.8) + (m.action * 0.8) + (m.adventure * 0.8)) / 8 AS score " +
                               "RETURN m.title AS title, m.year AS year, m.imdb AS imdb, score AS first_date_score " +
                               "ORDER BY score DESC " +
                               "WHERE score >= $minScore",
                               parameters("minScore", minScore))
                    .list(r -> Map.of("title", r.get("title").asString(),
                                      "year", r.get("year").asInt(),
                                      "imdb", r.get("imdb").asDouble(),
                                      "first_date_score", r.get("first_date_score").asDouble()));
        }
    }

    public void close() {
        driver.close();
    }

    public static void main(String[] args) {
        MovieRecommender app = new MovieRecommender("bolt://localhost:7687", "neo4j", "password");
        // Example: Add a movie
        app.addMovie("Indiana Jones and the Raiders of the Lost Ark", 1981, 8.4, 7, 6, 5, 10, 7, 8, 10);
        // Get recommendations
        List<Map<String, Object>> recs = app.getRecommendations(7.0);
        recs.forEach(System.out::println);
        app.close();
    }
}
