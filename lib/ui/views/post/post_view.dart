import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'post_viewmodel.dart';

class PostView extends StackedView<PostViewModel> {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PostViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // appBar: AppBar(
      //   title: Text("Add Post"),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: viewModel.pickImage,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                      // viewModel.image != null
                      //     ? Image.file(viewModel.image?? , fit: BoxFit.cover)
                      //     :
                      Icon(Icons.add_a_photo, size: 50, color: Colors.grey),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: viewModel.postCtrl,
                decoration: InputDecoration(
                  hintText: 'Enter your post...',
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
              ),
              SizedBox(height: 20),
              TextField(
                controller: viewModel.companyCtrl,
                decoration: InputDecoration(
                  hintText: 'Enter Menufecturer...',
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
              ),
              SizedBox(height: 20),
              TextField(
                controller: viewModel.modelCtrl,
                decoration: InputDecoration(
                  hintText: 'Enter Model...',
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
              ),
              SizedBox(height: 20),
              TextField(
                controller: viewModel.milageCtrl,
                decoration: InputDecoration(
                  hintText: 'Enter milage...',
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
              ),
              SizedBox(height: 20),
              TextField(
                controller: viewModel.priceCtrl,
                decoration: InputDecoration(
                  hintText: 'Enter Price...',
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Here you can implement your logic to submit the post
                  // You can use _textEditingController.text to get the text
                  // And _image to get the selected image file
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PostViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PostViewModel();
}
