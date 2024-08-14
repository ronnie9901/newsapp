import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/NewsApp/Controller/Controller.dart';
import 'package:newsapp/NewsApp/Modal/Modal.dart';
import 'package:newsapp/NewsApp/view/screen/detailspage.dart';

NewController newController = Get.put(NewController());

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
       title:  Text('daily Time '),
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            indicatorColor: Colors.white,
            // indicator: BoxDecoration(),
            indicatorWeight: 4,
            tabs: [
              Tab(
                child: Text(
                  'Apple',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Text(
                'Tesla',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                'Business',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                'HeadLine',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                'Stock',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),

            ],
          ),
        ),

        body: TabBarView(
          children: [
            FutureBuilder(
            future: newController.frommap(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                NewsModal? newsModel = snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                      children: [
                    ...List.generate(
                      newsModel!.articles.length,
                      (index) {
                        final date = newsModel.articles[index].publishedAt.split('T').sublist(0,1).join(' ');
                        final time = newsModel.articles[index].publishedAt.split('T').sublist(1,2).join(' ');
                        return  InkWell(onTap: () {
                          selectindex =index;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(newsModel: newsModel),));
                        },
                          child: Card(
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(child: Image.network(fit: BoxFit.cover,newsModel!.articles[index].urlToImage),),
                                      Text('   ${newsModel!.articles[index].source.name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                                Container(height: 200,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(newsModel!.articles[index].urlToImage))),),

                                Text(
                                  newsModel.articles[index].title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Date : $date'),
                                        Text('Published At : $time'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // Image.asset('assets/whatsapp.png',height:63,color: const Color(0xffA1A1A1),),

                                        const SizedBox(width: 10),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,size: 30,)),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                        );
                      }
                    )
                  ]),
                );
              }
              else if (snapshot.hasError) {
                return Text('error : ${snapshot.error}');
              } else {
                return Center(child: CircularProgressIndicator());
              }


            },
          ),
            FutureBuilder(
            future: newController.frommap2(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                NewsModal? newsModel = snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                      children: [
                    ...List.generate(
                      newsModel!.articles.length,
                      (index) {
                        final date = newsModel.articles[index].publishedAt.split('T').sublist(0,1).join(' ');
                        final time = newsModel.articles[index].publishedAt.split('T').sublist(1,2).join(' ');
                        return  InkWell(onTap: () {
                          selectindex =index;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(newsModel: newsModel),));
                        },
                          child: Card(
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(child: Image.network(fit: BoxFit.cover,newsModel!.articles[index].urlToImage),),
                                      Text('   ${newsModel!.articles[index].source.name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                                Container(height: 200,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(newsModel!.articles[index].urlToImage))),),

                                Text(
                                  newsModel.articles[index].title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Date : $date'),
                                        Text('Published At : $time'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // Image.asset('assets/whatsapp.png',height:63,color: const Color(0xffA1A1A1),),

                                        const SizedBox(width: 10),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,size: 30,)),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),

                              ],
                            ),
                          ),
                        );
                      }
                    )
                  ]),
                );
              }
              else if (snapshot.hasError) {
                return Text('error : ${snapshot.error}');
              } else {
                return Center(child: CircularProgressIndicator());
              }


            },
          ),
            FutureBuilder(
            future: newController.frommap3(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                NewsModal? newsModel = snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                      children: [
                    ...List.generate(
                      newsModel!.articles.length,
                      (index) {
                        final date = newsModel.articles[index].publishedAt.split('T').sublist(0,1).join(' ');
                        final time = newsModel.articles[index].publishedAt.split('T').sublist(1,2).join(' ');
                        return  InkWell(onTap: () {
                          selectindex =index;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(newsModel: newsModel),));
                        },
                          child: Card(
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(child: Image.network(fit: BoxFit.cover,newsModel!.articles[index].urlToImage),),
                                      Text('   ${newsModel!.articles[index].source.name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                                Container(height: 200,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(newsModel!.articles[index].urlToImage))),),

                                Text(
                                  newsModel.articles[index].title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Date : $date'),
                                        Text('Published At : $time'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // Image.asset('assets/whatsapp.png',height:63,color: const Color(0xffA1A1A1),),

                                        const SizedBox(width: 10),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,size: 30,)),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),

                              ],
                            ),
                          ),
                        );
                      }
                    )
                  ]),
                );
              }
              else if (snapshot.hasError) {
                return Text('error : ${snapshot.error}');
              } else {
                return Center(child: CircularProgressIndicator());
              }


            },
          ),
            FutureBuilder(
            future: newController.frommap4(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                NewsModal? newsModel = snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                      children: [
                    ...List.generate(
                      newsModel!.articles.length,
                      (index) {
                        final date = newsModel.articles[index].publishedAt.split('T').sublist(0,1).join(' ');
                        final time = newsModel.articles[index].publishedAt.split('T').sublist(1,2).join(' ');
                        return  InkWell(
                          onTap: () {
                            selectindex =index;
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(newsModel: newsModel),));
                          },
                          child: Card(
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(child: Image.network(fit: BoxFit.cover,newsModel!.articles[index].urlToImage),),
                                      Text('   ${newsModel!.articles[index].source.name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                                Container(height: 200,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(newsModel!.articles[index].urlToImage))),),

                                Text(
                                  newsModel.articles[index].title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Date : $date'),
                                        Text('Published At : $time'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // Image.asset('assets/whatsapp.png',height:63,color: const Color(0xffA1A1A1),),

                                        const SizedBox(width: 10),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,size: 30,)),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),

                              ],
                            ),
                          ),
                        );
                      }
                    )
                  ]),
                );
              }
              else if (snapshot.hasError) {
                return Text('error : ${snapshot.error}');
              } else {
                return Center(child: CircularProgressIndicator());
              }


            },
          ),
            FutureBuilder(
            future: newController.frommap5(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                NewsModal? newsModel = snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                      children: [
                    ...List.generate(
                      newsModel!.articles.length,
                      (index) {
                        final date = newsModel.articles[index].publishedAt.split('T').sublist(0,1).join(' ');
                        final time = newsModel.articles[index].publishedAt.split('T').sublist(1,2).join(' ');
                        return  InkWell(
                          onTap: () {
                            selectindex =index;
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(newsModel: newsModel),));
                          },
                          child: Card(
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(child: Image.network(fit: BoxFit.cover,newsModel!.articles[index].urlToImage),),
                                      Text('   ${newsModel!.articles[index].source.name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                                Container(height: 200,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(newsModel!.articles[index].urlToImage))),),

                                Text(
                                  newsModel.articles[index].title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Date : $date'),
                                        Text('Published At : $time'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // Image.asset('assets/whatsapp.png',height:63,color: const Color(0xffA1A1A1),),

                                        const SizedBox(width: 10),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,size: 30,)),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),

                              ],
                            ),
                          ),
                        );
                      }
                    )
                  ]),
                );
              }
              else if (snapshot.hasError) {
                return Text('error : ${snapshot.error}');
              } else {
                return Center(child: CircularProgressIndicator());
              }


            },
          ),

      ]
        ),

      ),
    );
  }
}
int selectindex=0;