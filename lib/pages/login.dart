import 'package:flutter/material.dart';
import 'package:mvp_all/pages/editarD.dart';
import 'package:mvp_all/pages/resgistro.dart';
import 'package:mvp_all/styles/colors/colors_views.dart';

void main() {
  runApp(const loginn());
}

class loginn extends StatelessWidget {
  const loginn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool visible = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorSelect.txtBoHe,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: ColorSelect.paginatorNext,
            tooltip: 'back',
            onPressed: () {
              Navigator.pop(context);
            },
          ), //IconButton
          title: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 160,
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/splash.png',
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text(
                    'Inicia sesión con tu cuenta para continuar',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorSelect.btnTextBo1,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const ContentBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContentBody extends StatefulWidget {
  const ContentBody({Key? key}) : super(key: key);

  @override
  State<ContentBody> createState() => _ContentBodyState();
}

class _ContentBodyState extends State<ContentBody> {
  bool value = false;
  int val = -1;
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 20, bottom: 5, top: 40),
          child: const Text(
            'Correo electrónico',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 360,
          height: 70,
          margin: const EdgeInsets.only(bottom: 10),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Email Addres',
              labelStyle: const TextStyle(
                color: ColorSelect.btnTextBo1,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: ColorSelect.btnTextBo1,
                  width: 1.5,
                ),
              ),
            ),
            style: const TextStyle(
              fontSize: 16,
              color: ColorSelect.btnTextBo1,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 20, bottom: 5),
          child: const Text(
            'Contraseña',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 360,
          height: 70,
          child: TextFormField(
            obscureText: visible,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: const TextStyle(
                color: ColorSelect.btnTextBo1,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: ColorSelect.btnTextBo1,
                  width: 1.5,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                },
                icon: Icon(visible ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            style: const TextStyle(
              fontSize: 16,
              color: ColorSelect.btnTextBo1,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(right: 21, bottom: 10),
          child: InkWell(
            child: const Text(
              '¿Has olvidado la contraseña?',
              style: TextStyle(
                color: ColorSelect.paginatorNext,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const editarrD()));
            },
          ),
        ),
        Container(
          width: 340,
          height: 50,
          margin: const EdgeInsets.only(bottom: 10, top: 323),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: ColorSelect.btnBackgrounBo2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            child: const Text(
              'Ingresar',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  '¿Todavia no tienes una cuenta? ',
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorSelect.btnblack,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              InkWell(
                child: const Text(
                  'Regístrate',
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorSelect.paginatorNext,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const registroo()));
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
