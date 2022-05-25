import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scai_flow/interfaces/empresas.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('lib/assets/logo.png',
                    alignment: Alignment.topCenter),
                AutofillGroup(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        autofillHints: const [AutofillHints.username],
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF1ca59a))),
                          labelText: "Usuário",
                          labelStyle: TextStyle(
                            color: Color(0xFF133257),
                          ),
                        ),
                        controller: username,
                      ),
                      const Divider(color: Colors.transparent),
                      TextFormField(
                        autofillHints: const [AutofillHints.password],
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF1ca59a))),
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Color(0xFF133257),
                          ),
                        ),
                        controller: password,
                        onEditingComplete: () =>
                            TextInput.finishAutofillContext(),
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.transparent),
                ElevatedButton(
                  onPressed: () {
                    AutofillContextAction;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Empresas()));
                  },
                  child: const Text(
                    "Entrar",
                    style: TextStyle(color: Color(0xFF133257)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
