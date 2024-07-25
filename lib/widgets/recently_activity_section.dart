import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';

class RecentlyActivitySection extends StatelessWidget {
  const RecentlyActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff1B204A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Color(0xff161E54),
            ),
            child: Text(
              'Recently Activity',
              style: AppStyle.poppinsMedium18(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '10.40 AM, Fri 10 Sept 2021',
                  style: AppStyle.robotoMedium10(context)
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'You Posted a New Job',
                  style: AppStyle.poppinsMedium18(context)
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  'Kindly check the requirements and terms of work and make sure everything is right.',
                  style: AppStyle.robotoRegular14(context)
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 28),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.spaceBetween,
                      runSpacing: 12,
                      children: [
                        Text(
                          'Today you makes 12 Activity',
                          style: AppStyle.poppinsRegular14(context),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffFF5151),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10)),
                          child: Text(
                            'See All Activity',
                            style: AppStyle.poppinsMedium14(context)
                                .copyWith(color: Colors.white),
                          ),
                        )
                      ]),
                ),
                const SizedBox(height: 24),
              ],
            ),
          )
        ],
      ),
    );
  }
}
