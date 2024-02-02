import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details product"),
        centerTitle: true,
      ),
      body: DetailsPageBody(),
    );
  }
}

class DetailsPageBody extends StatefulWidget {
  const DetailsPageBody({super.key});

  @override
  State<DetailsPageBody> createState() => _DetailsPageBodyState();
}

class _DetailsPageBodyState extends State<DetailsPageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _imageCarousel(),
        _priceText(),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              const Text(
                "Choose the color",
                style: TextStyle(
                  color: Color(0xff939393),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _colors(0xffF5E3DF),
                  _colors(0xffECECEC),
                  _colors(0xffE4F2DF),
                  _colors(0xffD5E0ED),
                  _colors(0xff3E3D40),
                ],
              ),
              Container(
                width: 350,
                height: 65,
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        width: 1.0, color: Color(0xffF0F2F1)), // 1px top border
                    bottom: BorderSide(
                        width: 1.0,
                        color: Color(0xffF0F2F1)), // 1px bottom border
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 49,
                          height: 49,
                          decoration: BoxDecoration(
                              color: Colors.grey[600],
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(Icons.apple),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Apple store",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "online 12 mins ago",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff939393),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    _followButton(),
                  ],
                ),
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, purus sit amet dictum consectetur, orci velit tincidunt justo, eget varius turpis eros in arcu. Sed hendrerit urna nec sagittis feugiat. Phasellus consequat elit eu mi bibendum, nec fringilla justo consequat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer laoreet ligula vel quam malesuada, id aliquet ligula ultrices. Curabitur varius neque nec arcu tristique, non luctus ligula sollicitudin. Quisque non quam et tellus auctor tristique vel at quam. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam convallis bibendum dolor, sit amet varius est volutpat eu. Duis malesuada sodales magna id eleifend. Vestibulum tincidunt libero in dui scelerisque, in varius nulla facilisis. In vel imperdiet risus. Nunc cursus odio in nisl fringilla fermentum.",
                overflow: TextOverflow.visible,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          width: double.infinity, // Takes the full screen width
          height: 102.0, // Set the desired height
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(167, 45),
                    padding: EdgeInsets.fromLTRB(14, 15, 14, 15),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: Color(0xff67C4A7)),
                onPressed: () {},
                child: Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(167, 45),
                  padding: EdgeInsets.fromLTRB(14, 15, 14, 15),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(
                      color: Color(0xFFD9D9D9),
                      width: 1,
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {},
                child: Text(
                  'But Now',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

ElevatedButton _followButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      fixedSize: Size(107, 37),
      backgroundColor: Color(0xFFffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(color: Color(0xFFD9D9D9), width: 1),
      ),
    ),
    child: Text(
      "Follow",
      style: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );
}

Container _colors(int clr) {
  return Container(
    width: 61,
    height: 41,
    decoration: BoxDecoration(
      color: Color(clr),
      borderRadius: BorderRadius.circular(8.0),
    ),
  );
}

CarouselSlider _imageCarousel() {
  return CarouselSlider.builder(
    options: CarouselOptions(
      enableInfiniteScroll: false,
      height: 286,
      viewportFraction: 1.0,
    ),
    itemCount: 3,
    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
      return Image.asset(
        "assets/images/airpodmax.png",
        fit: BoxFit.cover,
      );
    },
  );
}

Container _priceText() {
  return Container(
    width: 350,
    height: 49,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Air pods max by Apple",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  "\$ 1999,99",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(" ( 219 people bought this )"),
              ],
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(50)),
          child: IconButton(
              iconSize: 28, onPressed: () {}, icon: Icon(Icons.heart_broken)),
        ),
      ],
    ),
  );
}
