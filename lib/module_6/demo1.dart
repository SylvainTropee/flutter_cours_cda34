import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FormDemo());
  }
}

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isChecked = false;
  bool? radioValue = null;
  bool? radioValue2 = null;


  String? validateName(String? value){
    if(value == null || value.isEmpty){
      return "Veuillez remplir votre nom !";
    }
    if(value.length < 2){
      return "Votre nom doit contenir au moins 2 caractères !";
    }
    return null;
  }

  String? validateAge(String? value){
    if(value == null || value.isEmpty){
      return "Veuillez remplir votre age !";
    }
    if(int.parse(value) < 0){
      return "Votre age ne peut être négatif !";
    }
    return null;
  }

  String? validateJob(String? value){
    if(value == null || value.isEmpty){
      return "Veuillez remplir votre métier !";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              validator: validateName,
              decoration: InputDecoration(
                labelText: "Nom",
                hintText: "Veuillez saisir votre nom !",
              ),
            ),
            TextFormField(
              validator: validateAge,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Age",
                hintText: "Veuillez saisir votre age !",
              ),
            ),
            DropdownButtonFormField<String>(
              validator: validateJob,
              onChanged: (value) {},
              initialValue: "",
              items: [
                DropdownMenuItem(
                  child: Text("-Choisir une profession-"),
                  value: "",
                ),
                DropdownMenuItem(child: Text("Médecin"), value: "doctor"),
                DropdownMenuItem(
                  child: Text("Tueur de frelons"),
                  value: "waspKiller",
                ),
                DropdownMenuItem(child: Text("Brigand"), value: "lawless"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (checked) {
                    setState(() {
                      //if(checked != null){
                      isChecked = checked!;
                      //}
                    });
                  },
                ),
                Text("La <Form> ?"),
              ],
            ),
            Row(
              children: [
                RadioGroup(
                  onChanged: (value) {
                    setState(() {
                      radioValue = value;
                    });
                  },
                  groupValue: radioValue,
                  child: Row(children: [Radio(value: true), Text("Jour")]),
                ),
                RadioGroup(
                  onChanged: (value) {
                    setState(() {
                      radioValue = value;
                    });
                  },
                  groupValue: radioValue,
                  child: Row(children: [Radio(value: false), Text("Nuit")]),
                ),
                Radio(
                  value: true,
                  groupValue: radioValue2,
                  onChanged: (value) {
                    setState(() {
                      radioValue2 = value;
                    });
                  },
                ),
                Text("Vrai !"),
                Radio(
                  value: false,
                  groupValue: radioValue2,
                  onChanged: (value) {
                    setState(() {
                      radioValue2 = value;
                    });
                  },
                ),
                Text("Faux !"),
              ],
            ),
            OutlinedButton(onPressed: () {
              if(_formKey.currentState!.validate()){

              }
            }, child: Text("GO !")),
          ],
        ),
      ),
    );
  }
}
