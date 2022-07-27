import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../category_provider/category_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CartPage1 extends StatefulWidget {
  const CartPage1({Key? key}) : super(key: key);

  @override
  State<CartPage1> createState() => _CartPage1State();
}

class _CartPage1State extends State<CartPage1> with TickerProviderStateMixin {
  void initState() {
    // CategoryProvider categoryProvider =
    //     Provider.of<CategoryProvider>(context, listen: false);
    // categoryProvider.getCategoryProvider();

    // TODO: implement initState
    super.initState();
    _fetchData();
  }

  List _get = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    const apiUrl = 'http://fakestoreapi.com/products';

    final response = await http.get(Uri.parse(apiUrl));
    final data = json.decode(response.body);

    setState(() {
      _get = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    //  CategoryProvider categoryProvider = Provider.of<CategoryProvider>(context);
    TabController _tabController = TabController(length: 5, vsync: this);
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MARENGOO",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.only(left: 14, right: 11),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "NEW IN",
                    ),
                    Tab(
                      text: "MENS",
                    ),
                    Tab(
                      text: "WOMENS",
                    ),
                    Tab(
                      text: "KIDS",
                    ),
                    Tab(
                      text: "ACCESSORIES",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),




            Column(
                children: [
              Container(
                width: MediaQuery.of(context).size.width*.2,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                    controller: _tabController,
                    children: [
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 180,
                      ),
                      itemCount: _get.length,
                     scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"))
                          ),
                        //  child: Image.network("${_get[index]["image"]}"),
                        );
                      }),

                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          mainAxisSpacing: 10,
                      ),
                      itemCount: _get.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.network("${_get[index]["image"]}"),
                            Text("${_get[index]["title"]}"),
                            Text("${_get[index]["price"]}"),
                          ],
                        );
                      }),
                  Text('qqq'),
                  Text('qqq'),
                  Text('qqq'),
                ]),
              ),
            ]),
            ],    ),

            ),
                ),
        ));
  }
}
