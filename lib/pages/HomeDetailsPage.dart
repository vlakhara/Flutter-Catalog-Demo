import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_f1/models/catalog.dart';
import 'package:flutter_f1/widgets/home_widgets/addToCart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: context.canvasColor),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl4.red800.make(),
                AddToCart(
                  catalog: catalog,
                ).wh(100, 50)
              ]).p32(),
        ),
        body: SafeArea(
            bottom: false,
            child: Column(children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                      height: 30.0,
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      child: Container(
                        color: context.cardColor,
                        width: context.screenWidth,
                        child: Column(children: [
                          catalog.name.text.xl4
                              .color(context.accentColor)
                              .bold
                              .make(),
                          catalog.desc.text
                              .textStyle(context.captionStyle)
                              .xl
                              .make(),
                          10.heightBox,
                          "Sed magna sit sit et accusam accusam et eos sit sea, justo amet dolore vero gubergren accusam est elitr. Justo."
                              .text
                              .textStyle(context.captionStyle)
                              .center
                              .make()
                              .p2()
                        ]).py64(),
                      )))
            ])));
  }
}
