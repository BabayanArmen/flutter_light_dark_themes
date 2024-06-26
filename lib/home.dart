import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themes/app_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
            value: isDarkMode,
            onChanged: (bool value) {
              switchTheme();
            },
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(context.watch<AppProvider>().counterValue.toString()),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  onPressed: () => {
                    context.read<AppProvider>().inc()
                  },
                  child: Text(
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary
                    ),
                    "+",
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  onPressed: () => {
                    context.read<AppProvider>().dec()
                  },
                  child: Text(
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary
                    ),
                    "-"
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  onPressed: () => {
                    switchTheme()
                  },
                  child: Text(
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary
                    ),
                    "Change Theme"
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

  void switchTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
    context.read<AppProvider>().changeTheme(isDarkMode);
  }
}
