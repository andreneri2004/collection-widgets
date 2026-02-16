import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Botões')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final String nameButton = 'Botão';
    final color = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('$nameButton Elevated'),
            ),

            ElevatedButton(
              onPressed: null,
              child: Text('$nameButton Elevated Desativado'),
            ),

            ElevatedButton.icon(
              onPressed: () {},
              label: Text('$nameButton Elevated Icon'),
              icon: const Icon(Icons.access_alarm_rounded),
            ),

            FilledButton(onPressed: () {}, child: Text('$nameButton Filled')),

            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.bug_report),
              label: Text('$nameButton Filled Icon'),
            ),

            OutlinedButton(
              onPressed: () {},
              child: Text('$nameButton Outlined'),
            ),

            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.auto_mode_outlined),
              label: Text('$nameButton Outlined Icon'),
            ),

            TextButton(onPressed: () {}, child: Text('$nameButton Text')),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm),
              label: Text('$nameButton Text Icon'),
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.access_alarm),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(color.primary),
                iconColor: WidgetStateProperty.all(color.onPrimary),
              ),
            ),

            _CustomButtom(),
          ],
        ),
      ),
    );
  }
}

class _CustomButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Custom Button',
              style: TextStyle(color: colors.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
