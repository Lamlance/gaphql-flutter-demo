const express = require("express");
const { graphqlHTTP } = require("express-graphql");

const schema = require("./server/schema/schema");
const mongoose = require("mongoose");

const app = express();
const cors = require("cors");
const port = process.env.PORT || 4000;

app.use(cors());
app.use(
  "/graphql",
  graphqlHTTP({
    graphiql: true,
    schema: schema,
  })
);

mongoose
  .connect(
    `mongodb://MONGO_USER:MONGO_123@localhost:7000/demo_graphql?authSource=admin`
  )
  .then(() => {
    app.listen({ port: port }, () => {
      console.log("Listening for requests on http://localhost:" + port);
    });
  })
  .catch((e) => {
    console.log(process.env.mongoUserName);
    return console.log("Error:::" + e);
  });
