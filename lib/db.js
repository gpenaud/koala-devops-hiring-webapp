// db.js
import mysql from "serverless-mysql";

const env = process.env;
const db = mysql({
  config: {
    host: env.MYSQL_HOST,
    port: env.MYSQL_PORT,
    database: env.MYSQL_DATABASE,
    user: env.MYSQL_USER,
    password: env.MYSQL_PASSWORD,
  },
});

export async function excuteQuery(query, values) {
  try {
    const articles = await db.query(query, values);
    await db.end();
    return { articles };
  } catch (error) {
    return { articles: [], error: error.message };
  }
}
