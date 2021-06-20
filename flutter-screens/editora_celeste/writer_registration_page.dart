import 'package:components_venver/material.dart';
import 'package:flutter/material.dart';

class WriterRegistrationPage extends StatefulWidget {
  @override
  _WriterRegistrationPageState createState() => _WriterRegistrationPageState();
}

class _WriterRegistrationPageState extends State<WriterRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar-se"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.perm_identity_outlined, size: 50,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  tField("Nome artístico", TextFieldTypes.name),
                  tField("Email", TextFieldTypes.email),
                  tField("Telefone", ),
                  tField("Data de nascimento", ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: OwButton(
        margin: EdgeInsets.all(8),
        labelText: "Criar conta",
        onPressed: () {
          
        },
      ),
    );
  }

  Widget tField(String name, [TextFieldType fieldType]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        OwTextField(
          fieldType: fieldType,
          hintText: name,
          margin: EdgeInsets.only(bottom: 10),
        ),
      ],
    );
  }
}