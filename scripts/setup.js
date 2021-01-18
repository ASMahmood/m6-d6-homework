require("dotenv").config();
const fs = require("fs");
const path = require("path");
const db = require("../db");
const { promisify } = require("util");
const read = promisify(fs.readFile);
const dataPath = path.join(__dirname, "../data/northwind.sql");
const part3Path = path.join(__dirname, "../data/part3.sql");
const part3PathAuthors = path.join(__dirname, "../data/part3authors.sql");
const part3PathReviews = path.join(__dirname, "../data/part3reviews.sql");
const insertData = async () => {
  try {
    const data = await read(dataPath);
    const sqlQueryString = data.toString();
    await db.query(sqlQueryString);
    /*IMPORTING TABLES FOR PART 3. VERY LONG. MUSH WASTED CODE*/
    const dataPart3 = await read(part3Path);
    const sqlQueryStringForPart3 = dataPart3.toString();
    await db.query(sqlQueryStringForPart3);
    /*AUTHORS*/
    const dataPart3Authors = await read(part3PathAuthors);
    const sqlQueryStringForPart3Authors = dataPart3Authors.toString();
    await db.query(sqlQueryStringForPart3Authors);
    /*REVIEWS*/
    const dataPart3Reviews = await read(part3PathReviews);
    const sqlQueryStringForPart3Reviews = dataPart3Reviews.toString();
    await db.query(sqlQueryStringForPart3Reviews);
    console.info(`All data set! you are ready to go 🔥🔥🔥`);
  } catch (e) {
    console.error("Data insertion is failed 😓");
    console.log(e);
  }
  db.pool.end();
};

insertData();
