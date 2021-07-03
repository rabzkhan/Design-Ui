import 'package:firstapp/model/course.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ExploreCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // ignore: missing_required_param
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
            child: ExploreCourseCard(course: exploreCourses[index]),
          );
        },
      ),
    );
  }
}

class ExploreCourseCard extends StatelessWidget {
  ExploreCourseCard({@required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          height: 120.0,
          width: 280.0,
          decoration: BoxDecoration(
            gradient: course.background,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('asset/illustrations/${course.illustration}',
                        fit: BoxFit.cover, height: 100.0),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
