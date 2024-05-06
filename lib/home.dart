
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Propiedades de TextFiel'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color:  const Color(0xfffcdb4db),
                child: Column(
                  children: [
                    TextField(
                    onChanged: (data){
                      print(data);
                      setState(() {
                        this.data = data;
                      });
                    },
                    autocorrect: true,
                  ), 
                  Text(data)
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: const Color(0xfffffc8dd),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.send),
                    hintText:'Mensaje',
                    counterText: '0 caracteres' 
                    ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: const Color(0xfffffafcc),
                child: const TextField(
                  showCursor: false,
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: const Color(0xfffbde0fe),
                child: const TextField(
                  maxLines: 2,
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: const Color(0xfffa2d2ff),
                child: const TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.send),
                    hintText:'No puedes modificar este TextFiel',
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
