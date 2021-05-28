import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:phuble/Themes/TypoGraphy.dart';
import 'package:readmore/readmore.dart';

class DisLikedList extends StatefulWidget {
  DisLikedList({Key key, this.disliked_data, this.index}) : super(key: key);
  final disliked_data;
  int index;

  @override
  _DisListState createState() => _DisListState();
}

class _DisListState extends State<DisLikedList> {
  bool enable = true;
  bool disable = true;
  @override
  Widget build(BuildContext context) {
    bool readmore = true;
    return Container(
      padding: EdgeInsets.all(8.0),
      height: MediaQuery.of(context).size.height / 1.3,
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: readmore == null ? 1 : 0,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: ColorConfig.primarycolor1,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://c.pxhere.com/photos/44/dc/smiling_boy_man_professional_happy_people_young_portrait-865531.jpg!d',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "" +
                                      widget.disliked_data[widget.index]
                                          ["name"],
                                  style: TextConfig.body2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "@mohamedhana",
                                      style: TextConfig.body5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Octicons.primitive_dot,
                                      size: 10,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "16h",
                                      style: TextConfig.body5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Linecons.params))
                      ],
                    ),
                    ReadMoreText(
                      "" + widget.disliked_data[widget.index]["desc"],
                      style: TextConfig.body1,
                      trimLines: 6,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read More",
                      trimExpandedText: "Hide",
                      colorClickableText: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: readmore == null ? 2 : 0,
              child: Column(
                children: [
                  Container(
                    // height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      ),
                    ),
                    child: Image(
                      image: NetworkImage(
                        'https://th.bing.com/th/id/Rdf131314efbe77d33d647e2f8546bb30?rik=RIQvPUmALayTZg&riu=http%3a%2f%2fwonderfulengineering.com%2fwp-content%2fuploads%2f2014%2f01%2fhighway-wallpapers.jpeg&ehk=Lrfw6i9cGwHeOOG2nrC9eDghz2q6dBSq6d%2bIjMULh1Q%3d&risl=&pid=ImgRaw',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 15),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Typicons.thumbs_up,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "17",
                              style: TextConfig.liketext,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Octicons.primitive_dot,
                          size: 10,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Typicons.thumbs_down,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "55",
                              style: TextConfig.liketext,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Octicons.primitive_dot,
                          size: 10,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesome.edit,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "120",
                              style: TextConfig.liketext,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Octicons.primitive_dot,
                          size: 10,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Elusive.share,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "120",
                              style: TextConfig.liketext,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 2,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(0.5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      enable ? FontAwesome.thumbs_o_up : FontAwesome.thumbs_up,
                      color: enable
                          ? ColorConfig.bodytext
                          : ColorConfig.primarycolor,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        if (enable) {
                          enable = false;
                        } else {
                          enable = true;
                        }
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome.thumbs_down,
                      color: ColorConfig.primarycolor,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome.edit,
                      color: ColorConfig.bodytext,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Elusive.share,
                      color: ColorConfig.bodytext,
                      size: 30,
                    ),
                    onPressed: () {},
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
