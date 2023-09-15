import 'package:flutter/material.dart';
import 'package:hng_2/model/cv_model.dart';
import 'package:hng_2/pages/edit_cv.dart';

class ViewCv extends StatefulWidget {
  ViewCv({Key? key, required this.cvModel}) : super(key: key);

  CvModel cvModel;

  @override
  State<ViewCv> createState() => _ViewCvState();
}

class _ViewCvState extends State<ViewCv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.cvModel.bio,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                ),
              ),
              Text(
                widget.cvModel.bio,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  "Go to Github",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditCv(
                        cvModel: widget.cvModel,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
