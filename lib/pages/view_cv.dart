import 'package:flutter/material.dart';
import 'package:hng_2/model/cv_model.dart';
import 'package:hng_2/pages/edit_cv.dart';
import 'package:hng_2/utils/Colors.dart';

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
      backgroundColor: powderBlue,
      // bottomNavigationBar: Padding(
      //   child: ,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.cvModel.name,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.cvModel.slackUsername,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                color: Colors.transparent ,
                elevation: 4.0,
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: moonStone,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Text(
                      "Go to Github",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.cvModel.bio,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.045,

                ),
              ),
              ElevatedButton(
                child: Text("Edit your cv"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: moonStone,
                ),
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
