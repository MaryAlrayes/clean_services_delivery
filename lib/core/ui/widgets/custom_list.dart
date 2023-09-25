// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:saudi_clean_services_delivery/core/ui/widgets/custom_animated_list.dart';

class CustomList extends StatelessWidget {
  final List<Widget> items;
  final Tween<Offset> tween;
  final GlobalKey<AnimatedListState> keyList;
  CustomList({
    Key? key,
    required this.items,
    required this.tween,
    required this.keyList,
  }) : super(key: key);

  final List<Widget> _animatedItems = [];
  @override
  Widget build(BuildContext context) {
    _addAnimatedItems(items);
    return SingleChildScrollView(
      child: CustomAnimatedList(
        itemsWidgets: _animatedItems,
        keyList: keyList,
        offset: tween,
      ),
    );
    // return ListView.separated(itemBuilder: (context, index) {
    //   return items[index];
    // }, separatorBuilder: (context, index) {
    //  return const SizedBox(height: 4,);
    // }, itemCount: items.length);
  }

  void _addAnimatedItems(List<Widget> items) {
    Future ft = Future((() {}));
    for (int i = 0; i < items.length; i++) {
      ft = ft.then((_) {
        return Future.delayed(
          const Duration(milliseconds: 150),
          () {
            _animatedItems.add(items[i]);
            keyList.currentState!.insertItem(
              _animatedItems.length - 1,
            );
          },
        );
      });
    }
  }
}
