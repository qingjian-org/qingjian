// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'Products.dart';
import 'package:path_provider/path_provider.dart';
import 'DatabaseHelper.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class PublishPage extends StatefulWidget {
  const PublishPage({Key? key, this.restorationId}) : super(key: key);

  final String? restorationId;

  @override
  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  final Products products = Products(null, null, null, null, DateTime.now(),
      DateTime.now(), DateTime.now(), null);
  final dbHelper = DatabaseHelper.instance;

  TextEditingController feelingControl = TextEditingController();

  late List<Asset> resultList;
  @override
  void initState() {
    super.initState();
    resultList = <Asset>[];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(238, 238, 238, 238),
        ),
        child: Center(
            child: ListView(children: <Widget>[
          Container(
              decoration: BoxDecoration(
                color: const Color(0xc2ffffff),
                borderRadius: BorderRadius.circular(37.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x1f000000),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(children: <Widget>[
                Container(
                  width: 411,
                  height: 45,
                  child: ListTile(
                    leading: IconButton(
                      alignment: Alignment.bottomLeft,
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(primary: Colors.black),
                      child: const Text(
                        '发布',
                        style: TextStyle(
                          fontFamily: 'Perpetua Titling MT',
                          fontSize: 15,
                          color: Color(0xa3045c78),
                          fontWeight: FontWeight.w700,
                          height: 1.3333333333333333,
                          shadows: [
                            Shadow(
                              color: Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            )
                          ],
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 375,
                  height: 1,
                  decoration: BoxDecoration(
                    color: const Color(0x1f000000),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0e000000),
                        offset: Offset(0, 1),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: TextField(
                    onChanged: (value) {
                      feelingControl.text = value;
                      print(feelingControl.text);
                    },
                    maxLines: 5,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                        hintText: "分享你今日的妆容...",
                        border: InputBorder.none),
                    style: const TextStyle(
                      fontFamily: 'PingFang SC',
                      fontSize: 14,
                      color: Color(0xffbdc4ce),
                      letterSpacing: 1.12,
                    ),
                  ),
                ),
              ])),
          Container(
            child: InkWell(
                onTap: () {
                  _modelBottomSheet();
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 1, 0, 7),
                  child: Container(
                    width: double.infinity,
                    height: 443,
                    // ignore: sort_child_properties_last
                    child: products.image == null
                        ? const Center(
                            child: Text(
                              '点击添加图片',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Perpetua',
                                fontSize: 20,
                                color: Color.fromARGB(255, 91, 86, 86),
                                shadows: [
                                  Shadow(
                                    color: Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  )
                                ],
                              ),
                            ),
                          )
                        : Image.file(File(products.image!)),
                    decoration: BoxDecoration(
                      color: const Color(0xc2ffffff),
                      borderRadius: BorderRadius.circular(37.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x1f000000),
                          offset: Offset(0, 3),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 3, 5, 0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xc2ffffff),
                borderRadius: BorderRadius.circular(27.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x12066477),
                    offset: Offset(0, 6),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Row(children: const <Widget>[
                  Expanded(
                    child: Text(
                      '         巴黎卡诗KERASTASE',
                      style: TextStyle(
                        fontFamily: 'Perpetua',
                        fontSize: 12,
                        color: const Color(0xa3046078),
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                    ),
                  )
                ]),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      uploadImages();
                      print("点击了");
                    },
                    child: const SizedBox(
                      width: 100,
                      height: 100,
                      child: Icon(Icons.photo_camera),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ])));
  }

  final imagePicker = ImagePicker(); //图片选择器
  var select;
  @override
  String? get restorationId => restorationId;

  void _modelBottomSheet() async {
    select = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220,
            child: Column(
              children: [
                const ListTile(
                  title: Text("请选择上传图片方式"),
                ),
                const Divider(),
                ListTile(
                  title: const Text("拍照"),
                  onTap: () {
                    getImage();
                    Navigator.of(context).pop("拍照");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("相册"),
                  onTap: () {
                    getImage();
                    Navigator.of(context).pop("相册");
                  },
                ),
              ],
            ),
          );
        });
    print(select);
    print(products.image);
  }

  Future getImage() async {
    final XFile? image = await imagePicker.pickImage(
        source: select == "相册" ? ImageSource.gallery : ImageSource.camera);
    if (image == null) {
      return;
    }
    final Directory directory = await getApplicationDocumentsDirectory();
    final String dirPath = directory.path;
    final now = DateTime.now().toString();
    final String savePath = '$dirPath/$now.jpg';
    image.saveTo(savePath);
    setState(() {
      products.image = savePath;
    });
  }

  Future<void> uploadImages() async {
    resultList = <Asset>[];
    try {
      var tmp = await MultiImagePicker.pickImages(
        selectedAssets: resultList,
        // 选择图片的最大数量
        maxImages: 9,
        // 是否支持拍照
        enableCamera: false,
        materialOptions: const MaterialOptions(
            // 显示所有照片，值为 false 时显示相册
            startInAllView: true,
            allViewTitle: '所有照片',
            actionBarColor: '#2196F3',
            textOnNothingSelected: '没有选择照片',
            useDetailsView: true),
      );
      if (tmp.isNotEmpty) {
        print(tmp.toString());
        resultList = tmp;
        setState(() {});
      }
    } on Exception catch (e) {
      e.toString();
    }
  }
}
