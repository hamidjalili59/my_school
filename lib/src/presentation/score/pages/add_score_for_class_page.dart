import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';

class AddScoreForClassPage extends StatelessWidget {
  const AddScoreForClassPage({super.key});
  @override
  Widget build(BuildContext context) {
    Map temp = {
      'هادی شریف زاده': 20,
      'محسن پیرفخرآبادی': 19.75,
      'احسان اکبری': 20,
      'مهدی شیبانی': 15,
      'حمیدجلیلی': 9.5,
      'بابک پاکزاد': 0,
      'مجید لطیفی': 20,
      'مهدی محمودی': 18,
      'سجاد فشائی': 10,
      'مصطفی فهیمی': 19,
      'مصطفی فهیمی1': 19,
      'مصطفی فهیمی2': 19,
      'مصطفی فهیمی23': 19,
      'مصطفی فهیمی4': 19,
      'مصطفی فهیمی45': 19,
      'مصطفی فهیمی6': 19,
    };
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.only(top: 70.0.h),
                  child: SizedBox(
                    width: 1.sw,
                    height: 0.9.sh,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: SingleChildScrollView(
                        child: DataTable(
                          headingRowHeight: 60.h,
                          dataRowHeight: 50.h,
                          border: TableBorder.all(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(8.r),
                              width: 1.w),
                          columns: <DataColumn>[
                            DataColumn(
                              onSort: (index, isfelan) {},
                              label: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'نام و نام‌خانوادگی',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18.r,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 18.r,
                                  ),
                                ],
                              ),
                            ),
                            DataColumn(
                              onSort: (index, isfelan) {},
                              label: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('نمره',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 22.r)),
                                  Icon(Icons.arrow_drop_down_rounded,
                                      size: 25.r),
                                ],
                              ),
                            ),
                          ],
                          rows: List.generate(
                            temp.length,
                            (index) => DataRow(cells: [
                              DataCell(
                                Text(temp.keys.toList()[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.r)),
                              ),
                              DataCell(
                                Text(temp.values.toList()[index].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.r)),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 0.95.sw,
                  height: 70.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(221, 17, 11, 46),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        16.r,
                      ),
                      bottomRight: Radius.circular(
                        16.r,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          getIt.get<AppRouter>().pop();
                        },
                        child: SizedBox(
                          width: 60.w,
                          height: 60.w,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 26.r,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.w),
                        child: Text(
                          'جمعه 20/9/1401 ساعت 9:28\nمدرسه شهید نظری',
                          style: TextStyle(
                              fontSize: 16.r,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 60.w,
                          height: 40.w,
                          child: Image.asset(
                            PngAssets.checkIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
