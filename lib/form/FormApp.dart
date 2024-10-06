import 'package:flutter/material.dart';
import 'package:mini_projeto_01/form/components/Input.dart';
import 'package:mini_projeto_01/form/components/Select.dart';

final _formKey = GlobalKey<FormState>();

class FormApp extends StatelessWidget {
  const FormApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal info",
                    style: TextStyle(fontSize: 20),
                  ),
                  Input(
                    isPassword: false,
                    placeholder: 'First name',
                  ),
                  Input(
                    isPassword: false,
                    placeholder: 'Last name',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Input(
                          isPassword: false,
                          placeholder: 'Birthday',
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Input(
                          isPassword: false,
                          placeholder: 'Social Secutiry',
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Residence address",
                    style: TextStyle(fontSize: 20),
                  ),
                  Input(
                    isPassword: false,
                    placeholder: 'Address',
                  ),
                 
                  Row(
                    children: [
                      Expanded(
                        child: Input(
                          isPassword: false,
                          placeholder: 'City',
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Select(
                          isPassword: false,
                          placeholder: 'State',
                        ),
                      ),
                    ],
                  ),
                   Row(
                    children: [
                      Expanded(
                        child: Input(
                          isPassword: false,
                          placeholder: 'ZIP code',
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Select(
                          isPassword: false,
                          placeholder: 'Country',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
