import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ViewModel/view_model.dart';

// this the first clean code
class SchoolInfo extends StatelessWidget {
  SchoolInfo({Key? key}) : super(key: key);

  final String schoolName = "School Name";
  final String schoolAddress = "School Address";
  final String studentsNo = "Number of Students";
  final String teachersNo = "Number of Teachers";

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SchoolViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color(0xff477B71),
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        title: const Text(
          'School Info',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/images/school.png',
                width: 250,
              ),
            ),
            reusableTextField(
                viewModel.school?.schoolName ?? 'Loading...', Icons.school),
            const SizedBox(
              height: 15,
            ),
            reusableTextField(viewModel.school?.schoolAddress ?? 'Loading...',
                Icons.location_on_rounded),
            const SizedBox(
              height: 15,
            ),
            reusableTextField(
                viewModel.school?.studentsNo?.toString() ?? 'Loading...',
                Icons.person),
            const SizedBox(
              height: 15,
            ),
            reusableTextField(
                viewModel.school?.teachersNo.toString() ?? 'Loading...',
                Icons.person),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Container(
                  width: 300,
                  height: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 1),
                          blurRadius: 12.0)
                    ],
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xffe9b637),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ButtonTheme(
                      minWidth: 300,
                      child: TextButton(
                        onPressed: () {
                          //TODO Call your function to load the school data
                          viewModel.loadSchoolData();
                          //TODO: Hint: Replace the class attributes with the data fetched from the JSON file
                        },
                        child: const Text(
                          'Show Data',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget reusableTextField(String text, IconData iconShape) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xffd3d3d3),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Icon(
              iconShape,
              color: Colors.white,
              size: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
