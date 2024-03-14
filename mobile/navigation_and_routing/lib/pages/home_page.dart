import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mihretab/models/shoe_model.dart';
import '../core/constants/constants.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ShoeModel.shoes = [
      ShoeModel(
        name: 'Sample Shoe 1',
        imageURL: 'data:image/jpeg;base64,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',
        description: 'This is a sample shoe 1 description.',
        price: 99.99,
        category: 'Sample Category 1',
        rating: 4.5,
      ),
      ShoeModel(
        name: 'Sample Shoe 2',
        imageURL: 'data:image/jpeg;base64,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',
        description: 'This is a sample shoe 2 description.',
        price: 129.99,
        category: 'Sample Category 2',
        rating: 4.2,
      ),
      // Add more sample shoes as needed
    ];

    return Scaffold(
        backgroundColor: ColorConstants.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: ColorConstants.profilePictureColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'July 14, 2023',
                              style: TextStyle(
                                color: ColorConstants.textColorLight,
                                fontSize: FontSizeConstants.fontExtraSmall,
                                fontWeight: FontWeightConstants.primaryFont,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Hello, ',
                                  style: TextStyle(
                                    color: ColorConstants.textColorLight,
                                    fontSize: FontSizeConstants.fontSmall,
                                    fontWeight: FontWeightConstants.primaryFont,
                                  ),
                                ),
                                Text(
                                  'Yohannes',
                                  style: TextStyle(
                                    color: ColorConstants.darkTextColor,
                                    fontSize: FontSizeConstants.fontSmall,
                                    fontWeight:
                                        FontWeightConstants.primaryFontBold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorConstants.borderColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: <Widget>[
                          const Positioned(
                            top: 7,
                            left: 7,
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: ColorConstants.textColorLight,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 12,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: ColorConstants.primaryColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Available Products',
                  style: TextStyle(
                    color: ColorConstants.textColor,
                    fontSize: FontSizeConstants.fontSizeExtraLarge,
                    fontWeight: FontWeightConstants.primaryFontBold,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                    child: ShoeModel.shoes.isNotEmpty
                        ? ListView.builder(
                            itemCount: ShoeModel.shoes.length,
                            itemBuilder: (context, index) {
                              final ShoeModel shoe = ShoeModel.shoes[index];
                              return ShoeCard(shoeModel: shoe);
                            },
                          )
                        : const Center(
                            child: Text(
                              'No Product is Found!',
                              style: TextStyle(
                                color: ColorConstants.textColor,
                                fontSize: FontSizeConstants.fontSizeExtraLarge,
                                fontWeight: FontWeightConstants.primaryFontBold,
                              ),
                            ),
                          )),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            context.push('/addorupdatepage');
          },
          child: Icon(
            Icons.add_rounded,
            color: ColorConstants.backgroundColor,
            size: 36,
          ),
          backgroundColor: ColorConstants.primaryColor,
        ));
  }
}
