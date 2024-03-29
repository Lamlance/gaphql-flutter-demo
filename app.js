const express = require("express");
var { graphqlHTTP } = require("express-graphql");

const schema = require("./server/schema/schema.js");
const mongoose = require("mongoose");

const app = express();
const port = process.env.PORT || 4000;
const cors = require("cors");

app.use(cors());
app.use(
  "/graphql",
  graphqlHTTP({
    graphiql: true,
    schema,
  })
);

mongoose
  .connect(
    `mongodb://MONGO_USER:MONGO_123@localhost:7000/demo_graphql?authSource=admin`
  )
  .then(() => {
    app.listen({ port: port }, () => {
      console.log("Listening for requests on port" + port);
    });
  })
  .catch((e) => {
    console.log(process.env.mongoUserName);
    return console.log("Error:::" + e);
  });
