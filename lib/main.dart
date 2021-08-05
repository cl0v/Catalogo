import 'package:flutter/material.dart';

import 'app.dart';
//https://www.youtube.com/watch?v=CAYa9AQGtdU hosting deploy


// Terminar de testar o envio do link e abrir o link na página da order

// A pessoa recebe um link catalogo.com/pedidos/iddopedidoaqui
// Quando a pessoa abre um link mostra uma nota falando o que a pessoa escolheu

//Quando o lojista toca no link ele pode marcar como pago e entregue
// (Ele será barrado pela tela de login antes)

// Um delivery de lojas, as pessoas cadastram os produtos e os produtos
// sao da regiao, qualquer coisa dentro da cidade (Tipo um compra de vizinhos
// (ESTABELECIMENTO APENAS, o pagamento é feito em cartao tambem))

//Comecar cadastrando os produtos de mae, depois cadastrar os de vó e ai
//expandir

// App de delivery com lojas cadastradas

/*
Cartao de visita de mae
(
  Apenas um texto e um botao para pagar o valor da consulta
  e falar com mae no whats
  )
*/

// Pensa direito na evolucao do app, pq ele pode ser um cartao de visitas,
//mas tambem pode ser uma loja online de suplementos

// comecar por mae, depois liberar p outras pessoas
// implementar a feature mais rapida de fazer (pensar em pagamento ou pessoas)
/*


Pass arguments to a named route 
Botao de compartilhar precisa
  nutri.com/products/ProductID
*/

void main() {
  runApp(AppComponent());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: ProdutsPage());
//   }
// }
