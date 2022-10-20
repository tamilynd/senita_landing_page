import 'package:flutter/material.dart';
import 'package:landing_page/screens/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_palette/flutter_palette.dart';
// Amplify Flutter Packages
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Create a color palette with a set of pre-defined colors.
    const colorPalette = ColorPalette(<ColorModel>[
      RgbColor(0, 0, 0), // Black
      RgbColor(48, 41, 31), // Dark Grey
      RgbColor(77, 63, 40), // Brown
      RgbColor(172, 167, 161), // Middle Grey
      RgbColor(200, 162, 135), // Darker Tan
      RgbColor(207, 180, 172), // Lighter Tan
      RgbColor(235, 235, 235), // Light Grey
      RgbColor(255, 251, 245), // Off White
      RgbColor(255, 255, 255), // White
    ]);

    return MaterialApp(
        title: 'Senita - Employee Engagement',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.cairoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: Scaffold(body: PageView(children: const [HomeView()])));
  }
}

class SenitaLandingPage extends StatefulWidget {
  const SenitaLandingPage({
    super.key,
    this.color = const Color(0xFFFFE306),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  State<SenitaLandingPage> createState() => _SenitaLandingPageState();
}

class _SenitaLandingPageState extends State<SenitaLandingPage> {
  double _size = 1.0;

  void grow() {
    setState(() { _size += 0.1; });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      transform: Matrix4.diagonal3Values(_size, _size, 1.0),
      child: widget.child,
    );
  }

  @override
  initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {

    // Add any Amplify plugins you want to use
    final authPlugin = AmplifyAuthCognito();
    await Amplify.addPlugin(authPlugin);

    // You can use addPlugins if you are going to be adding multiple plugins
    // await Amplify.addPlugins([authPlugin, analyticsPlugin]);

    // Once Plugins are added, configure Amplify
    // Note: Amplify can only be configured once.
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint("Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
}