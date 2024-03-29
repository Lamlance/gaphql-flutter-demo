

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:demo_flutter_graphql/src/stylings/stylings.dart';
import 'package:demo_flutter_graphql/src/screens/home_screen.dart';


class AddGamePage extends StatefulWidget {
  const AddGamePage({super.key});

  @override
  State<AddGamePage> createState() => _AddGamePageState();
}

class _AddGamePageState extends State<AddGamePage> {
  final _formKey = GlobalKey<FormState>();
  final _typeGameFormKey = GlobalKey<FormState>();
  final _publisherFormKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _typeGameController = TextEditingController();
  final _typeGameTitleController = TextEditingController();
  final _typeGameDescriptionController = TextEditingController();
  final _publisherController = TextEditingController();
  final _locationController = TextEditingController();
  final _sinceController = TextEditingController();

  bool _isSaving = false;

  bool _visible = false;

  bool _isSavingGameType = false;
  bool _isSavingPublisher = false;

  var currGameId;

  void _toggle() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add a Game",
          style: TextStyle(
              color: Colors.grey, fontSize: 19, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightGreen,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    color: Colors.grey.shade300,
                    blurRadius: 30),
              ]),
          child: Column(
            children: [
              Mutation(
                options: MutationOptions(
                  document: gql(insertGame()),
                  fetchPolicy: FetchPolicy.noCache,
                  onCompleted: (data) {
                    setState(() {
                      _isSaving = false;
                      currGameId = data?['CreateGame']["id"];
                    });
                  },
                ),
                builder: (runMutation, result) {
                  return Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                                labelText: "Name",
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide())),
                            validator: (value) {
                              if (value!.length == 0) {
                                return "Name cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                            controller: _publisherController,
                            decoration: InputDecoration(
                                labelText: "Publisher",
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide())),
                            validator: (value) {
                              if (value!.length == 0) {
                                return "Publisher cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                            controller: _priceController,
                            decoration: InputDecoration(
                                labelText: "Price",
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide())),
                            validator: (value) {
                              if (value!.length == 0) {
                                return "Price cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number),
                        SizedBox(
                          height: 12,
                        ),
                        _isSaving
                            ? SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 3,
                                ),
                              )
                            : TextButton(
                                style: buildButtonStyle(),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _toggle();
                                    setState(() {
                                      _isSaving = true;
                                    });
                                    runMutation({
                                      "name": _nameController.text.trim(),
                                      "typeGame": _typeGameController.text.trim(),
                                      "publisher":
                                          _publisherController.text.trim(),
                                      "price":
                                          int.parse(_typeGameTitleController.text.trim())
                                    });
                                    _nameController.clear();
                                    _publisherController.clear();
                                    _typeGameController.clear();
                                  }
                                },
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 36, vertical: 12),
                                    child: Text("Save")),
                              )
                      ],
                    ),
                  );
                },
              ),

              //Add Type Game
              Visibility(
                  visible: _visible,
                  child: Mutation(
                    options: MutationOptions(
                        document: gql(insertTypeGame()),
                        fetchPolicy: FetchPolicy.noCache,
                        onCompleted: (data) {
                          setState(() {
                            _isSavingGameType = false;
                          });
                        }),
                    builder: (runMutation, result) {
                      return Form(
                        key: _typeGameFormKey,
                        child: Column(
                          children: [
                            SizedBox(height: 12),
                            TextFormField(
                              controller: _typeGameTitleController,
                              decoration: new InputDecoration(
                                  labelText: "Type game title",
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide())),
                              validator: (v) {
                                if (v!.length == 0) {
                                  return "Enter a title";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                            ),
                            SizedBox(height: 12),
                            TextFormField(
                              controller: _typeGameDescriptionController,
                              decoration: new InputDecoration(
                                  labelText: "Type game description",
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide())),
                              validator: (v) {
                                if (v!.length == 0) {
                                  return "Type game cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                            ),
                            SizedBox(height: 12),
                            _isSavingGameType
                                ? SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 3,
                                    ),
                                  )
                                : TextButton(
                                    onPressed: () {
                                      if (_typeGameFormKey.currentState!
                                          .validate()) {
                                        setState(() {
                                          _isSavingGameType = true;
                                        });
                                        runMutation({
                                          'type_name': _typeGameTitleController.text,
                                          'description':
                                              _typeGameDescriptionController.text,
                                          'gameId': currGameId
                                        });

                                        _typeGameTitleController.clear();
                                      }
                                      _typeGameTitleController.clear();
                                      _typeGameDescriptionController.clear();
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 36, vertical: 12),
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                    ),
                                    style: buildButtonStyle(),
                                  )
                          ],
                        ),
                      );
                    },
                  )),

              // Save a Publisher
              Visibility(
                visible: _visible,
                child: Mutation(
                  options: MutationOptions(
                    document: gql(insertPublisher()),
                    fetchPolicy: FetchPolicy.noCache,
                    onCompleted: (data) {
                      setState(() {
                        _isSavingPublisher = false;
                      });
                    },
                  ),
                  builder: (runMutation, result) {
                    return Form(
                      key: _publisherFormKey,
                      child: Column(
                        children: [
                          SizedBox(height: 12),
                          TextFormField(
                            controller: _publisherController,
                            decoration: new InputDecoration(
                                labelText: "Enter Publisher",
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide())),
                            validator: (v) {
                              if (v!.length == 0) {
                                return "Publisher cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(height: 12),
                          _isSavingPublisher
                              ? SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 3,
                                  ),
                                )
                              : TextButton(
                                  onPressed: () {
                                    if (_publisherFormKey.currentState!.validate()) {
                                      setState(() {
                                        _isSavingPublisher= true;
                                      });
                                      runMutation({
                                        'publisher_name': _publisherController.text,
                                        'location' : _locationController.text,
                                        'since': int.parse(_sinceController.text),
                                        'GameId': currGameId
                                      });
                                      //clear fields
                                      _publisherController.clear();
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 36, vertical: 12),
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    ),
                                  ),
                                  style: buildButtonStyle())
                        ],
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Visibility(
                    visible: _visible,
                    child: TextButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 26.0, vertical: 12.0),
                        child: Text("Done",
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                      ),
                      style: buildButtonStyle(),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ), (route) => false);
                      },
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String insertPublisher() {
  return """
    mutation CreatePublisher(
      \$publisher_name: String!,
      \$location: String!,
      \$since: Int!) {
      CreatePublisher(publisher_name: \$publisher_name, location: \$location, since: \$since){
        publisher_name
        location
        since 
      }   
    }
    """;
}

String insertGame() {
  return """ 
   mutation CreateGame(\$name: String!, \$price: Int!, \$typeID: String!), \$publisherID: String!){
     CreateGame(name: \$name, price: \$price, typeID: \$typeID, publisherID: \$publisherID) {
         name
          price
          typeID
          publisherID
     }
}
  """;
}

String insertTypeGame() {
  return """
    mutation CreateTypeGame(\$type_name: String!, \$description: String!) {
      CreateTypeGame(type_name: \$type_name, description: \$description){
         id
         type_name
         description
      }   
    }
    """;
}