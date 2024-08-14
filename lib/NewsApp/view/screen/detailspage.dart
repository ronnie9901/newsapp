
import 'package:flutter/material.dart';
import 'package:newsapp/NewsApp/view/screen/homepage.dart';

import '../../Modal/Modal.dart';

class DetailsPage extends StatelessWidget {
  NewsModal? newsModel;

  DetailsPage({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    final date = newsModel!.articles[selectindex].publishedAt
        .split('T')
        .sublist(0, 1)
        .join(' ');
    final time = newsModel!.articles[selectindex].publishedAt
        .split('T')
        .sublist(1, 2)
        .join(' ');

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(fit: BoxFit.cover,newsModel!.articles[selectindex].urlToImage),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [

                  const SizedBox(height: 25),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Author : ${newsModel!.articles[selectindex].author}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        newsModel!.articles[selectindex].description,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          // color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 13),
                      Text(
                        newsModel!.articles[selectindex].content,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,

                        ),
                      ),
                      const SizedBox(height: 13),
                      Divider(color: Colors.grey.shade500),
                      const SizedBox(height: 13),
                      Container(
                        height: 56,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Text(
                          'Start Commenting',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 11),
                      Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Repost',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.autorenew,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
