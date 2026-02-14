import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar';

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: Text('Mostrando SnackBar'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Confirmação'),
        content: Text(
          'Nostrud proident eu tempor quis consectetur. Minim occaecat cupidatat nisi nulla exercitation proident ex cillum consectetur. Esse laboris deserunt quis occaecat culpa consequat velit mollit et minim. Minim do voluptate dolor cupidatat est nulla nostrud magna mollit. Esse in excepteur cupidatat magna eu proident ea consequat minim ad esse aute. Labore minim nisi quis sint quis incididunt exercitation eiusmod elit deserunt proident.',
        ),
        actions: [
          TextButton(onPressed: context.pop, child: Text('Confirmar')),
          TextButton(onPressed: context.pop, child: Text('Cancelar')),
        ],
      ),
    );
  }

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar e Diálogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'Cupidatat laboris officia nulla id fugiat. Sit tempor labore cupidatat labore sit cupidatat eu consectetur tempor eu culpa. Aute ea amet anim exercitation anim veniam occaecat anim nostrud quis velit consectetur sunt. Reprehenderit anim excepteur duis labore non. Non consequat consectetur incididunt adipisicing cillum dolor culpa nulla.',
                    ),
                  ],
                );
              },
              child: Text('Licenças'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar Diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: Text('Mostrar Snack'),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
