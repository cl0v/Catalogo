import 'package:nutri/constants/global.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
/*

Project Console: https://console.firebase.google.com/project/catalog-a7a70/overview
Hosting URL: https://catalog-a7a70.web.app
*/
class WhatsAppLauncherService {
  final phone = '5533998525199';

  void launch(String id) async {
    // TODO: Quando tocar em enviar mensagem, enviará o link com a url
    //https://api.whatsapp.com/send?phone=5533998525199&text=site.com%2Forder%2Fdisadsauhasduhasd
    //Mostrando os detalhes do pedido
    //https://api.whatsapp.com/send?phone=5533998525199&text=seu%20pedido%20%C3%A9%20sdauhdsuash
    var url = //TODO: Corrigir bug
        "https://api.whatsapp.com/send?phone=$phone&text=$siteUrl/\#/order/$id";
    await launcher.canLaunch(url)
        ? await launcher.launch(url)
        : throw 'Could not launch $url';
  }
}
