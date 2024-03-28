import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'order_detail_viewmodel.dart';

class OrderDetailView extends StackedView<OrderDetailViewModel> {
  const OrderDetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OrderDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Order Details"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  OrderDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OrderDetailViewModel();
}
