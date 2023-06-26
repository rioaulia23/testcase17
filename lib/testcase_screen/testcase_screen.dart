import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/testcase_screen/bloc/testcase_bloc.dart';

class TestCaseScreen extends StatefulWidget {
  const TestCaseScreen({Key? key}) : super(key: key);

  @override
  State<TestCaseScreen> createState() => _TestCaseScreenState();
}

class _TestCaseScreenState extends State<TestCaseScreen> {

  final TestcaseBloc _testcaseBloc = TestcaseBloc();


  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _testcaseBloc,
      builder: (context, state) {
        return BlocListener(
          bloc: _testcaseBloc,
          listener: (context, state) {

          },
          child: Scaffold(
            appBar: AppBar(),
            body: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(10),
                        left: ScreenUtil().setWidth(12),
                        right: ScreenUtil().setWidth(12)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(6.0)),
                        fillColor: Colors.grey,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(16),
                            vertical: ScreenUtil().setHeight(12)),
                        hintText: 'Input',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(150),
                        child: ElevatedButton(
                          onPressed: () {

                            _testcaseBloc.add(SoalEvent());

                          },
                          child: const Text('1'),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(150),
                        child: ElevatedButton(
                          onPressed: () {

                            _testcaseBloc.add(Soal2Event());
                          },
                          child: const Text('2'),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(150),
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: const Text('3'),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(150),
                        child: ElevatedButton(
                          onPressed: () {


                          },
                          child: const Text('4'),
                        ),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: ScreenUtil().setWidth(12),
                              top: ScreenUtil().setHeight(20)),
                          child: const Text('Result'))),


                  _testcaseBloc.s1 == true ? Text('${_testcaseBloc.n},${_testcaseBloc.deretString}') : _testcaseBloc.s2 == true ?
                  Text('${_testcaseBloc.n2},${_testcaseBloc.deretString2}') : const Text('')
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
