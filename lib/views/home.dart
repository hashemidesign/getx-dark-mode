import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_theme/controllers/app_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final AppController _appController = Get.find<AppController>();
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dark & Light"),
        actions: [
          Obx((){
            return Switch(value: _appController.isDark.value, onChanged: (state) {
              _appController.changeTheme(state);
              _appController.changeDark();
            });
          }),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Obx(() => Text(
                    '${_appController.count}',
                    style: Theme.of(context).textTheme.headline4,
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('pressed');
          _appController.increase();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
