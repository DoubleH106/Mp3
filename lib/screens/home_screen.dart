import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ViewHome();
  }
}

class ViewHome extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Trang chủ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ))
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('background_container2_home.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 70,top: 15),
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Mới Cập Nhật',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 170),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          'Nhạc hoa lời Việt Mới Nhất',
                                          style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          '"Đợi đến tháng 13 và những bản Hit tiềm năng"',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                       width: 200,
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('background_container3_home.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 70,top: 15),
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                      child: Text(
                                        'Mới Cập Nhật',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 170),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          'Những bài hát Hot nhất tháng',
                                          style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          '"Đợi đến tháng 13 và những bản Hit tiềm năng"',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('background_container4_home.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 70,top: 15),
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                      child: Text(
                                        'Mới Cập Nhật',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 170),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          'Nam Thần Nhạc Việt',
                                          style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          'Quang Hướng gửi lời "Mãi Mãi Một Tình Yêu" đến người con gái đặc biệt nhất.',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 15),
            child: Expanded(
              child: Column(
                children: [
                 Row(
                   children: [
                    TextButton(
                        onPressed: () {

                        }, child: const Text('Nghe Gần đây >',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),))
                   ],
                 ),

                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
