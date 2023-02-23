import 'package:flutter/material.dart';
import 'package:indimedo/APIService.dart';

class TestCategory extends StatelessWidget {
  const TestCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: mapResponse.isEmpty
              ? Container()
              : Center(
                  child: ListView.builder(
                      itemCount: mapResponse['categories']['data']
                              ['children_data']
                          .length,
                      itemBuilder: (context, index) {
                        return Text(
                       mapResponse['categories']['data']
                              ['children_data'][index]['name']
                              // mapResponse['bannertop']['data'][index]["image"]
                              // .runtimeType
                              .toString(),
                          style: TextStyle(color: Colors.amber),
                        );
                      }))),
    );
  }
}
