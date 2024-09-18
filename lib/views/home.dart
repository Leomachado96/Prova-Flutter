import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:prova_flutter/views/principal.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  String? login;
  String? senha;
  MyHomePage? home;

  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.home != null) {
      _titleController.text = widget.home!.login!;
      _descriptionController.text = widget.home!.senha!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '*Email não preenchido!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '*Senha não preenchida!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Principal()),
                      );
                    },
                    child: Text('Entrar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
