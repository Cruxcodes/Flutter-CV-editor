import 'package:flutter/material.dart';
import 'package:hng_2/model/cv_model.dart';
import 'package:hng_2/pages/view_cv.dart';

class EditCv extends StatefulWidget {
  EditCv({Key? key, required this.cvModel}) : super(key: key);

  CvModel cvModel;

  @override
  State<EditCv> createState() => _EditCvState();
}

class _EditCvState extends State<EditCv> {
  final nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    nameController.text = widget.cvModel.bio;
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
      body: Form(
        key: _formKey,
        child: Container(
          child: Column(
            children: [
              Text(widget.cvModel.bio),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,



                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.cvModel.bio = "this is another thinkg";
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ViewCv(cvModel: widget.cvModel),
                      ),
                    );
                  },
                  child: Text("change"))
            ],
          ),
        ),
      ),
    );
  }
}
