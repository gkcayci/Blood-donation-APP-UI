import 'package:flutter/material.dart';

class MessageBox extends StatefulWidget {
  @override
  _MessageBoxState createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red.shade700,
                  Colors.red.shade500,
                  Colors.red.shade300,
                  Colors.red.shade200
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          title: Text('Mesajlarım'),
        ),
        body: ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, index) {
              ChatModel _model = dummyData[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(_model.avatarUrl),
                ),
                title: Row(
                  children: <Widget>[
                    Text(_model.name),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      _model.datetime,
                    ),
                  ],
                ),
                subtitle: Text(_model.message),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              );
            }));
  }
}

class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel(
      {required this.avatarUrl,
      required this.name,
      required this.datetime,
      required this.message});
}

final List<ChatModel> dummyData = [
  ChatModel(
    avatarUrl:
        "https://www.vektorler.com/wp-content/uploads/2020/03/vektorel-turk-kizilayi-logo-paketi-scaled.jpg",
    name: "Ahmet Yılmaz",
    datetime: "20:18",
    message: "Aradığınız bağışı bulabildiniz mi?",
  ),
  ChatModel(
    avatarUrl:
        "https://www.vektorler.com/wp-content/uploads/2020/03/vektorel-turk-kizilayi-logo-paketi-scaled.jpg",
    name: "Zehra Ay",
    datetime: "19:22",
    message: "Teşekkürler",
  ),
  ChatModel(
    avatarUrl:
        "https://www.vektorler.com/wp-content/uploads/2020/03/vektorel-turk-kizilayi-logo-paketi-scaled.jpg",
    name: "Ali Güzel",
    datetime: "10:15",
    message: "Merhaba",
  ),
];
