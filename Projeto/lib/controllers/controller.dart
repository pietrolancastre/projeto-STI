import 'dart:convert';
import '';
import 'package:projeto/globals.dart' as globals;
import 'package:get/get.dart';
import 'package:projeto/models/album_model.dart';
import 'package:http/http.dart' as http;
import '../screens/home.dart';

class Controller1 extends GetxController{
  var photoList = <AlbumModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit(){
    super.onInit();
    fetchAlbumData();
  }

  Future<void> fetchAlbumData() async {
    String urlBase = 'https://jsonplaceholder.typicode.com/photos/';
    String urlEnd = globals.pagina;
    String url = urlBase + urlEnd;
    final response = await http.get(Uri.parse(url));

        if(response.statusCode == 200){
          AlbumModel _albumModel = AlbumModel.fromJson(jsonDecode(response.body));

          photoList.add(AlbumModel(
              title: _albumModel.title,
              url: _albumModel.url,
              thumbnailUrl: _albumModel.thumbnailUrl,
              id: _albumModel.id,
              albumId: _albumModel.albumId),
          );

          isLoading.value = true;
    }else{
          Get.snackbar('Error Loading data!', 'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
        }
  }
}