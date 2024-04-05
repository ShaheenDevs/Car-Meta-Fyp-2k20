import 'package:car_meta/ui/common/const_variable.dart';
import 'package:car_meta/ui/widgets/textform_field/dropdown_field.dart';
import 'package:car_meta/ui/widgets/textform_field/textform_field.dart';
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
      body: Stack(
        children: [
          SingleChildScrollView(
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
                        border: Border.all(color: Colors.blueAccent),
                        image: DecorationImage(
                          image: NetworkImage(viewModel.product.url ?? ""),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Icon(Icons.add_a_photo,
                          size: 50, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextformField(
                    title: 'Enter your Title...',
                    ctrl: viewModel.titleCtrl,
                  ),
                  const SizedBox(height: 20),
                  DropdownableTextField(
                      title: 'Enter Type...',
                      items: productTypeList,
                      selectedValue: viewModel.selectedProductType,
                      onChanged: viewModel.onChangedProductType),
                  const SizedBox(height: 20),
                  DropdownableTextField(
                      title: 'Enter Menufecturer...',
                      items: brandList,
                      selectedValue: viewModel.selectedBrand,
                      onChanged: viewModel.onChangedBrand),
                  const SizedBox(height: 20),
                  TextformField(
                    title: 'Enter Model...',
                    ctrl: viewModel.modelCtrl,
                  ),
                  const SizedBox(height: 20),
                  TextformField(
                    title: 'Enter milage...',
                    ctrl: viewModel.milageCtrl,
                  ),
                  const SizedBox(height: 20),
                  TextformField(
                    title: 'Enter Price...',
                    ctrl: viewModel.priceCtrl,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: viewModel.postAd,
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
       if(viewModel.isBusy) const Center(child: CircularProgressIndicator())],
      ),
    );
  }

  @override
  PostViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PostViewModel();
}
