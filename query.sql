CREATE TABLE Games_Hours(
  gameid INT NOT NULL PRIMARY KEY,
  gamename VARCHAR NOT NULL,
  gamehours INT NOT NULL
);
CREATE TABLE Game_Recommendation(
gameid INT NOT NULL FOREIGN KEY REFERENCES Games_Hours (gameid),
gamename VARCHAR NOT NULL PRIMARY KEY,
metacritic VARCHAR NOT NULL,
reccount INT NOT NULL,
IsFree BOOLEAN NOT NULL,
PCRECs VARCHAR NOT NULL,
Price INT NOT NULL
),

CREATE TABLE Publisher_data(
gamename VARCHAR NOT NULL FOREIGN KEY REFERENCES Games_Recommendation (gamename),
developers VARCHAR NOT NULL,
publisher VARCHAR NOT NULL,
popular_tags VARCHAR NOT NULL,
minreqs VARCHAR NOT NULL,
price VARCHAR NOT NULL FOREIGN KEY REFERENCES Game_Recommendation (Price)
);

