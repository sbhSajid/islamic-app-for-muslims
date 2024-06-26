import 'package:flutter/material.dart';
import 'package:sakib/model/prayer_time_api_model.dart';
import 'package:sakib/service/prayer_time_api_service.dart';
import 'package:sakib/utility/app_colors.dart';

class PrayerTime extends StatefulWidget {
  const PrayerTime({super.key, this.time});

  final PrayerTimeApiModel? time;

  @override
  State<PrayerTime> createState() => _PrayerTimeState();
}

class _PrayerTimeState extends State<PrayerTime> {
  @override
  void initState() {
    getPTData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPTData(),
        builder: (context, snapshot) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height / 15,
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.functionalTextBoxColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fajr',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              '${time.data.timings.fajr} - ${time.data.timings.sunrise}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height / 15,
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.functionalTextBoxColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sunrise',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              time.data.timings.sunrise,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height / 15,
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.functionalTextBoxColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dhuhr',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              '${time.data.timings.dhuhr} - ${time.data.timings.asr}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height / 15,
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.functionalTextBoxColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Asr',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              time.data.timings.asr,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height / 15,
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.functionalTextBoxColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sunset',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              time.data.timings.sunset,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height / 15,
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.functionalTextBoxColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Maghrib',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              '${time.data.timings.maghrib} - ${time.data.timings.isha}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height / 15,
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.functionalTextBoxColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Isha',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              '${time.data.timings.isha} - ${time.data.timings.midnight}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
