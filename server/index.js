const { ApolloServer, gql } = require("apollo-server");
const LRU = require("lru-cache");
const { generate } = require("shortid");

// Schema definition
const typeDefs = `
type Query {
  todos: [Todo]
  todo(id: String!): Todo
}

type Todo {
  id: String!
  description: String!
}

type Mutation {
  addTodo(description: String!): Todo
  updateTodo(id: String!, description: String!): Todo
}
`;

// LRU cache for storing to-do items
const cache = new Map();
cache.set("test_id", "example task");
// Resolver definitions

function getAll_wait() {
  return new Promise((resolve) => {
    setTimeout(() => {
      const todos = [];
      cache.forEach((description, id) => todos.push({ description, id }));
      resolve(todos);
    }, 4000);
  });
}

const resolvers = {
  Query: {
    todos: async (_, args, ctx, info) => {
      const todos = await getAll_wait();
      return todos;
    },
    todo: (_, { id }) => {
      return { id, description: cache.get(id) };
    },
  },
  Mutation: {
    addTodo: (_, { description }, ctx, info) => {
      const id = generate();
      const todo = { description, id };
      cache.set(id, description);
      return todo;
    },
    updateTodo: (_, { description, id }, ctx, info) => {
      const todo = { description, id };
      cache.set(id, description);
      return todo;
    },
  },
};

const server = new ApolloServer({
  typeDefs,
  resolvers,
});

server.listen().then(({ url }) => {
  console.log(`🚀 Server ready at ${url}`);
});
