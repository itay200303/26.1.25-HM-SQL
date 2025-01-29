CREATE TABLE eurovision_results(
competition_year INTEGER PRIMARY KEY AUTOINCREMENT,
hosting_country TEXT NOT NULL,
winning_country_name TEXT NOT NULL,
song_id INTEGER,
singer_id INTEGER,
FOREIGN KEY (hosting_country) REFERENCES countries(country),
FOREIGN KEY (winning_country_name) REFERENCES countries (country),
FOREIGN KEY (song_id) REFERENCES songs (song_id),
FOREIGN KEY (singer_id) REFERENCES singers (singer_id)
);
