🎬 First Date Movies Neo4j: Find the Perfect Date-Night Flick! 💖
Welcome to First Date Movies Neo4j, your go-to project for picking the ideal movie for a first date! 🌟 Built with a slick Neo4j graph database and a Java app, this project rates movies based on a custom "first-date score" that balances romance 💕, humor 😂, action ⚡, adventure 🗺️, and more. Whether you're vibing with The Princess Bride's swashbuckling romance or steering clear of The Purge's chaos, we've got you covered!
Why This Project Rocks 🎸

Smart Recommendations: A unique formula scores movies for first-date magic, blending IMDb ratings with qualities like emotional depth, romance, and adventure.
Graph-Powered: Neo4j stores movies as nodes with properties like title, year, imdb, emotional, drama, romance, action, funny, char_dev, and adventure.
Custom Scoring: Our formula—(imdb + (romance * 1.2) + (funny * 1.2) + emotional + char_dev + (drama * 0.8) + (action * 0.8) + (adventure * 0.8)) / 8—prioritizes light, fun, and connective vibes for all audiences.
Loaded with Hits: 27 movies, from Amélie to Back to the Future, ready to spark a great date night.
Java Integration: A Maven-based app to add movies and fetch recommendations with ease.

🚀 Get Started in Minutes!
What You Need

Java: JDK 17+ (OpenJDK works great).
Maven: For building the Java app.
Neo4j: Community Edition 5.x (Neo4j Desktop is the easiest way).
Git: To clone this repo.

Step-by-Step Setup

Clone the Repo 🖥️
git clone https://github.com/your-username/first-date-movies-neo4j.git
cd first-date-movies-neo4j


Set Up Neo4j 🗃️

Grab Neo4j Desktop (free for dev use).
Create a new project and a local DBMS (version 5.x).
Set a password (e.g., password) and note the Bolt URL: bolt://localhost:7687.
Start the database and open Neo4j Browser.


Install Java & Maven ☕

Install JDK 17+ (e.g., brew install openjdk@17 on macOS, sudo apt install openjdk-17-jdk on Ubuntu).
Install Maven (e.g., brew install maven or download from Apache Maven).
Check: java -version and mvn -version.


Load the Movie Magic 🎥

In Neo4j Browser, run the Cypher queries in src/main/resources/add_movies.cypher to add 27 movies and create an index.
Sneak peek? Try this query to see top picks:MATCH (m:Movie)
WITH m,
     (m.imdb + (m.romance * 1.2) + (m.funny * 1.2) + m.emotional + m.char_dev + (m.drama * 0.8) + (m.action * 0.8) + (m.adventure * 0.8)) / 8 AS first_date_score
RETURN m.title, m.year, m.imdb, first_date_score
ORDER BY first_date_score DESC
LIMIT 5;




Run the Java App 🚀

Ensure Neo4j is running.
Build: mvn clean package
Run: mvn exec:java -Dexec.mainClass="MovieRecommender"
This adds a sample movie (e.g., Amélie) and lists recommendations with scores ≥ 7.0.



📂 Project Structure

pom.xml: Maven setup with Neo4j Java Driver.
src/main/java/MovieRecommender.java: Java code to add movies and get recommendations.
src/main/resources/add_movies.cypher: Cypher script with movie data.

🎉 Try It Out!

Add a Movie: Use the Java app or Cypher.app.addMovie("Clueless", 1995, 6.9, 7, 4, 8, 1, 9, 7, 2);


Get Recommendations: Call getRecommendations(7.0) for top date-night picks.
Sample Output:




🤝 Contribute to the Date-Night Vibes!
Love movies? Got ideas? Here's how to join the fun:

Fork this repo.
Create a branch: git checkout -b feature/more-movies.
Add movies, tweak the formula, or build a cool UI.
Commit: git commit -m "Added more rom-coms".
Push: git push origin feature/more-movies.
Open a pull request and share your vision!

📜 License
MIT License. See LICENSE for details.
🌈 What's Next?

Add genres as nodes (e.g., (Movie)-[:HAS_GENRE]->(Genre)).
Build a web app with Spring Boot or React for easy browsing.
Deploy to Neo4j Aura for cloud access.

Plan the perfect first date with the perfect movie! 🎞️ Got questions or ideas? Open an issue or dive in! 🚀
