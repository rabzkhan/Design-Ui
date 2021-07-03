import 'package:firstapp/model/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class RecentCourseCard extends StatelessWidget {
  RecentCourseCard({this.course});
  Course course;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      Padding(
        padding: EdgeInsets.only(
          top: 20.0,
        ),
        child: Container(
          width: 240,
          height: 220,
          decoration: BoxDecoration(
            gradient: course.background,
            borderRadius: BorderRadius.circular(35.0),
            boxShadow: [
              BoxShadow(
                color: course.background.colors[0].withOpacity(0.2),
                offset: Offset(0, 20),
                blurRadius: 25.0,
              ),
              BoxShadow(
                color: course.background.colors[1].withOpacity(0.2),
                offset: Offset(0, 20),
                blurRadius: 25.0,
              )
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 32.0,
                  left: 32.0,
                  right: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.courseSubtitle,
                      style: kCardSubtitleStyle,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      course.courseTitle,
                      style: kCardTitleStyle,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset('asset/illustrations/${course.illustration}',
                    fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 35.0),
        child: Container(
          child: Image.asset(
            'asset/logos/${course.logo}',
          ),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.0),
            boxShadow: [
              BoxShadow(
                  color: kShadowColor, offset: Offset(0, 4), blurRadius: 16.0),
            ],
          ),
          padding: EdgeInsets.all(12.0),
        ),
      ),
    ]);
  }
}
