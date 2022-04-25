import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mvp_all/pages/login.dart';
import 'package:mvp_all/pages/resgistro.dart';
import 'package:mvp_all/styles/colors/colors_views.dart';

void main() {
  runApp(const homeinit());
}

class homeinit extends StatelessWidget {
  const homeinit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 180,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 100),
                  child: Image.asset(
                    'assets/images/splash.png',
                    width: 300,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 48,
                margin: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 60,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(children: const [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Icon(Ionicons.logo_google),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text("Continuar con Google",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center),
                  ]),
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    alignment: Alignment.centerLeft,
                    primary: ColorSelect.btnTextBo2,
                    fixedSize: const Size(50, 50),
                    backgroundColor: Color(0xff3169f5),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 48,
                margin: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 20,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(children: const [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Icon(Icons.facebook),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text("Continuar con Facebook",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center),
                  ]),
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    alignment: Alignment.centerLeft,
                    primary: ColorSelect.btnTextBo2,
                    fixedSize: const Size(50, 50),
                    backgroundColor: ColorSelect.buttoof,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 48,
                margin: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 30,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const registroo()));
                  },
                  child: Row(children: const [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Icon(
                      Icons.mail,
                      color: ColorSelect.buttoog,
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text("Registrarse con e-mail",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff64686f)),
                        textAlign: TextAlign.center),
                  ]),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(
                            width: 3.0,
                            style: BorderStyle.solid,
                            color: ColorSelect.buttoog)),
                    primary: ColorSelect.btnTextBo2,
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 100),
                child: const Text(
                  'Entrar como invitado',
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorSelect.paginatorNext,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 8),
                child: const Text(
                  'Entrar como vendedor',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xf76aa757),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 100),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    child: const Text(
                      '¿Ya tienes una cuenta? ',
                      style:
                          TextStyle(fontSize: 14, color: ColorSelect.btnblack),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  InkWell(
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorSelect.paginatorNext,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const loginn()));
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
