// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter2/models/catalog.dart';
import 'package:flutter2/widgets/themes.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor:MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.all(0),
                children: [
                  "\$${catalog.price}".text.bold.xl4.red800.make(),
                  ElevatedButton(onPressed: () {},
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(MyTheme.darkBluishColor)), child: "Add to cart".text.color(Colors.white).make()).wh(130,50)
                ],
              ).p32(),
      ),
      
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)).h32(context),
Expanded( 
  child: VxArc(height: 30.0,
  arcType: VxArcType.convey,
  edge: VxEdge.top,
    child: Container(
    color: Colors.white,
    width: context.screenWidth,
    child: Column(
      children: [
        catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).xl.make(),
            10.heightBox,
            "Aliquyam sed sit vero takimata consetetur clita takimata takimata. Elitr et duo kasd est ipsum eos. Clita lorem tempor diam.".text.textStyle(context.captionStyle).make().p16(),
            

      ],
    ).py64(),
    ),
  ))
          ],
        ),
      ),
    );
  }
}
