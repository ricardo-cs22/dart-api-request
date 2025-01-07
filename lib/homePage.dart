import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List> users() async {
    var url = Uri.parse('http://localhost:3000/alunos/');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('erro ao carregar dados do servidor');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: const Text('ola'),
      ),
      body: FutureBuilder<List>(
          future: users(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('erro'),
              );
            }
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index]["nome"]),
                    );
                  });
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
