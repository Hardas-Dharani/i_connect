import 'package:flutter/material.dart';
import 'package:i_connect/temp_data/individual_list.dart';

class StackedAvatras extends StatelessWidget {
  final String imgURL;
  final double? radius;
  final bool? groupLetConnect;
  final List<IndividualData>? groupInd;
  const StackedAvatras({
    required this.imgURL,
    this.radius,
    required this.groupInd,
    this.groupLetConnect = false,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: groupInd!.isNotEmpty
            ? groupLetConnect!
                ? groupInd!.length
                : 2
            : 0,
        padding: const EdgeInsets.only(left: 12),
        itemBuilder: (context, index) {
          return Align(
            widthFactor: 0.3,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.black.withOpacity(0.1),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(groupInd![index].imgURL!),
              ),
            ),
          );
        },
      ),
    );

    // Stack(
    //   children: [
    //     Positioned(
    //       left: 14.0,
    //       child: CircleAvatar(
    //         backgroundColor: Colors.blue,
    //         radius: radius ?? 5.5.w,
    //         backgroundImage: NetworkImage(groupInd[]),
    //       ),
    //     ),
    //     Positioned(
    //       left: 7.0,
    //       child: CircleAvatar(
    //         backgroundColor: Colors.yellow,
    //         radius: radius ?? 5.5.w,
    //         backgroundImage: AssetImage(imgURL),
    //       ),
    //     ),
    //     CircleAvatar(
    //       backgroundColor: Colors.red,
    //       radius: radius ?? 5.5.w,
    //       backgroundImage: AssetImage(imgURL),
    //     ),
    //   ],
    // );
  }
}
