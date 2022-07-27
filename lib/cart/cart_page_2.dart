import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage2 extends StatefulWidget {
  const CartPage2({Key? key}) : super(key: key);

  @override
  State<CartPage2> createState() => _CartPage2State();
}

class _CartPage2State extends State<CartPage2> {
  @override
  Widget build(BuildContext context) {
    var title = "Casual T-shirt";
    var price = "Rs.599";
    var text = "1x";
    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Your",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "cart",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Payable amount",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "           Rs 2,596",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Container(
                height: 100.h,
                width: 150.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    image: DecorationImage(
                        image: NetworkImage(
                      "https://i.pinimg.com/736x/63/b1/83/63b183620e33d12ea83fafd68327d559.jpg",
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(price),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 10,
                        child: Text(
                          's',
                          style: TextStyle(fontSize: 12.sp, color: Colors.black),
                        ), //Text
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        radius: 9,
                        child: Text(
                          '',
                          style: TextStyle(fontSize: 12.sp, color: Colors.black),
                        ), //Text
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  children: [
                    Text(text),
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.delete_forever_outlined,
                      size: 25.sp,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 100.h,
                width: 150.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    image: DecorationImage(
                        image: NetworkImage(
                      "https://i.pinimg.com/736x/63/b1/83/63b183620e33d12ea83fafd68327d559.jpg",
                    ))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(price),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 10,
                        child: Text(
                          's',
                          style: TextStyle(fontSize: 12.sp, color: Colors.black),
                        ), //Text
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        radius: 9,
                        child: Text(
                          '',
                          style: TextStyle(fontSize: 12.sp, color: Colors.black),
                        ), //Text
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  children: [
                    Text(text),
                    SizedBox(height: 15),
                    Icon(
                      Icons.delete_forever_outlined,
                      size: 25.sp,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 100.h,
                width: 150.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    image: DecorationImage(
                        image: NetworkImage(
                      "https://i.pinimg.com/736x/63/b1/83/63b183620e33d12ea83fafd68327d559.jpg",
                    ),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(price),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 10,
                        child: Text(
                          's',
                          style: TextStyle(fontSize: 12.sp, color: Colors.black),
                        ), //Text
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        radius: 9,
                        child: Text(
                          '',
                          style: TextStyle(fontSize: 12.sp, color: Colors.black),
                        ), //Text
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  children: [
                    Text(text),
                    SizedBox(height: 15),
                    Icon(
                      Icons.delete_forever_outlined,
                      size: 25.sp,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 100.h,
                width: 150.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    image: DecorationImage(
                        image: NetworkImage(
                      "https://i.pinimg.com/736x/63/b1/83/63b183620e33d12ea83fafd68327d559.jpg",
                    ))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(price),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 10,
                        child: Text(
                          's',
                          style: TextStyle(fontSize: 12.sp, color: Colors.black),
                        ), //Text
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        radius: 9,
                        child: Text(
                          '',
                          style: TextStyle(fontSize: 12.sp, color: Colors.black),
                        ), //Text
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  children: [
                    Text(text),
                    SizedBox(height: 15),
                    Icon(
                      Icons.delete_forever_outlined,
                      size: 25.sp,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Row(children: [
              ElevatedButton(
                child: Icon(Icons.arrow_back_ios),
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    //side: BorderSide(color: Colors.red)
                  )),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                child: Text('Payment'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
                onPressed: () {},
              ),
            ]),
          ),
        ]),
      ),
    ));
  }
}
