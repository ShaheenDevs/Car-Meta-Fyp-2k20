import 'package:car_meta/ui/common/reusable_widgets/horizontalline.dart';
import 'package:car_meta/ui/common/reusable_widgets/imageslider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'product_detail_viewmodel.dart';

class ProductDetailView extends StackedView<ProductDetailViewModel> {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProductDetailViewModel viewModel,
    Widget? child,
  ) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
     List<String> ads = [
      'assess/corola1.jpeg',
      'assess/corola2.jpeg',
      'assess/corola3.jpeg',
    ];
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(title: Text('Product Details')),
        body: SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Colors.white54],
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.1),
                      
                        
                      SizedBox(height: height * 0.03),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Center(
                          child: MyImageSlider(),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[400],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Toyota Corolla',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rs 3500000',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(height: height * 0.01),
                                Text(
                                  'Split rim wheels are hot right now\n on the car circuit and they are easy\n to spot',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10),
                                ),
                                SizedBox(height: height * 0.01),
                                HorizontalLine(
                                    height: height * 0.01,
                                    color: Colors.black,
                                    indent: 20,
                                    endIndent: 20),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Company',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: width * 0.29),
                                      Text(
                                        'Suzuki',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                HorizontalLine(
                                    height: height * 0.01,
                                    color: Colors.black,
                                    indent: 20,
                                    endIndent: 20),
                                Padding(
                                  padding: const EdgeInsets.all(7),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Delivery',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        CupertinoIcons.bus,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: width * 0.25),
                                      Text(
                                        '2-3 days',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                HorizontalLine(
                                    height: height * 0.01,
                                    color: Colors.black,
                                    indent: 20,
                                    endIndent: 20),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 6, bottom: 6, left: 6),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Warrenty',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: width * 0.30),
                                      Text(
                                        '3+ Years',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                HorizontalLine(
                                    height: height * 0.01,
                                    color: Colors.black,
                                    indent: 20,
                                    endIndent: 20),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 6, bottom: 6, left: 6),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Ratings',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: width * 0.26),
                                      // Padding(
                                      //   padding:
                                      //       const EdgeInsets.only(right: 0),
                                      //   child: RatingBar.builder(
                                      //     initialRating: 3,
                                      //     minRating: 1,
                                      //     direction: Axis.horizontal,
                                      //     allowHalfRating: true,
                                      //     itemCount: 5,
                                      //     itemSize: 22,
                                      //     itemBuilder: (context, _) => Icon(
                                      //       Icons.star,
                                      //       color: Colors.amber,
                                      //       size: 5,
                                      //     ),
                                      //     onRatingUpdate: (rating) {},
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                                HorizontalLine(
                                    height: height * 0.01,
                                    color: Colors.black,
                                    indent: 20,
                                    endIndent: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Reviews',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'View All',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(width: width * 0.01),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Align(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      child: Text(
                                        'M.Usama',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text(
                                      ' Great Seller and very cooperative.\n Delivers best product all the time',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 15),
                                    ),
                                  ),
                                ),
                                HorizontalLine(
                                    height: height * 0.01,
                                    color: Colors.black,
                                    indent: 20,
                                    endIndent: 40),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Align(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      child: Text(
                                        'Zaryab',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text(
                                      ' Great Seller and very Good Product\n Best Spare Parts',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 10),
                                    ),
                                  ),
                                ),
                                HorizontalLine(
                                    height: height * 0.01,
                                    color: Colors.black,
                                    indent: 20,
                                    endIndent: 40),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Add Review',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text("Next")),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                    ]),
              ),
            ),
          ),
        ));
  }

  @override
  ProductDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductDetailViewModel();
}
