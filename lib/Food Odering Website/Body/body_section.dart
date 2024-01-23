import 'package:flutter/material.dart';
import 'package:flutter_web/Food%20Odering%20Website/Body/product_detail.dart';
import 'package:flutter_web/Food%20Odering%20Website/Body/send_feedBack.dart';
import 'package:flutter_web/Food%20Odering%20Website/model/product_model.dart';
import 'package:flutter_web/Food%20Odering%20Website/screen/responsive.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1233),
        child: Column(
          children: [
            Responsive(
              mobile: productDetail(
                  crossAxisCount: size.width < 690 ? 2 : 3,
                  aspectRation: size.width < 560 ? 0.85 : 1.1),
              desktop: productDetail(
                  crossAxisCount: size.width < 650 ? 2 : 3,
                  aspectRation: size.width < 650 ? 0.85 : 1.1),
            ),
            const SizedBox(
              height: 40,
            ),
            const SendFeedBack()
          ],
        ),
      ),
    );
  }
}

class productDetail extends StatelessWidget {
  const productDetail({
    super.key,
    this.crossAxisCount = 3,
    this.aspectRation = 1.1,
  });

  final int crossAxisCount;
  final double aspectRation;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: aspectRation),
      itemBuilder: (contxt, index) =>
          ProductDetail(press: () {}, product: products[index]),
      itemCount: products.length,
    );
  }
}
