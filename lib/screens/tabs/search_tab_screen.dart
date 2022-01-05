import 'package:bus_tracking_task/controllers/search_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchTabScreen extends GetView<SearchController> {
  static const String id = "/search_screen";
  const SearchTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obj = Get.put(SearchController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your trip planner'),
        ),
        body: Obx(
          () => obj.dataAvailable
              ? Container(
                  child: Center(
                    child: Text(
                      obj.tripList.length.toString(),
                    ),
                  ),
                )
              : Container(
                  child: const Center(
                    child: Text(".... waiting ... "),
                  ),
                ),
        ));
  }
}

class _SourceDestinationForm extends StatefulWidget {
  @override
  _SourceDestinationFormState createState() => _SourceDestinationFormState();
}

class _SourceDestinationFormState extends State<_SourceDestinationForm> {
  @override
  Widget build(BuildContext context) {
    return SearchTrapWidget();
  }
}

class SearchTrapWidget extends StatelessWidget {
  const SearchTrapWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(12)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextFormField(
                  textInputAction: TextInputAction.search,
                  // controller:/* presenter.sourceTextController*/,
                  onTap: () {},
                  onFieldSubmitted: (entry) {},
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.my_location),
                  ),
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: TextFormField(
                        //controller: presenter.destinationTextController,
                        onTap: () {},
                        onFieldSubmitted: (entry) {
                          /// xxx
                          return;
                        },
                        textInputAction: TextInputAction.search,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.near_me_outlined)),
                      ))
                ],
              )
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.arrow_2_squarepath)),
        ]));
  }
}

class _ListTrapsOptions {}

class _ListTrapsOptionsState {}
