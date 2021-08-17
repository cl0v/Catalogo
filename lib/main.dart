import 'package:flutter/material.dart';

import 'app.dart';

//O app sofrerá uma migracao para se tornar software as a product

//https://www.youtube.com/watch?v=CAYa9AQGtdU hosting deploy

/*TODO:
Junk todo
Remover as páginas desnecessarias toplevel
*/

/*
TODO: List:
 - Criar usuário (Não há necessidade de ler o usuario)
 - Criar produto no usuário
 - Ler produtos
 - Criar ordem de produto no usuário

 - Adicionar uma página de erro que irá redirecionar a pessoa para qualquer página em caso de erro ou url invalida


*/

// Product widget : https://www.youtube.com/watch?v=vCQQJ42zC58



/* // Enviar a mensagem no zap por cloud functions, será de graca se apenas joaima usar
https://firebase.google.com/products/extensions/firestore-messagebird-send-msg?hl=pt-br
https://learn.vonage.com/blog/2020/01/24/send-and-receive-sms-messages-with-firebase-functions-dr/
*/
//


// Primeiro foca no produto que é mais simples depois foca no servico >>


// App de servicoes, agendamento de horarios e coisa do tipo
// Produtos, Servicos, Entrega, calculo de media e pegar da loja o mais barato e enviar


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
/* TODO: Analise de riscos
  Focar em um plano de autorizacao do app, nao poderá mais se conectar sem autenticacao
*/

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
