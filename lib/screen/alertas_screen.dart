import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertasScreen extends StatelessWidget {
  const AlertasScreen({super.key});
  static const String routeName = '/alertas';

  Widget adaptiveAction(
      {required BuildContext context,
      required VoidCallback onPressed,
      required Widget child}) {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: onPressed, child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alertas'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.red.withOpacity(0.5),
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Alerta'),
                        content: const Text('Contenido de la alerta'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Aceptar'),
                          ),
                        ],
                      );
                    });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  showCupertinoDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: const Text('Alerta Cupertino'),
                          content: const Text('Contenido de la alerta'),
                          actions: [
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancelar'),
                            ),
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Aceptar'),
                            ),
                          ],
                        );
                      });
                },
                child: const Text('Mostrar alerta cupertino'),
              ),
              TextButton(
                onPressed: () {
                  showAdaptiveDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog.adaptive(
                          title: const Text('Alerta adaptativa'),
                          content: const Text('Contenido de la alerta'),
                          actions: [
                            adaptiveAction(context: context, onPressed: () {
                              Navigator.of(context).pop();
                            }, child: const Text('Cancelar')),
                            adaptiveAction(context: context, onPressed: () {
                              Navigator.of(context).pop();
                            }, child: const Text('Aceptar')),
                          ],
                        );
                      });
                },
                child: const Text('Mostrar alerta adaptativa'),
              ),
            ],
          ),
        ));
  }
}
