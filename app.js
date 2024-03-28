const express = require('express');
const { graphqlHTTP } = require('express-graphql');

const schema = require('./server/schema/schema');
const mongoose = require('mongoose');

const app = express(); 
const port = process.env.PORT || 4000;

app.use('/graphql', graphqlHTTP({
    graphiql: true,
    schema: schema
}));

mongoose
.connect(
    `mongodb+srv://${process.env.mongoUserName}:${process.env.mongoUserPassword}@graphqlcluster.vkaygmz.mongodb.net/${process.env.mongoDatabase}?retryWrites=true&w=majority&appName=GraphqlCluster
`
)
.then(()=>{
    app.listen({port: port}, ()=>{
        console.log('Listening for requests on port' + port)
    });
})
.catch((e) => {
    console.log(process.env.mongoUserName);
    return console.log("Error:::" + e);
  });
