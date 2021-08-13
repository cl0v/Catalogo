import 'dart:html';

import 'package:url_launcher/url_launcher.dart' as launcher;
// TeslaCoil : Eles tem o codigo pra esconder app, procurar ele pronto
// https://github.com/teslacoil

//Fechar as abas pois juntar muitas abas atrapalha a pesquisa

/*
https://www.youtube.com/watch?v=h-igXZCCrrc
X https://www.google.com/search?q=automatic+whatsapp+messages+with+cloud+function&client=safari&rls=en&sxsrf=ALeKk00xqspnGLsbMrbs9SUuPQrK7kcfMA%3A1628694494448&ei=3ucTYazUGqLf1sQPpsKDoAY&oq=automatic+whatsapp+messages+with+cloud+function&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsAM6BAghEApKBAhBGABQ_1JY92Bgw3doAnACeACAAc8BiAHrCpIBBjAuMTAuMZgBAKABAcgBCMABAQ&sclient=gws-wiz&ved=0ahUKEwisu6fmn6nyAhWir5UCHSbhAGQQ4dUDCA0&uact=5
*/

//TODO: Ta rolando um bug que nao ta enviando a mensagem pra pessoa corretamente

class WhatsappMessageLauncherService {
  launch(String phone, String message) async {
    var url = "https://api.whatsapp.com/send?phone=$phone&text=$message";
    await launcher.canLaunch(url)
        ? await launcher.launch(url)
        : throw 'Could not launch $url';
  }

  //TODO: Nao está enviando corretamente a mensagem com o link e o id
  //TODO: Enviar mensagem de zap por cloud functions

  launchOrder(String phone, String orderId) async {
    var site = window.location.href;
    final url =
        "https://api.whatsapp.com/send?phone=55$phone&text=$site/\#/order/$orderId";
    await launcher.canLaunch(url)
        ? await launcher.launch(url)
        : throw 'Could not launch $url';
  }
}
