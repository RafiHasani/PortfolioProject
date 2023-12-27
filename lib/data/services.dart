import 'package:get/get.dart';

class Services extends GetConnect {

  Future<void> fetchResume() async {
    final response = await get(
        'https://drive.google.com/file/d/1_peaaAm1do_ViC20gMOflsCqmJse5J_2/view?usp=sharing');

    if (response.statusCode == 200) {}
  }
}
