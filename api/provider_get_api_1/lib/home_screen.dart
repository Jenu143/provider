import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_get_api_2/Api/get_api.dart';
import 'package:provider_get_api_2/model/api_model.dart';
import 'package:provider_get_api_2/provider/get_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetApiProvider getApiProvider = GetApiProvider();

  @override
  void initState() {
    getApiProvider = Provider.of<GetApiProvider>(context, listen: false);
    getApiProvider.getApiProvider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GetApiProvider>(
        builder: (context, data, child) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${data.customApiModel.data?.data.adid.admobOpenad}"),
            ],
          ),
        ),
      ),
    );
  }
}
