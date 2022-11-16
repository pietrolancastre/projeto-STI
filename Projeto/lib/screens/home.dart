import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:projeto/globals.dart' as globals;
import '../controller_bindings.dart';
import 'album.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _albumController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: '0',
              labelText: 'Digite um número de 1 a 4'
            ),
            validator: (String? value) {
              if (value != null){
                if (value == 1){
                  globals.pagina = '1';
                }
                else if (value == 2){
                  globals.pagina = '2';
                }
                else if (value == 3){
                  globals.pagina = '3';
                }
                else if (value == 4){
                  globals.pagina = '4';
                }
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Get.to(Album(), binding: ControllerBindings());
              },
                  child: const Text('Album 1')),
            ]
          ),
        ],
      ),
    );
  }
}
