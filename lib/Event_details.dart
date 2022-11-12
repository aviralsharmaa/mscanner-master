import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:msocial_scanner_app/models/PostsModels.dart';
import 'package:http/http.dart' as http;
import 'package:msocial_scanner_app/qrScanner.dart';

class EventDetails extends StatefulWidget {
  AttedDetails details;
  String? id;

  EventDetails(this.details, this.id);

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
    String image = "assets/cover.jpg";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Event Details"),
        backgroundColor: const Color.fromRGBO(253, 113, 112, 1),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[



            Image.asset(
              image,
              fit: BoxFit.cover,
              height: 250,
            ),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(
                  color: Colors.blueGrey,
                ),
              ),
              child: Center(
                child: Text(details!.id, style: const TextStyle(fontSize: 30)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.event),
                  Text(" - "+details!.eventStartDate + " - " + details!.eventEndDate)
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.access_time_outlined),
                  Text(" - "+details!.startTime + " - " + details!.endTime),
                ],
              ),
            ),
            const SizedBox(
              height: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on_outlined),
                  Text(" - "+details!.location),
                ],
              ),
            ),
            const SizedBox(height: 200,),
           GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => QRScanPage(),
    )),
                  // print("Container clicked");
                child: Container(
                  width: 300,
                  padding: new EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  color: Colors.blueGrey,
                  child: Column(
                      children: const [
                        Text("Scan Ticket",style: TextStyle(fontSize: 17)),
                      ]
                  ),
                )
            ),


          ],
        ),
      ),
    );
  }
}