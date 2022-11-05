import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:placement/controller/job_notification.dart';

class JobNotifications extends StatelessWidget {
  const JobNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JobController>(builder: (controller) {
      return Column(
        children: [
          CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 16/16,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: true,
                scrollPhysics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) =>
                    controller.changePosition(index),
              ),
              itemCount: 2,
              itemBuilder: (context, index, i) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                  width: double.infinity - 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.deepPurple,
                  ),
                );
              }),
          DotsIndicator(
            dotsCount: 2,
            position: controller.index.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(5.0),
              activeSize: const Size(10.0, 5.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          )
        ],
      );
    });
  }
}
