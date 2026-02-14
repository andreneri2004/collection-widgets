import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls Screen')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

// ignore: constant_identifier_names
enum ValueSystems { Curricular, Tecnico, Departamental }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool requirementCurriculum = true;
  bool requirementTecnic = true;
  bool requirementDepart = false;

  ValueSystems? _selectedValueSistems = ValueSystems.Curricular;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Perifil Administrador'),
          subtitle: Text('Controle total'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),

        ExpansionTile(
          title: Text('Desafio Técnico'),
          subtitle: Text('$_selectedValueSistems'),
          children: [
            RadioGroup<ValueSystems>(
              groupValue: _selectedValueSistems,
              onChanged: (ValueSystems? value) {
                setState(() {
                  _selectedValueSistems = value;
                });
              },
              child: const Column(
                children: [
                  RadioListTile<ValueSystems>(
                    value: ValueSystems.Curricular,
                    title: Text('Análise Curricular'),
                    subtitle: Text('Curricular teste ok'),
                  ),
                  RadioListTile<ValueSystems>(
                    value: ValueSystems.Tecnico,
                    title: Text('Técnico'),
                  ),
                  RadioListTile<ValueSystems>(
                    value: ValueSystems.Departamental,
                    title: Text('Departamental'),
                  ),
                ],
              ),
            ),
          ],
        ),
        CheckboxListTile(
          title: Text('Aprovado análise curricular'),
          value: requirementCurriculum,
          onChanged: (valeu) => setState(() {
            requirementCurriculum = !requirementCurriculum;
          }),
        ),

        CheckboxListTile(
          title: Text('Aprovado no Desafio Técnico'),
          value: requirementTecnic,
          onChanged: (valeu) => setState(() {
            requirementTecnic = !requirementTecnic;
          }),
        ),

        CheckboxListTile(
          title: Text('Aprovado análise Departamental'),
          value: requirementDepart,
          onChanged: (valeu) => setState(() {
            requirementDepart = !requirementDepart;
          }),
        ),
      ],
    );
  }
}
