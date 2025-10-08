🎬 First Date Movies Neo4j: Find the Perfect Date-Night Flick! 💖


Welcome to First Date Movies Neo4j, your go-to project for picking the ideal movie for a first date! 🌟 Built with a slick Neo4j graph database and a Java app, this project rates movies based on a custom "first-date score" that balances romance 💕, humor 😂, action ⚡, adventure 🗺️, and more. From Shrek's ogre-sized charm to The Princess Bride's swashbuckling romance, we've got your date night covered!
Why This Project Rocks 🎸

Smart Recommendations: A unique formula scores movies for first-date magic, blending IMDb ratings with qualities like emotional depth, romance, and adventure.
Graph-Powered: Neo4j stores movies as nodes with properties like title, year, imdb, emotional, drama, romance, action, funny, char_dev, and adventure.
Graph Visualizations: See movies and genres (like Animation for Shrek) connected in Neo4j Browser or a web-based interactive graph!
Custom Scoring: Our formula—(imdb + (romance * 1.2) + (funny * 1.2) + emotional + char_dev + (drama * 0.8) + (action * 0.8) + (adventure * 0.8)) / 8—prioritizes light, fun, and connective vibes for all audiences.
Loaded with Hits: 37 movies, from Forrest Gump to Zombieland, ready to spark a great date night.
Java & Web Integration: A Maven-based app for data management and a Vis.js web page for graph visualization.

🚀 Get Started in Minutes!
What You Need

Java: JDK 17+ (OpenJDK works great).
Maven: For building the Java app.
Neo4j: Community Edition 5.x (Neo4j Desktop is the easiest way).
Git: To clone this repo.
Python 3: For serving the web visualization.
Browser: For Neo4j Browser and web viz (e.g., Chrome, Edge).

Step-by-Step Setup

Clone the Repo 🖥️
git clone https://github.com/your-username/first-date-movies-neo4j.git
cd first-date-movies-neo4j


Set Up Neo4j 🗃️

Download Neo4j Desktop (free for dev use).
Install and create a new project with a local DBMS (version 5.x).
Set a password (e.g., password) and note the Bolt URL: bolt://localhost:7687.
Start the database and open Neo4j Browser.


Install Java & Maven ☕

Install JDK 17+ from Oracle (Windows x64).
Set JAVA_HOME (e.g., C:\Program Files\Java\jdk-17) and add to Path.
Install Maven from Apache Maven.
Verify: java -version and mvn -version in PowerShell.


Load the Movie Magic 🎥

In Neo4j Browser, run the queries in src/main/resources/add_movies.cypher to add 37 movies, genres, and relationships.

Visualize the graph:
MATCH (m:Movie)-[:HAS_GENRE]->(g:Genre)
RETURN m, g
LIMIT 50;


See movies (blue), genres (green, Animation in orange in web viz) in an interactive graph. Customize in the Browser sidebar!




Run the Java App 🚀

Ensure Neo4j is running.
Build: mvn clean package
Run: mvn exec:java -Dexec.mainClass="MovieRecommender"
This adds Shrek and lists recommendations with scores ≥ 7.0.


Explore the Web Visualization 🌐

Ensure Neo4j is running.
Serve the web page: mvn exec:exec
Open http://localhost:8000 in a browser.
See an interactive graph of movies and genres (e.g., Shrek linked to Animation in orange).



📂 Project Structure

pom.xml: Maven setup with Neo4j Java Driver and web server plugin.
src/main/java/MovieRecommender.java: Java code to add movies and get recommendations.
src/main/resources/add_movies.cypher: Cypher script with movie and genre data.
web/index.html: Web page for graph visualization.
web/app.js: JavaScript to fetch and render the graph with Vis.js.

🎉 Try It Out!

Add a Movie: Use the Java app or Cypher.
app.addMovie("Shrek", 2001, 7.9, 8, 4, 7, 6, 9, 8, 8);


Get Recommendations: Call getRecommendations(7.0) for top date-night picks.

Visualize: Use Neo4j Browser or the web page to see movie-genre connections.

Sample Output:



Title
Year
IMDb
First-Date Score



Forrest Gump
1994
8.8
8.3


Back to the Future
1985
8.5
8.1


The Princess Bride
1987
8.0
8.0


Shrek
2001
7.9
7.9


Amélie
2001
8.3
7.9




🤝 Contribute to the Date-Night Vibes!
Love movies? Got ideas? Here's how to join the fun:

Fork this repo.
Create a branch: git checkout -b feature/more-movies.
Add movies, tweak the visualization, or enhance the web UI.
Commit: git commit -m "Added more rom-coms".
Push: git push origin feature/more-movies.
Open a pull request and share your vision!

📜 License
MIT License. See LICENSE for details.
🌈 What's Next?

Add more relationships (e.g., actors, directors).

Upgrade to Neo4j Bloom for fancier visualizations.

Build a full web app with Spring Boot or React.

 
Plan the perfect first date with the perfect movie! 🎞️ Got questions or ideas? Open an issue or dive in! 🚀


