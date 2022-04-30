import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../../components/custom_container.dart';
import '../../../components/custom_image_box.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/aa.png'), fit: BoxFit.fill),
                    shape: BoxShape.circle,
                    color: Color(0xFFe0f2f1)),
              ),
              Text(
                'John',
                style: NameStyle,
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: textColor,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notifications,
                color: textColor,
              )
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: dark2Color,
          // currentIndex: tabIndex.value,
          unselectedItemColor: Colors.white70,
          selectedItemColor: textColorGray,

          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
              label: '',
            ),
          ],
        ),
        body: Obx(() => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Populer',
                        style: TitleStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 240,
                        // color: Colors.red,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.gameList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 130,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('asset/rd.png'),
                                          fit: BoxFit.fill,
                                        ),
                                        // shape: BoxShape.circle,
                                      )),
                                  Container(
                                    height: 70,
                                    width: 250,
                                    color: darkColor,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                            controller.gameList[index].slug
                                                .toString(),
                                            style: NameStyle,
                                          )),
                                          Spacer(),
                                          Icon(
                                            Icons.favorite_border_outlined,
                                            color: textColor,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 45,
                        // color: Colors.red,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.gameList.length,
                          // controller.gameList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: darkColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 4),
                                  child: Center(
                                      child: Text(
                                          controller.gameList[index].category
                                              .toString(),
                                          style: NameTextStyle)),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 45,
                        // color: Colors.red,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.gameList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: darkColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  child: Center(
                                      child: Text(
                                    controller.gameList[index].cover.toString(),
                                    style: NameTextStyle,
                                  )),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Today',
                        style: TitleStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        // height: 600,

                        // color: Colors.red,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: controller.gameList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 140,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('asset/fa.png'),
                                          fit: BoxFit.fill,
                                        ),
                                        // shape: BoxShape.circle,
                                      )),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    color: darkColor,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          child: Row(
                                            children: [
                                              CustomContainer(
                                                child: Center(
                                                    child: Text(
                                                  controller
                                                      .gameList[index].cover
                                                      .toString(),
                                                  style: NameTextStyle,
                                                )),
                                              ),
                                              Spacer(),
                                              CustomContainer(
                                                child: Center(
                                                    child: Text(
                                                  controller
                                                      .gameList[index].category
                                                      .toString(),
                                                  style: NameTextStyle,
                                                )),
                                              ),
                                              Spacer(),
                                              CustomContainer(
                                                child: Center(
                                                    child: Text(
                                                  controller
                                                      .gameList[index].status
                                                      .toString(),
                                                  style: NameTextStyle,
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomContainer(
                                          child: Center(
                                              child: Text(
                                            controller.gameList[index].gameModes
                                                .toString(),
                                            style: NameTextStyle,
                                          )),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: 60,
                                            child: Row(
                                              children: [
                                                Text('Download',
                                                    style: DownTextStyle),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                ImageBox(
                                                  assetImage: AssetImage(
                                                      'asset/one.png'),
                                                ),
                                                // ImageBox(child:Image.asset("one.png"),),
                                                Spacer(),
                                                ImageBox(
                                                  assetImage: AssetImage(
                                                      'asset/two.png'),
                                                ),
                                                Spacer(),
                                                ImageBox(
                                                  assetImage: AssetImage(
                                                      'asset/three.png'),
                                                ),
                                                Spacer(),
                                                ImageBox(
                                                  assetImage: AssetImage(
                                                      'asset/five.png'),
                                                ),
                                                Spacer(),
                                                ImageBox(
                                                  assetImage: AssetImage(
                                                      'asset/six.png'),
                                                ),
                                                Spacer(),
                                                ImageBox(
                                                  assetImage: AssetImage(
                                                      'asset/seven.png'),
                                                ),
                                                Spacer(),
                                                ImageBox(
                                                  assetImage: AssetImage(
                                                      'asset/nine.png'),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'This Week',
                        style: TitleStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: controller.gameList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 150,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('asset/rd.png'),
                                          fit: BoxFit.fill,
                                        ),
                                        // shape: BoxShape.circle,
                                      )),
                                  Container(
                                    height: 115,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color(0xff2B2D47),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: SizedBox(
                                                  child: Text(
                                                      controller
                                                          .gameList[index].slug
                                                          .toString(),
                                                      style: NameStyle),
                                                )),
                                                Spacer(),
                                                Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: textColorGray,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )));
  }
}
