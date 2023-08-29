import 'package:boilerplate/common/widget/my_buttons/my_loader_elevated_button.dart';
import 'package:boilerplate/presentation/home/redux/home_state.dart';
import 'package:boilerplate/presentation/home/view_model/home_view_model.dart';
import 'package:boilerplate/service/di.dart';
import 'package:boilerplate/theme/my_colors.dart';
import 'package:boilerplate/theme/text_styling.dart';
import 'package:boilerplate/utils/app_constants/my_padding_egde.dart';
import 'package:boilerplate/utils/enums/status_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';


class MyHomePage extends StatefulWidget {
  static const routeName = 'home-screen';

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loader = false;

  final model = getIt<HomeViewModel>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyleCustom.of(context);
    return StoreConnector<HomeState, HomeState>(
      converter: (store) => store.state,
      onInit: (state) {
        model.api();
      },
      builder: (context, data) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home Page"),
          ),
          body: Padding(
            padding: MyPaddingEdge.scaffoldSidePadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (data.homeApiStatus == ResponseStatus.loading) ...[
                  const Text('loading'),
                ],
                if (data.homeApiStatus == ResponseStatus.error) ...[
                  const Text('error'),
                  Text(data.viewError!),
                ],
                if (data.homeApiStatus == ResponseStatus.success) ...[
                  const Text('sucess'),
                  Text(
                    data.viewExampleModel!.title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
                MyLoaderElvButton(
                  text: 'Loader Elevated Button',
                  loader: loader,
                  textColor: MyColors.white,
                  buttonBGColor: MyColors.primaryBlue,
                  onPressed: () {
                    setState(() {
                      loader = true;
                    });
                    Future.delayed(
                        const Duration(
                          milliseconds: 1000,
                        ), () {
                      setState(() {
                        loader = false;
                      });
                    });
                  },
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
