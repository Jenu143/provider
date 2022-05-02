import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_get_api/model/api_model.dart';
import 'package:provider_get_api/provider/get_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetProvider getProvider = GetProvider();

  @override
  void initState() {
    getProvider = Provider.of<GetProvider>(context, listen: false);

    getProvider.getApiProvider();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: Builder(
            builder: (context) {
              return Center(
                child: Consumer<GetProvider>(
                  builder: (context, textValu, child) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Data : ${textValu.customModel.data?.page}"),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
