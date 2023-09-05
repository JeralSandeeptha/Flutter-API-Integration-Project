import 'package:flutter/material.dart';
import '../services//user_service.dart';
import '../components/user_row.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  UserService userService = UserService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: FutureBuilder(
        future: userService.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic> data = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.network(
                    data['picture']['large'],
                    width: size.width,
                    height: size.height / 4,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(data["name"]['title'], style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(data["name"]['first'], style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),), 
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(data["name"]['last'], style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 2,
                    height: size.height / 4,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 50.0,
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.network(
                        data['picture']['large'],
                        width: size.width / 2,
                        height: size.height / 4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  UserRow(
                    size: size, 
                    title: 'Username',
                    value: data['login']['username'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'Email',
                    value: data['email'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'Gender',
                    value: data['gender'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'Date of Birth',
                    value: data['dob']['date'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'Age',
                    value: data['dob']['age'].toString(),
                  ),
                  UserRow(
                    size: size, 
                    title: 'Mobile',
                    value: data['cell'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'Country',
                    value: data['location']['country'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'State',
                    value: data['location']['state'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'City',
                    value: data['location']['city'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'Street',
                    value: data['location']['street']['name'],
                  ),
                  UserRow(
                    size: size, 
                    title: 'Member Since',
                    value: data['registered']['date'],
                  ),
                ],
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
