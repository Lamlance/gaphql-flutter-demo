const graphql = require("graphql");
var _lodash = require("lodash");
const GGame = require("../model/game.js");
const GTypeGame = require("../model/typeGame.js");
const GPublisher = require("../model/publisher.js");

//some dummy data for test
// var gamesData = [
//     {id: '1', name: 'Call of Duty', price: 60, typeID: ['1', '21'], publisherID: '1'},
//     {id: '2', name: 'GTA V', price: 50, typeID: ['2', '16', '17'], publisherID: '2'},
//     {id: '3', name: 'The Sims 4', price: 45, typeID: ['3', '14'], publisherID: '3'},
//     {id: '4', name: 'FIFA 21', price: 55, typeID: ['4', '15'], publisherID: '3'},
//     {id: '5', name: 'Minecraft', price: 30, typeID: ['5', '17'], publisherID: '4'},
//     {id: '6', name: 'Red Dead Redemption 2', price: 55, typeID: ['2', '16'], publisherID: '2'},
//     {id: '7', name: 'Assassin\'s Creed Valhalla', price: 60, typeID: ['2', '17'], publisherID: '5'},
//     {id: '8', name: 'Cyberpunk 2077', price: 60, typeID: ['6', '22'], publisherID: '6'},
//     {id: '9', name: 'Overwatch', price: 40, typeID: ['1', '17'], publisherID: '7'},
//     {id: '10', name: 'Fortnite', price: 0, typeID: ['15', '17'], publisherID: '8'},
//     {id: '11', name: 'Rocket League', price: 20, typeID: ['4', '20'], publisherID: '9'},
//     {id: '12', name: 'League of Legends', price: 0, typeID: ['16', '29'], publisherID: '10'},
//     {id: '13', name: 'Among Us', price: 5, typeID: ['15', '28'], publisherID: '11'},
//     {id: '14', name: 'Apex Legends', price: 0, typeID: ['15', '17'], publisherID: '3'},
//     {id: '15', name: 'Valorant', price: 0, typeID: ['1', '22'], publisherID: '10'},
//     {id: '16', name: 'The Legend of Zelda: Breath of the Wild', price: 60, typeID: ['2', '9', '16'], publisherID: '12'},
//     {id: '17', name: 'Super Mario Odyssey', price: 60, typeID: ['9', '17'], publisherID: '12'},
//     {id: '18', name: 'Death Stranding', price: 40, typeID: ['2', '8'], publisherID: '13'},
//     {id: '19', name: 'Persona 5', price: 40, typeID: ['6', '16'], publisherID: '14'},
//     {id: '20', name: 'The Witcher 3: Wild Hunt', price: 40, typeID: ['6', '17'], publisherID: '6'},
//     {id: '21', name: 'Halo Infinite', price: 60, typeID: ['1', '17'], publisherID: '15'},
//     {id: '22', name: 'God of War', price: 50, typeID: ['2', '9'], publisherID: '16'},
//     {id: '23', name: 'Forza Horizon 5', price: 60, typeID: ['20', '17'], publisherID: '15'},
//     {id: '24', name: 'Battlefield 2042', price: 60, typeID: ['1', '17'], publisherID: '3'},
//     {id: '25', name: 'Madden NFL 22', price: 60, typeID: ['4', '17'], publisherID: '3'},
//     {id: '26', name: 'Rainbow Six Siege', price: 20, typeID: ['1', '23'], publisherID: '5'},
//     {id: '27', name: 'Mortal Kombat 11', price: 40, typeID: ['10', '17'], publisherID: '17'},
//     {id: '28', name: 'Horizon Zero Dawn', price: 40, typeID: ['2', '17'], publisherID: '16'},
//     {id: '29', name: 'Final Fantasy VII Remake', price: 60, typeID: ['6', '16'], publisherID: '16'},
//     {id: '30', name: 'Splatoon 2', price: 50, typeID: ['1', '17'], publisherID: '12'},
//     {id: '31', name: 'The Last of Us Part II', price: 60, typeID: ['2', '17'], publisherID: '15'},
//     {id: '32', name: 'Far Cry 6', price: 60, typeID: ['7', '17'], publisherID: '5'},
//     {id: '33', name: 'Resident Evil Village', price: 60, typeID: ['11', '17'], publisherID: '17'},
//     {id: '34', name: 'Hitman 3', price: 60, typeID: ['8', '17'], publisherID: '7'},
//     {id: '35', name: 'NBA 2K22', price: 60, typeID: ['4', '17'], publisherID: '3'},
//     {id: '36', name: 'Assassin\'s Creed Odyssey', price: 50, typeID: ['2', '17'], publisherID: '5'},
//     {id: '37', name: 'Doom Eternal', price: 50, typeID: ['1', '17'], publisherID: '1'},
//     {id: '38', name: 'Farming Simulator 22', price: 40, typeID: ['3', '17'], publisherID: '7'},
//     {id: '39', name: 'Resident Evil 3 Remake', price: 50, typeID: ['11', '17'], publisherID: '17'},
//     {id: '40', name: 'Sekiro: Shadows Die Twice', price: 60, typeID: ['2', '22'], publisherID: '12'},
//     {id: '41', name: 'Terraria', price: 10, typeID: ['5', '17'], publisherID: '4'},
//     {id: '42', name: 'Roblox', price: 0, typeID: ['5', '15', '17'], publisherID: '4'},
// ];

// var typeGamesData = [
//     {id_type: '1', type_name: 'Shooter', description: 'Test player\'s speed and reaction time with focus on using weapons like guns.'},
//     {id_type: '2', type_name: 'Action', description: 'Emphasize physical challenges, combat, exploration, and puzzle-solving.'},
//     {id_type: '3', type_name: 'Simulation', description: 'Mimic real-world activities and systems, providing immersive experiences.'},
//     {id_type: '4', type_name: 'Sport', description: 'Simulate traditional physical sports with realistic representations.'},
//     {id_type: '5', type_name: 'Sandbox', description: 'Offer freedom to explore and create within virtual worlds.'},
//     {id_type: '6', type_name: 'RPG', description: 'Focus on character development, narrative-driven storytelling, and player choices.'},
//     {id_type: '7', type_name: 'Strategy', description: 'Require planning, resource management, and tactical decision-making.'},
//     {id_type: '8', type_name: 'Adventure', description: 'Feature exploration, puzzle-solving, and narrative-driven gameplay.'},
//     {id_type: '9', type_name: 'Platformer', description: 'Challenge players with navigating environments and overcoming obstacles.'},
//     {id_type: '10', type_name: 'Fighting', description: 'Focus on one-on-one combat between characters with various fighting styles.'},
//     {id_type: '11', type_name: 'Horror', description: 'Evoke fear and tension through atmospheric elements, suspenseful gameplay, and supernatural themes.'},
//     {id_type: '12', type_name: 'Puzzle', description: 'Require logical thinking and problem-solving skills to progress through challenges.'},
//     {id_type: '13', type_name: 'Music/Rhythm', description: 'Test players\' rhythm and coordination through gameplay mechanics based on music.'},
//     {id_type: '14', type_name: 'Educational', description: 'Provide entertainment while imparting knowledge and skills in various subjects.'},
//     {id_type: '15', type_name: 'Party', description: 'Designed for multiplayer enjoyment, often featuring mini-games and competitive challenges.'},
//     {id_type: '16', type_name: 'Role-Playing', description: 'Immerse players in fictional worlds where they assume the roles of characters and embark on adventures.'},
//     {id_type: '17', type_name: 'Open World', description: 'Offer expansive virtual environments for players to explore freely and engage in various activities.'},
//     {id_type: '18', type_name: 'Survival', description: 'Challenge players to survive in hostile environments by managing resources and crafting tools.'},
//     {id_type: '19', type_name: 'MMORPG', description: 'Massively multiplayer online role-playing games with large open worlds and persistent online interactions.'},
//     {id_type: '20', type_name: 'Racing', description: 'Focus on fast-paced competition between vehicles, ranging from realistic simulations to arcade-style experiences.'},
//     {id_type: '21', type_name: 'Card', description: 'Utilize decks of cards as primary game mechanics, often featuring strategic gameplay and deck-building elements.'},
//     {id_type: '22', type_name: 'Stealth', description: 'Challenge players to navigate environments undetected, relying on stealthy tactics to avoid confrontation.'},
//     {id_type: '23', type_name: 'Tactical', description: 'Require strategic thinking, coordination, and precision to overcome challenges and enemies.'},
//     {id_type: '24', type_name: 'Text-Based', description: 'Present gameplay primarily through text, allowing players to make choices and interact with the game world through written descriptions.'},
//     {id_type: '25', type_name: 'Artillery', description: 'Focus on combat between long-range projectiles, requiring players to aim and calculate trajectories to defeat opponents.'},
//     {id_type: '26', type_name: 'Tower Defense', description: 'Task players with defending a base or territory from waves of enemies by strategically placing defensive structures.'},
//     {id_type: '27', type_name: 'Hack and Slash', description: 'Feature fast-paced combat against hordes of enemies, often emphasizing melee attacks and flashy combos.'},
//     {id_type: '28', type_name: 'Visual Novel', description: 'Combine storytelling with interactive elements, allowing players to make choices that influence the narrative outcome.'},
//     {id_type: '29', type_name: 'Virtual Reality (VR)', description: 'Designed specifically for virtual reality platforms, providing immersive and interactive experiences in VR environments.'},
//     {id_type: '30', type_name: 'Idle/Incremental', description: 'Require minimal player input, with gameplay centered around incremental progress and resource management over time.'}
// ];

// var publishersData = [
//     { id_publisher: '1', publisher_name: 'Activision', location: 'Santa Monica, California', since: 1979, gameTypeID: ['1', '2', '3', '4', '5', '20'] },
//     { id_publisher: '2', publisher_name: 'Rockstar Games', location: 'New York City, New York', since: 1998, gameTypeID: ['2', '6', '9', '18', '28'] },
//     { id_publisher: '3', publisher_name: 'Electronic Arts', location: 'Redwood City, California', since: 1982, gameTypeID: ['4', '7', '14', '24', '25'] },
//     { id_publisher: '4', publisher_name: 'Mojang Studios', location: 'Stockholm, Sweden', since: 2009, gameTypeID: ['5'] },
//     { id_publisher: '5', publisher_name: 'Ubisoft', location: 'Montreuil, France', since: 1986, gameTypeID: ['7'] },
//     { id_publisher: '6', publisher_name: 'CD Projekt', location: 'Warsaw, Poland', since: 1994, gameTypeID: ['8', '19', '20', '29'] },
//     { id_publisher: '7', publisher_name: 'Blizzard Entertainment', location: 'Irvine, California', since: 1991, gameTypeID: ['9', '15', '27'] },
//     { id_publisher: '8', publisher_name: 'Epic Games', location: 'Cary, North Carolina', since: 1991, gameTypeID: ['10'] },
//     { id_publisher: '9', publisher_name: 'Psyonix', location: 'San Diego, California', since: 2001, gameTypeID: ['11'] },
//     { id_publisher: '10', publisher_name: 'Riot Games', location: 'Los Angeles, California', since: 2006, gameTypeID: ['12', '13'] },
//     { id_publisher: '11', publisher_name: 'InnerSloth', location: 'Redmond, Washington', since: 2015, gameTypeID: ['13'] },
//     { id_publisher: '12', publisher_name: 'Nintendo', location: 'Kyoto, Japan', since: 1889, gameTypeID: ['16', '17', '23', '30'] },
//     { id_publisher: '13', publisher_name: 'Kojima Productions', location: 'Tokyo, Japan', since: 2005, gameTypeID: ['18'] },
//     { id_publisher: '14', publisher_name: 'Atlus', location: 'Setagaya, Tokyo, Japan', since: 1986, gameTypeID: ['19'] },
//     { id_publisher: '15', publisher_name: 'Microsoft Studios', location: 'Redmond, Washington', since: 2002, gameTypeID: ['14', '21', '24', '25'] },
//     { id_publisher: '16', publisher_name: 'Square Enix', location: 'Shinjuku, Tokyo, Japan', since: 1986, gameTypeID: ['19', '29'] },
//     { id_publisher: '17', publisher_name: 'Warner Bros. Interactive Entertainment', location: 'Burbank, California', since: 2004, gameTypeID: ['27'] },
//     { id_publisher: '18', publisher_name: 'Roblox Corporation', location: 'San Mateo, California', since: 2004, gameTypeID: ['5'] },
//     { id_publisher: '19', publisher_name: 'Sony Interactive Entertainment', location: 'San Mateo, California', since: 1993, gameTypeID: ['1', '2', '14', '21'] },
//     { id_publisher: '20', publisher_name: 'Bethesda Softworks', location: 'Rockville, Maryland', since: 1986, gameTypeID: ['1', '27'] },
//     { id_publisher: '21', publisher_name: 'IO Interactive', location: 'Copenhagen, Denmark', since: 1998, gameTypeID: ['8'] },
//     { id_publisher: '22', publisher_name: 'FromSoftware', location: 'Tokyo, Japan', since: 1986, gameTypeID: ['8', '29'] }
// ];

//
const {
  GraphQLObjectType,
  GraphQLString,
  GraphQLInt,
  GraphQLSchema,
  GraphQLList,
  GraphQLNonNull,
} = graphql;

//Create types
const Game = new graphql.GraphQLObjectType({
  name: "Game",
  description: "Documentation for games...",
  fields: () => ({
    id: { type: GraphQLString },
    name: { type: GraphQLString },
    price: { type: GraphQLInt },
    publisher: {
      type: Publisher,
      resolve(parent, args) {
        return GPublisher.findById(parent.publisherID);
        //return _lodash.find(publishersData, {id: parent.publisherID});
      },
    },
    game_type: {
      type: GameType,
      resolve(parent, args) {
        return GTypeGame.findById(parent.typeID);
        //return _lodash.find(typeGamesData, {id: parent.typeID});
      },
    },
    game_types: {
      type: new GraphQLList(GameType),
      resolve(parent, args) {
        return GTypeGame.find({ typeID: parent.typeID });
        // return _lodash.filter(typeGamesData, (typeGame) => {
        //     return parent.typeID.includes(typeGame.id);
        // });
      },
    },
    publishers: {
      type: new GraphQLList(Publisher),
      resolve(parent, args) {
        return GPublisher.find({ publisherID: parent.publisherID });
        // return _lodash.filter(publishersData, (publisher) => {
        //     return parent.publisherID.includes(publisher.id);
        // });
      },
    },
  }),
});

const GameType = new graphql.GraphQLObjectType({
  name: "TypeGame",
  description: "Documentation for type of games...",
  fields: () => ({
    id: { type: GraphQLString },
    type_name: { type: GraphQLString },
    description: { type: GraphQLString },
    game: {
      type: new GraphQLList(Game),
      resolve(parent, args) {
        return GGame.find({ typeID: parent.id });
        //return _lodash.filter(gamesData, {typeID: parent.id});
      },
    },

    publisher: {
      type: new GraphQLList(Publisher),
      resolve(parent, args) {
        return GPublisher.find({ gameTypeID: parent.id });
        // return _lodash.filter(publishersData, (publisher) => {
        //     return publisher.gameTypeID.includes(parent.id);
        // });
      },
    },
  }),
});

const Publisher = new graphql.GraphQLObjectType({
  name: "Publisher",
  description: "Documentation for publishers...",
  fields: () => ({
    id: { type: GraphQLString },
    publisher_name: { type: GraphQLString },
    location: { type: GraphQLString },
    since: { type: GraphQLInt },
    game: {
      type: new GraphQLList(Game),
      resolve(parent, args) {
        return GGame.find({ publisherID: parent.id });
        //return _lodash.filter(gamesData, {publisherID: parent.id});
      },
    },
    game_type: {
      type: new GraphQLList(GameType),
      resolve(parent, args) {
        return GTypeGame.find({ gameID: parent.id });
        // return _lodash.filter(typeGamesData, (typeGame) => {
        //     return parent.gameTypeID.includes(typeGame.id);
        // });
      },
    },
  }),
});

//RootQuery
const RootQuery = new GraphQLObjectType({
  name: "RootQueryType",
  description: "Description",
  fields: {
    game: {
      type: Game,
      args: { id: { type: GraphQLString } },
      resolve(parent, args) {
        return GGame.findById(args.id);
        //return _lodash.find(gamesData, {id: args.id});
      },
    },

    games: {
      type: new GraphQLList(Game),
      resolve(parent, args) {
        return GGame.find({});
      },
    },

    typeGame: {
      type: GameType,
      args: { id: { type: GraphQLString } },
      resolve(parent, args) {
        return GTypeGame.findById(args.id);
        //return _lodash.find(typeGamesData, {id: args.id});
      },
    },

    typeGames: {
      type: new GraphQLList(GameType),
      resolve(parent, args) {
        return GTypeGame.find({});
      },
    },

    publisher: {
      type: Publisher,
      args: { id: { type: GraphQLString } },
      resolve(parent, args) {
        return GPublisher.findById(args.id);
        //return _lodash.find(publishersData, {id: args.id});
      },
    },

    publishers: {
      type: new GraphQLList(Publisher),
      resolve(parent, args) {
        return GPublisher.find({});
      },
    },
  },
});

//Mutation
const Mutation = new GraphQLObjectType({
  name: "Mutation",
  fields: {
    //Add game
    CreateGame: {
      type: Game,
      args: {
        //id: {type: GraphQLString},
        name: { type: new GraphQLNonNull(GraphQLString) },
        price: { type: new GraphQLNonNull(GraphQLInt) },
        typeID: { type: new GraphQLNonNull(GraphQLString) },
        publisherID: { type: new GraphQLNonNull(GraphQLString) },
      },
      resolve(parent, args) {
        let game = GGame({
          name: args.name,
          price: args.price,
          typeID: args.typeID,
          publisherID: args.publisherID,
        });
        //gamesData.push(game);
        return game.save();
      },
    },

    //Update game
    UpdateGame: {
      type: Game,
      args: {
        id: { type: new GraphQLNonNull(GraphQLString) },
        name: { type: GraphQLString },
        price: { type: GraphQLInt },
      },
      resolve(parent, args) {
        return (updateGame = GGame.findByIdAndUpdate(
          args.id,
          {
            $set: {
              name: args.name,
              price: args.price,
            },
          },
          { new: true }
        ));
      },
    },

    //Remove game
    RemoveGame: {
      type: Game,
      args: {
        id: { type: GraphQLNonNull(GraphQLString) },
      },
      resolve(parent, args) {
        let removeGame = GGame.findByIdAndDelete(args.id).exec();
        if (!removeGame) {
          throw new "Error"();
        }
        return removeGame;
      },
    },

    //Create type of game
    CreateTypeGame: {
      type: GameType,
      args: {
        //id: {type: GraphQLString},
        type_name: { type: GraphQLNonNull(GraphQLString) },
        description: { type: GraphQLString },
        gameID: { type: GraphQLString },
      },
      resolve(parent, args) {
        let typeGame = GTypeGame({
          type_name: args.type_name,
          description: args.description,
        });
        //typeGamesData.push(typeGame);
        return typeGame.save();
      },
    },

    //Update type of game
    UpdateTypeGame: {
      type: GameType,
      args: {
        id: { type: new GraphQLNonNull(GraphQLString) },
        type_name: { type: GraphQLString },
        description: { type: GraphQLString },
      },
      resolve(parent, args) {
        return (updateTypeGame = GTypeGame.findByIdAndUpdate(
          args.id,
          {
            $set: {
              type_name: args.type_name,
              description: args.description,
            },
          },
          { new: true }
        ));
      },
    },

    //Remove type of game
    RemoveTypeGame: {
      type: GameType,
      args: {
        id: { type: GraphQLNonNull(GraphQLString) },
      },
      resolve(parent, args) {
        let removeTypeGame = GTypeGame.findByIdAndDelete(args.id).exec();
        if (!removeTypeGame) {
          throw new "Error"();
        }
        return removeTypeGame;
      },
    },

    //Create publisher
    CreatePublisher: {
      type: Publisher,
      args: {
        //id: {type: GraphQLString},
        publisher_name: { type: new GraphQLNonNull(GraphQLString) },
        location: { type: new GraphQLNonNull(GraphQLString) },
        since: { type: new GraphQLNonNull(GraphQLInt) },
        gameID: { type: GraphQLString },
      },
      resolve(parent, args) {
        let publisher = GPublisher({
          publisher_name: args.publisher_name,
          location: args.location,
          since: args.since,
        });
        //publishersData.push(publisher);
        return publisher.save();
      },
    },

    //Update publisher
    UpdatePublisher: {
      type: Publisher,
      args: {
        id: { type: new GraphQLNonNull(GraphQLString) },
        publisher_name: { type: GraphQLString },
        location: { type: GraphQLString },
        since: { type: GraphQLInt },
      },
      resolve(parent, args) {
        return (updatePublisher = GPublisher.findByIdAndUpdate(
          args.id,
          {
            $set: {
              publisher_name: args.publisher_name,
              location: args.location,
              since: args.since,
            },
          },
          { new: true }
        ));
      },
    },

    //Remove publisher
    RemovePublisher: {
      type: Publisher,
      args: {
        id: { type: GraphQLNonNull(GraphQLString) },
      },
      resolve(parent, args) {
        let removePublisher = GPublisher.findByIdAndDelete(args.id).exec();
        if (!removePublisher) {
          throw new "Error"();
        }
        return removePublisher;
      },
    },
  },
});

module.exports = new GraphQLSchema({
  query: RootQuery,
  mutation: Mutation,
});
