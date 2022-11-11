import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:msocial_scanner_app/models/PostsModels.dart';
import 'package:http/http.dart' as http;

class EventDetails extends StatefulWidget {
  AttedDetails details;
  String? id;
  EventDetails(this.details,this.id);

  @override
  State<EventDetails> createState() => _EventDetailsState(details);
}

class _EventDetailsState extends State<EventDetails> {
  AttedDetails? details;

  _EventDetailsState(this.details);
  // Future<Post?>? post;
  // List<Data>? postList = [];

  // Future<Post> getPostApi() async {
  //   final response = await http.get(Uri.parse(
  //       'https://api.msocialin.com/api/Authontication_Controller/event_list'));
  //   var jsonData = jsonDecode(response.body);
  //   if (response.statusCode == 200) {
  //     return Post.fromJson(jsonData);
  //     // for (Map i in data) {
  //     //   postList.add(PostsModels.fromJson(i));
  //     // }
  //     // return postList;
  //   } else {
  //     throw Exception('Failed to load');
  //   }
  // }
  //
  // @override
  // void initState() {
  //   post = getPostApi();
  //   post!.then((value) {
  //     setState(() {
  //       Details = value!.data.cast<AttedDetails>();
  //       // postList = value!.data;
  //     });
  //   });
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Details"),
        backgroundColor: Color.fromRGBO(253, 113, 112, 1),
      ),
      body: Center(
        child: Container(
          child: Text(details!.startTime),
        ),
      )
      // ListView.builder(
      //     itemCount: ,
      //     itemBuilder: (context, index){
      //       return ListTile(
      //         title:
      //         Text(Details![index].location),
      //       );
      //     }),
    );
  }
}
