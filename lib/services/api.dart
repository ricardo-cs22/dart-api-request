// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http ;

// class Apiweb extends StatelessWidget {
//   const Apiweb({super.key});

  
//   Future<list> users() async
//   {
//     var url = Uri.parse('http://localhost:3000/info');
//     var response = await http.get(url);
//     if(response.statusCode ==200){
//       return jsonDecode(utf8.decode(response.bodyBytes));
//     }else{
//       throw Exception('erro ao carregar dados do servidor');
//     }


//   }


//   @override
//   Widget build(BuildContext context) {
    
//     throw UnimplementedError();
//   }
//   }