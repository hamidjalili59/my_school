import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/school/bloc/school/school_bloc.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchoolBloc, SchoolState>(
      bloc: getIt.get<SchoolBloc>(),
      builder: (context, state) {
        return Container(
          constraints: BoxConstraints(minWidth: 0.35.sw, minHeight: 0.1.sh),
          color: Colors.red,
          child: ListView.builder(
            itemCount: state.data.keys.toList().length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.amberAccent,
                height: 80.h,
                child: Text(
                  state.data.values.toList()[index]['school_Name'],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
