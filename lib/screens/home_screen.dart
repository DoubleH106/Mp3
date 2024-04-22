import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:animated_rotation/animated_rotation.dart' as animated_rotation;
import 'dart:math' as math;
class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ViewHome();
  }
}

class ViewHome extends State<HomeScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool showMusic = false;
  bool stopMusic = false;
  bool showLike = false;
  // Phát một bài hát từ danh sách list_music
  playSongFromList(int index) async {
    String url ="assets/y2meta.com - HOÀNG TÔN - YÊU EM RẤT NHIỀU (Lyrics Video) (128 kbps).mp3";
    int result = await audioPlayer.play(url);
    if (result == 1) {
      setState(() {
        showMusic = true;
      });
      // success
      print('Bài hát đang được phát');
    } else {
      // failure
      print('Không thể phát bài hát');
    }
  }

// Dừng phát nhạc
  stopSong() {
    audioPlayer.stop();
  }

// Tạm dừng phát nhạc
  pauseSong() {
    setState(() {
      stopMusic = true;
    });
    audioPlayer.pause();
  }

// Tiếp tục phát nhạc sau khi đã tạm dừng
  resumeSong() {
    setState(() {
      stopMusic = false;
    });
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Trang chủ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
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
      body: Stack(
        children: [
          Column(
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
                              image:
                                  AssetImage('background_container2_home.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 70, top: 15),
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
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              '"Đợi đến tháng 13 và những bản Hit tiềm năng"',
                                              style: TextStyle(
                                                  color: Colors.white),
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
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('background_container3_home.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 70, top: 15),
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
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              '"Đợi đến tháng 13 và những bản Hit tiềm năng"',
                                              style: TextStyle(
                                                  color: Colors.white),
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
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('background_container4_home.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 70, top: 15),
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
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              'Quang Hướng gửi lời "Mãi Mãi Một Tình Yêu" đến người con gái đặc biệt nhất.',
                                              style: TextStyle(
                                                  color: Colors.white),
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
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 5),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Chủ đề & thể loại >',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Container(
                  height: 80,
                  // width: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(170, 80),
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                              child: const Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 100, top: 15),
                                    child: Icon(
                                      Icons.music_note_outlined,
                                      color: Color.fromRGBO(255, 255, 255, 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0),
                                    child: Text(
                                      "BXH Nhạc Mới",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 5),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Mới phát hành >',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.black),
                        ),
                        child: const Text(
                          "Tất cả",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("Việt Nam",
                            style: TextStyle(color: Colors.black))),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("Quốc Tế",
                            style: TextStyle(color: Colors.black)))
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: ListView(
                      physics: AlwaysScrollableScrollPhysics(),
                      // scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      playSongFromList(1);
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                            image:
                                                AssetImage("yeuemratnhieu.jpg"),
                                          )),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Yêu Em Rất Nhiều",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            Text("Hoàng Tôn"),
                                            Text("1 giờ trước")
                                          ],
                                        )
                                      ],
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      playSongFromList(2);
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                            image:
                                                AssetImage("yeuemratnhieu.jpg"),
                                          )),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Yêu Em Rất Nhiều",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            Text("Hoàng Tôn"),
                                            Text("1 giờ trước")
                                          ],
                                        )
                                      ],
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      playSongFromList(3);
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                            image:
                                                AssetImage("yeuemratnhieu.jpg"),
                                          )),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Yêu Em Rất Nhiều",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            Text("Hoàng Tôn"),
                                            Text("1 giờ trước")
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          if(showMusic == true)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 70,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: animated_rotation.AnimatedRotation(
                        duration: const Duration(milliseconds: 10000), // Thời gian quay (500ms trong ví dụ này)
                        angle: 360, // Góc quay (360 độ khi nhạc đang phát, 0 độ khi nhạc dừng)
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("yeuemratnhieu.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center, // Căn giữa dọc
                      children: [
                        Text(
                          "Yêu Em Rất Nhiều",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text("Hoàng Tôn"),
                      ],
                    ),
                    SizedBox(width: 50,),
                    if(showLike == false)
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showLike = true;
                        });
                      },
                      icon: const Stack(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.black,
                            size: 40,// Màu của biểu tượng nền
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white, // Màu của biểu tượng viền
                                size: 37, // Kích thước của biểu tượng viền
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if(showLike == true)
                    IconButton(onPressed: () {
                      setState(() {
                        showLike = false;
                      });
                    }, icon: Icon(Icons.favorite,color: Colors.red, size: 40,)),
                    if(stopMusic == false)
                    IconButton(onPressed: () {
                      pauseSong();
                    }, icon: Icon(Icons.pause)),
                    if(stopMusic == true)
                    IconButton(onPressed: () {
                      resumeSong();
                    }, icon: Icon(Icons.stop)),
                    IconButton(onPressed: () {
                      stopSong();
                    }, icon: Icon(Icons.skip_next))
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
