import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_version_card/providers/movies_provider.dart';

import '../widgets/custom_input_field.dart';

class RegisterMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: const Text('Guardar'))),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        //* imprimir valores del formulario
                        moviesProvider.registrarPelicula("query");
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
