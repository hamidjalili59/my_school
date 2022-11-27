import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';

class ClassRollCallPage extends StatelessWidget {
  ClassRollCallPage({super.key});
  bool hamidbool = false;
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: PageView.builder(
                  onPageChanged: (value) {
                    print(value);
                    currentindex = value;
                  },
                  itemCount: 5,
                  // controller: _hamid,
                  itemBuilder: ((context, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(80, 139, 201, 243),
                            Color.fromARGB(100, 159, 228, 233),
                            Color.fromARGB(49, 219, 253, 255),
                            Colors.white,
                            Colors.white,
                            Color.fromARGB(49, 219, 253, 255),
                            Color.fromARGB(100, 159, 228, 233),
                            Color.fromARGB(80, 139, 201, 243),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0, 0.22, 0.3, 0.4, 0.6, 0.7, 0.83, 1],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 14.0.h),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(26.r)),
                              width: 0.55.sw,
                              height: 0.35.sh,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(26.r),
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Image.asset(
                                      false
                                          ? 'assets/per.jpg'
                                          : PngAssets.studentProfile,
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'حمید جلیلی نسب',
                            style: TextStyle(
                                fontSize: 26.r,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 20.h),
                          Material(
                            type: MaterialType.card,
                            color: hamidbool ? Colors.greenAccent : Colors.grey,
                            borderRadius: const BorderRadiusDirectional.all(
                              Radius.elliptical(30, 15),
                            ),
                            child: InkWell(
                              splashColor: Colors.greenAccent,
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(30, 15),
                              ),
                              onTap: () {
                                hamidbool = true;
                                print('حاضر');
                              },
                              child: SizedBox(
                                height: 45.h,
                                width: 120.w,
                                child: Center(
                                  child: Text(
                                    'حاضر',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.r,
                                        fontWeight: FontWeight.w900),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  })),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 0.95.sw,
                  height: 110.h,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.h),
                      Row(
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
                            padding: EdgeInsets.symmetric(vertical: 12.w),
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
                            onTap: () {
                              print('object');
                            },
                            child: SizedBox(
                              width: 60.w,
                              height: 40.w,
                              child: Image.asset(
                                PngAssets.tableIcon,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70, width: 3),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        width: 120,
                        height: 40,
                        child: Text(
                          '${currentindex + 1} / 25',
                          style: TextStyle(
                            fontSize: 16.r,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
