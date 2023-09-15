import 'package:flutter/material.dart';
import 'package:hng_2/model/cv_model.dart';
import 'package:hng_2/pages/view_cv.dart';
import 'package:hng_2/utils/Colors.dart';
import 'package:hng_2/utils/Colors.dart';
import 'package:hng_2/utils/Colors.dart';
import 'package:hng_2/utils/Colors.dart';

class EditCv extends StatefulWidget {
  EditCv({Key? key, required this.cvModel}) : super(key: key);

  CvModel cvModel;

  @override
  State<EditCv> createState() => _EditCvState();
}

class _EditCvState extends State<EditCv> {
  final nameController = TextEditingController();
  final slackNameController = TextEditingController();
  final bioController = TextEditingController();
  final githubUrlController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    nameController.text = widget.cvModel.name;
    slackNameController.text = widget.cvModel.slackUsername;
    bioController.text = widget.cvModel.bio;
    githubUrlController.text = widget.cvModel.github;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: moonStone,
                  ),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: moonStone,
                  ),
                  child: TextFormField(
                    controller: slackNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: moonStone,
                  ),
                  child: TextFormField(
                    controller: bioController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: moonStone,
                  ),
                  child: TextFormField(
                    controller: githubUrlController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.cvModel.name = nameController.text;
                        widget.cvModel.slackUsername = slackNameController.text;
                        widget.cvModel.bio = bioController.text;
                        widget.cvModel.github = githubUrlController.text;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewCv(cvModel: widget.cvModel),
                        ),
                      );
                    },
                    child: Text("Save Changes"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
