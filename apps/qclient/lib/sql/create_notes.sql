CREATE TABLE notes(
   id serial PRIMARY KEY,
   note VARCHAR (255) NOT NULL,
   created_at TIMESTAMP NOT NULL default current_timestamp
);