import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  int CPF = 0;
  int senha = 0;

  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SizedBox(
          height: double.maxFinite,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [TextField(
              //Retorna o valor que digitou no campo CPF
              onChanged: (value) {
                // Printando valor no terminal
                print(value);
                // Convertendo a string para inteiro e CPF recebe int.parse
                CPF = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'CPF',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )
                  )
              ),
            ),

              SizedBox(height: 20),

              TextField(
                //retornam o valor digitado no campo senha
                onChanged: (value) {
                  // printar no terminal
                  print(value);
                  //converter a string em um inteiro e atribuir o valor
                  senha = int.parse(value);
                },
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),

                        )
                    )

                ),
              ),

              SizedBox(height: 25),

              RaisedButton(
                onPressed: () {
                  if (CPF == 8888) {
                    print('== CPF $CPF(v) Senha do Usuario...? ==');
                  } else if (CPF != 8888) {
                    print('CPF INVALIDO, TENTE NOVAMENTE!!!');
                  }
                  if (CPF == 8888 && senha == 1528) {
                    print('(Senha**28)  CONECTADO, Bem Vindo!!!');
                  } else {
                    print('SENHA INVALIDA!!! TENTE NOVAMENTE!!!!');
                  }
                },
                color: Colors.blueAccent,
                child: Text('ACESSAR'),
                textColor: Colors.white,
              )


            ],
          ),
        ),
      ),
    );
  }
}


