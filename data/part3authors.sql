
CREATE TABLE IF NOT EXISTS
      authors(
        authorID INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        name VARCHAR (100) NOT NULL,
        img VARCHAR (300) NOT NULL,
        articles VARCHAR (20) NOT NULL
)