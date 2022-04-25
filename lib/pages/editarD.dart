import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/styles/colors/colors_views.dart';

void main() {
  runApp(const editarrD());
}

class editarrD extends StatelessWidget {
  const editarrD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool value = false;
    bool visible = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorSelect.txtBoHe,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: 'back',
            color: ColorSelect.paginatorNext,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 220,
                      child: Text(
                        'Editar Dueños',
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
                      width: 90,
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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 40,
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  'Editar los datos correctamente',
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
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 420,
        width: 350,
        margin: const EdgeInsets.only(top: 40),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 2, bottom: 5),
              child: const Text(
                'Nombre del dueño',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 350,
              height: 70,
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: ' ',
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
              margin: const EdgeInsets.only(left: 2, bottom: 5),
              child: const Text(
                'Correo electronico',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 350,
              height: 70,
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '',
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
              margin: const EdgeInsets.only(left: 2, bottom: 5),
              child: const Text(
                'Numero telefonico',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 350,
              height: 70,
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '',
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
              margin: const EdgeInsets.only(left: 2, bottom: 5),
              child: const Text(
                'Dirección del dueño',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 350,
              height: 70,
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '',
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
          ],
        ),
      ),
      Container(
        width: 340,
        height: 50,
        margin: const EdgeInsets.only(bottom: 10, top: 140),
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
            'Guardar datos',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    ]);
  }
}
