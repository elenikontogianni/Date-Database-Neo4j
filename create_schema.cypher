//create schema
CREATE INDEX movie_title IF NOT EXISTS FOR (m:Movie) ON (m.title);
//add data
MERGE (:Movie {title: 'The Princess Bride', year: 1987, imdb: 8.0, emotional: 8, drama: 7, romance: 9, action: 7, funny: 9, char_dev: 8, adventure: 9});
MERGE (:Movie {title: 'The Purge', year: 2013, imdb: 5.8, emotional: 4, drama: 5, romance: 1, action: 9, funny: 2, char_dev: 4, adventure: 3});
MERGE (:Movie {title: 'When Harry Met Sally', year: 1989, imdb: 7.7, emotional: 9, drama: 6, romance: 10, action: 1, funny: 10, char_dev: 9, adventure: 1});
MERGE (:Movie {title: 'Pretty Woman', year: 1990, imdb: 7.1, emotional: 8, drama: 6, romance: 9, action: 2, funny: 7, char_dev: 7, adventure: 1});
MERGE (:Movie {title: 'Love Actually', year: 2003, imdb: 7.5, emotional: 8, drama: 7, romance: 9, action: 2, funny: 8, char_dev: 7, adventure: 2});
MERGE (:Movie {title: '10 Things I Hate About You', year: 1999, imdb: 7.4, emotional: 8, drama: 5, romance: 9, action: 2, funny: 9, char_dev: 8, adventure: 2});
MERGE (:Movie {title: 'Notting Hill', year: 1999, imdb: 7.2, emotional: 8, drama: 5, romance: 9, action: 1, funny: 8, char_dev: 7, adventure: 1});
MERGE (:Movie {title: 'The Notebook', year: 2004, imdb: 7.8, emotional: 10, drama: 9, romance: 10, action: 3, funny: 3, char_dev: 9, adventure: 2});
MERGE (:Movie {title: 'La La Land', year: 2016, imdb: 8.0, emotional: 9, drama: 8, romance: 9, action: 2, funny: 6, char_dev: 9, adventure: 3});
MERGE (:Movie {title: 'Crazy Rich Asians', year: 2018, imdb: 6.9, emotional: 8, drama: 7, romance: 8, action: 1, funny: 8, char_dev: 7, adventure: 4});
MERGE (:Movie {title: 'Romancing the Stone', year: 1984, imdb: 6.9, emotional: 7, drama: 6, romance: 8, action: 8, funny: 7, char_dev: 7, adventure: 9});
MERGE (:Movie {title: 'Mr. & Mrs. Smith', year: 2005, imdb: 6.5, emotional: 6, drama: 5, romance: 7, action: 9, funny: 6, char_dev: 6, adventure: 5});
MERGE (:Movie {title: 'The Proposal', year: 2009, imdb: 6.8, emotional: 8, drama: 5, romance: 9, action: 1, funny: 8, char_dev: 7, adventure: 4});
MERGE (:Movie {title: 'Crazy, Stupid, Love', year: 2011, imdb: 7.4, emotional: 9, drama: 7, romance: 9, action: 1, funny: 9, char_dev: 9, adventure: 2});
MERGE (:Movie {title: 'How to Lose a Guy in 10 Days', year: 2003, imdb: 6.5, emotional: 7, drama: 4, romance: 9, action: 2, funny: 8, char_dev: 7, adventure: 3});
MERGE (:Movie {title: 'Back to the Future', year: 1985, imdb: 8.5, emotional: 8, drama: 6, romance: 6, action: 7, funny: 8, char_dev: 8, adventure: 10});
MERGE (:Movie {title: 'Top Gun', year: 1986, imdb: 7.0, emotional: 7, drama: 7, romance: 7, action: 10, funny: 5, char_dev: 7, adventure: 8});
MERGE (:Movie {title: 'Amélie', year: 2001, imdb: 8.3, emotional: 9, drama: 5, romance: 8, action: 1, funny: 8, char_dev: 8, adventure: 3});
MERGE (:Movie {title: 'Silver Linings Playbook', year: 2012, imdb: 7.7, emotional: 9, drama: 8, romance: 9, action: 1, funny: 8, char_dev: 9, adventure: 2});
MERGE (:Movie {title: 'The Big Sick', year: 2017, imdb: 7.5, emotional: 8, drama: 6, romance: 9, action: 1, funny: 9, char_dev: 8, adventure: 2});
MERGE (:Movie {title: 'Clueless', year: 1995, imdb: 6.9, emotional: 7, drama: 4, romance: 8, action: 1, funny: 9, char_dev: 7, adventure: 2});
MERGE (:Movie {title: 'Indiana Jones and the Last Crusade', year: 1989, imdb: 8.2, emotional: 7, drama: 6, romance: 5, action: 10, funny: 7, char_dev: 8, adventure: 10});
MERGE (:Movie {title: 'Stardust', year: 2007, imdb: 7.6, emotional: 8, drama: 6, romance: 9, action: 7, funny: 7, char_dev: 8, adventure: 9});
MERGE (:Movie {title: 'About Time', year: 2013, imdb: 7.8, emotional: 9, drama: 7, romance: 9, action: 1, funny: 8, char_dev: 9, adventure: 4});
MERGE (:Movie {title: 'The Grand Budapest Hotel', year: 2014, imdb: 8.1, emotional: 7, drama: 6, romance: 5, action: 4, funny: 9, char_dev: 7, adventure: 8});
MERGE (:Movie {title: 'Midnight in Paris', year: 2011, imdb: 7.6, emotional: 8, drama: 5, romance: 8, action: 1, funny: 7, char_dev: 7, adventure: 4});
MERGE (:Movie {title: 'Pride and Prejudice', year: 2005, imdb: 7.8, emotional: 9, drama: 8, romance: 10, action: 1, funny: 6, char_dev: 9, adventure: 2});
MERGE (:Movie {title: 'Shrek', year: 2001, imdb: 7.9, emotional: 8, drama: 4, romance: 7, action: 6, funny: 9, char_dev: 8, adventure: 8});
MERGE (:Movie {title: 'Forrest Gump', year: 1994, imdb: 8.8, emotional: 10, drama: 8, romance: 8, action: 4, funny: 7, char_dev: 9, adventure: 7});
MERGE (:Movie {title: 'The Fault in Our Stars', year: 2014, imdb: 7.7, emotional: 10, drama: 9, romance: 10, action: 1, funny: 4, char_dev: 9, adventure: 3});
MERGE (:Movie {title: 'Zombieland', year: 2009, imdb: 7.6, emotional: 7, drama: 5, romance: 6, action: 8, funny: 9, char_dev: 7, adventure: 7});
MERGE (:Movie {title: 'Pitch Perfect', year: 2012, imdb: 7.1, emotional: 7, drama: 5, romance: 7, action: 1, funny: 9, char_dev: 7, adventure: 2});
MERGE (:Movie {title: 'The Secret Life of Walter Mitty', year: 2013, imdb: 7.3, emotional: 8, drama: 6, romance: 6, action: 4, funny: 7, char_dev: 8, adventure: 9});
MERGE (:Movie {title: '500 Days of Summer', year: 2009, imdb: 7.7, emotional: 9, drama: 7, romance: 9, action: 1, funny: 8, char_dev: 9, adventure: 2});
MERGE (:Movie {title: 'Enchanted', year: 2007, imdb: 7.1, emotional: 8, drama: 4, romance: 8, action: 3, funny: 8, char_dev: 7, adventure: 6});
MERGE (:Movie {title: 'The Mummy', year: 1999, imdb: 7.1, emotional: 6, drama: 5, romance: 6, action: 9, funny: 7, char_dev: 7, adventure: 10});
MERGE (:Movie {title: 'Love, Simon', year: 2018, imdb: 7.5, emotional: 9, drama: 7, romance: 9, action: 1, funny: 7, char_dev: 8, adventure: 2});
//queries
MATCH (m:Movie)
WITH m,
     (m.imdb + (m.romance * 1.2) + (m.funny * 1.2) + m.emotional + m.char_dev + (m.drama * 0.8) + (m.action * 0.8) + (m.adventure * 0.8)) / 8 AS first_date_score
RETURN m.title, m.year, m.imdb, first_date_score
ORDER BY first_date_score DESC;
