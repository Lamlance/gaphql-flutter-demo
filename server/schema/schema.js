const graphql = require('graphql');
var _lodash = require('lodash');

//some dummy data for test
var gamesData = [
    {id: '1', name: 'Call of Duty', price: 60, typeID: '1', publisherID: '1'},
    {id: '2', name: 'GTA V', price: 50, typeID: '2', publisherID: '2'},
    {id: '3', name: 'The Sims 4', price: 45, typeID: '3', publisherID: '3'},
    {id: '4', name: 'FIFA 21', price: 55, typeID: '4', publisherID: '3'},
    {id: '5', name: 'Minecraft', price: 30, typeID: '5', publisherID: '4'},
    {id: '6', name: 'Red Dead Redemption 2', price: 55, typeID: '2', publisherID: '2'},
    {id: '7', name: 'Assassin\'s Creed Valhalla', price: 60, typeID: '2', publisherID: '5'},
    {id: '8', name: 'Cyberpunk 2077', price: 60, typeID: '6', publisherID: '6'},
    {id: '9', name: 'Overwatch', price: 40, typeID: '1', publisherID: '7'},
    {id: '10', name: 'Fortnite', price: 0, typeID: '15', publisherID: '8'},
    {id: '11', name: 'Rocket League', price: 20, typeID: '4', publisherID: '9'},
    {id: '12', name: 'League of Legends', price: 0, typeID: '16', publisherID: '10'},
    {id: '13', name: 'Among Us', price: 5, typeID: '15', publisherID: '11'},
    {id: '14', name: 'Apex Legends', price: 0, typeID: '15', publisherID: '3'},
    {id: '15', name: 'Valorant', price: 0, typeID: '1', publisherID: '10'},
    {id: '16', name: 'The Legend of Zelda: Breath of the Wild', price: 60, typeID: '2', publisherID: '12'},
    {id: '17', name: 'Super Mario Odyssey', price: 60, typeID: '9', publisherID: '12'},
    {id: '18', name: 'Death Stranding', price: 40, typeID: '2', publisherID: '13'},
    {id: '19', name: 'Persona 5', price: 40, typeID: '6', publisherID: '14'},
    {id: '20', name: 'The Witcher 3: Wild Hunt', price: 40, typeID: '6', publisherID: '6'},
    {id: '21', name: 'Halo Infinite', price: 60, typeID: '1', publisherID: '15'},
    {id: '22', name: 'God of War', price: 50, typeID: '2', publisherID: '16'},
    {id: '23', name: 'Forza Horizon 5', price: 60, typeID: '20', publisherID: '15'},
    {id: '24', name: 'Battlefield 2042', price: 60, typeID: '1', publisherID: '3'},
    {id: '25', name: 'Madden NFL 22', price: 60, typeID: '4', publisherID: '3'},
    {id: '26', name: 'Rainbow Six Siege', price: 20, typeID: '1', publisherID: '5'},
    {id: '27', name: 'Mortal Kombat 11', price: 40, typeID: '10', publisherID: '17'},
    {id: '28', name: 'Horizon Zero Dawn', price: 40, typeID: '2', publisherID: '16'},
    {id: '29', name: 'Final Fantasy VII Remake', price: 60, typeID: '6', publisherID: '16'},
    {id: '30', name: 'Splatoon 2', price: 50, typeID: '1', publisherID: '12'}
];


var typeGamesData = [
    {id_type: '1', type_name: 'Shooter', description: 'Test player\'s speed and reaction time with focus on using weapons like guns.'},
    {id_type: '2', type_name: 'Action', description: 'Emphasize physical challenges, combat, exploration, and puzzle-solving.'},
    {id_type: '3', type_name: 'Simulation', description: 'Mimic real-world activities and systems, providing immersive experiences.'},
    {id_type: '4', type_name: 'Sport', description: 'Simulate traditional physical sports with realistic representations.'},
    {id_type: '5', type_name: 'Sandbox', description: 'Offer freedom to explore and create within virtual worlds.'},
    {id_type: '6', type_name: 'RPG', description: 'Focus on character development, narrative-driven storytelling, and player choices.'},
    {id_type: '7', type_name: 'Strategy', description: 'Require planning, resource management, and tactical decision-making.'},
    {id_type: '8', type_name: 'Adventure', description: 'Feature exploration, puzzle-solving, and narrative-driven gameplay.'},
    {id_type: '9', type_name: 'Platformer', description: 'Challenge players with navigating environments and overcoming obstacles.'},
    {id_type: '10', type_name: 'Fighting', description: 'Focus on one-on-one combat between characters with various fighting styles.'},
    {id_type: '11', type_name: 'Horror', description: 'Evoke fear and tension through atmospheric elements, suspenseful gameplay, and supernatural themes.'},
    {id_type: '12', type_name: 'Puzzle', description: 'Require logical thinking and problem-solving skills to progress through challenges.'},
    {id_type: '13', type_name: 'Music/Rhythm', description: 'Test players\' rhythm and coordination through gameplay mechanics based on music.'},
    {id_type: '14', type_name: 'Educational', description: 'Provide entertainment while imparting knowledge and skills in various subjects.'},
    {id_type: '15', type_name: 'Party', description: 'Designed for multiplayer enjoyment, often featuring mini-games and competitive challenges.'},
    {id_type: '16', type_name: 'Role-Playing', description: 'Immerse players in fictional worlds where they assume the roles of characters and embark on adventures.'},
    {id_type: '17', type_name: 'Open World', description: 'Offer expansive virtual environments for players to explore freely and engage in various activities.'},
    {id_type: '18', type_name: 'Survival', description: 'Challenge players to survive in hostile environments by managing resources and crafting tools.'},
    {id_type: '19', type_name: 'MMORPG', description: 'Massively multiplayer online role-playing games with large open worlds and persistent online interactions.'},
    {id_type: '20', type_name: 'Racing', description: 'Focus on fast-paced competition between vehicles, ranging from realistic simulations to arcade-style experiences.'},
    {id_type: '21', type_name: 'Card', description: 'Utilize decks of cards as primary game mechanics, often featuring strategic gameplay and deck-building elements.'},
    {id_type: '22', type_name: 'Stealth', description: 'Challenge players to navigate environments undetected, relying on stealthy tactics to avoid confrontation.'},
    {id_type: '23', type_name: 'Tactical', description: 'Require strategic thinking, coordination, and precision to overcome challenges and enemies.'},
    {id_type: '24', type_name: 'Text-Based', description: 'Present gameplay primarily through text, allowing players to make choices and interact with the game world through written descriptions.'},
    {id_type: '25', type_name: 'Artillery', description: 'Focus on combat between long-range projectiles, requiring players to aim and calculate trajectories to defeat opponents.'},
    {id_type: '26', type_name: 'Tower Defense', description: 'Task players with defending a base or territory from waves of enemies by strategically placing defensive structures.'},
    {id_type: '27', type_name: 'Hack and Slash', description: 'Feature fast-paced combat against hordes of enemies, often emphasizing melee attacks and flashy combos.'},
    {id_type: '28', type_name: 'Visual Novel', description: 'Combine storytelling with interactive elements, allowing players to make choices that influence the narrative outcome.'},
    {id_type: '29', type_name: 'Virtual Reality (VR)', description: 'Designed specifically for virtual reality platforms, providing immersive and interactive experiences in VR environments.'},
    {id_type: '30', type_name: 'Idle/Incremental', description: 'Require minimal player input, with gameplay centered around incremental progress and resource management over time.'}
];

// var reviewsData = [
//     {id_review: '1', review: 'Great game!', rating: 5},
//     {id_review: '2', review: 'Amazing storyline!', rating: 5},
//     {id_review: '3', review: 'Graphics are stunning!', rating: 4},
//     {id_review: '4', review: 'Enjoyed playing it!', rating: 4},
//     {id_review: '5', review: 'Could be better.', rating: 3},
//     {id_review: '6', review: 'Not bad, not great.', rating: 3},
//     {id_review: '7', review: 'It\'s okay.', rating: 3},
//     {id_review: '8', review: 'Disappointing.', rating: 2},
//     {id_review: '9', review: 'Waste of money.', rating: 1},
//     {id_review: '10', review: 'Unplayable.', rating: 1},
//     {id_review: '11', review: 'Addictive gameplay!', rating: 5},
//     {id_review: '12', review: 'Loved every moment of it!', rating: 5},
//     {id_review: '13', review: 'Could use some improvements.', rating: 4},
//     {id_review: '14', review: 'Fun multiplayer experience.', rating: 4},
//     {id_review: '15', review: 'Not my cup of tea.', rating: 2},
//     {id_review: '16', review: 'Expected more.', rating: 2},
//     {id_review: '17', review: 'Wouldn\'t recommend it.', rating: 1},
//     {id_review: '18', review: 'Best game ever!', rating: 5},
//     {id_review: '19', review: 'A masterpiece.', rating: 5},
//     {id_review: '20', review: 'Good value for money.', rating: 4},
//     {id_review: '21', review: 'Great graphics!', rating: 4},
//     {id_review: '22', review: 'Highly addictive.', rating: 5},
//     {id_review: '23', review: 'Could be more challenging.', rating: 3},
//     {id_review: '24', review: 'A bit repetitive.', rating: 3},
//     {id_review: '25', review: 'Decent game.', rating: 3},
//     {id_review: '26', review: 'Mediocre at best.', rating: 2},
//     {id_review: '27', review: 'Not worth the hype.', rating: 2},
//     {id_review: '28', review: 'Too short.', rating: 2},
//     {id_review: '29', review: 'Not impressed.', rating: 1},
//     {id_review: '30', review: 'Boring.', rating: 1}
// ];

var publishersData = [
    {id_publisher: '1', publisher_name: 'Activision', location: 'Santa Monica, California', since: 1979},
    {id_publisher: '2', publisher_name: 'Rockstar Games', location: 'New York City, New York', since: 1998},
    {id_publisher: '3', publisher_name: 'Electronic Arts', location: 'Redwood City, California', since: 1982},
    {id_publisher: '4', publisher_name: 'Mojang Studios', location: 'Stockholm, Sweden', since: 2009},
    {id_publisher: '5', publisher_name: 'Ubisoft', location: 'Montreuil, France', since: 1986},
    {id_publisher: '6', publisher_name: 'CD Projekt', location: 'Warsaw, Poland', since: 1994},
    {id_publisher: '7', publisher_name: 'Blizzard Entertainment', location: 'Irvine, California', since: 1991},
    {id_publisher: '8', publisher_name: 'Epic Games', location: 'Cary, North Carolina', since: 1991},
    {id_publisher: '9', publisher_name: 'Psyonix', location: 'San Diego, California', since: 2001},
    {id_publisher: '10', publisher_name: 'Riot Games', location: 'Los Angeles, California', since: 2006},
    {id_publisher: '11', publisher_name: 'InnerSloth', location: 'Redmond, Washington', since: 2015},
    {id_publisher: '12', publisher_name: 'Nintendo', location: 'Kyoto, Japan', since: 1889},
    {id_publisher: '13', publisher_name: 'Kojima Productions', location: 'Tokyo, Japan', since: 2005},
    {id_publisher: '14', publisher_name: 'Atlus', location: 'Setagaya, Tokyo, Japan', since: 1986},
    {id_publisher: '15', publisher_name: 'Microsoft Studios', location: 'Redmond, Washington', since: 2002},
    {id_publisher: '16', publisher_name: 'Square Enix', location: 'Shinjuku, Tokyo, Japan', since: 1986},
    {id_publisher: '17', publisher_name: 'Warner Bros. Interactive Entertainment', location: 'Burbank, California', since: 2004}
];


//
const { 
    GraphQLObjectType, 
    GraphQLID,
    GraphQLString,
    GraphQLInt, 
    GraphQLSchema 
} = graphql;

//Create types
const Game = new graphql.GraphQLObjectType({
    name: 'Game',
    description: 'Documentation for games...',
    fields: () => ({
        id: {type: GraphQLString},
        name: {type: GraphQLString},
        price: {type: GraphQLInt},
        publisher:{
            type: Publisher,
            resolve(parent, args){
                return _lodash.find(publishersData, {id_publisher: parent.publisherID});
            }
        },
        game_type:{
            type: GameType,
            resolve(parent, args){
                return _lodash.find(typeGamesData, {id_type: parent.typeID});
            }
        }
    }),
});

const GameType = new graphql.GraphQLObjectType({
    name: 'TypeGame',
    description: 'Documentation for type of games...',
    fields: () => ({
        id_type: {type: GraphQLString},
        type_name: {type: GraphQLString},
        description: {type: GraphQLString},
        game: {
            type: Game,
            resolve(parent, args){
                return _lodash.find(gamesData, {typeID: parent.id_type});
            }
        }
    }),
});

const Publisher = new graphql.GraphQLObjectType({
    name: 'Publisher',
    description: 'Documentation for publishers...',
    fields: () => ({
        id_publisher: {type: GraphQLString},
        publisher_name: {type: GraphQLString},
        location: {type: GraphQLString},
        since: {type: GraphQLInt},
    }),
});

//RootQuery
const RootQuery = new GraphQLObjectType({
    name: 'RootQueryType',
    description: 'Description',
    fields: {
        game: {
            type: Game,
            args: {id: {type: GraphQLString}},
            resolve(parent, args){
                return _lodash.find(gamesData, {id: args.id});
            }
        },

        typeGame: {
            type: GameType,
            args: {id_type: {type: GraphQLString}},
            resolve(parent, args){
                return _lodash.find(typeGamesData, {id_type: args.id_type});
            }
        },

        publisher: {
            type: Publisher,
            args: {id_publisher: {type: GraphQLString}},
            resolve(parent, args){
                return _lodash.find(publishersData, {id_publisher: args.id_publisher});
            }
        }
    }
});

module.exports = new GraphQLSchema({
    query: RootQuery
});