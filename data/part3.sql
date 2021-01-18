CREATE TABLE IF NOT EXISTS
    articles(
        articleID INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        headLine VARCHAR (100) NOT NULL,
        subHead VARCHAR (100) NOT NULL,
        content VARCHAR (500) NOT NULL,
        category VARCHAR (20) NOT NULL,
        author VARCHAR (20) NOT NULL
)
