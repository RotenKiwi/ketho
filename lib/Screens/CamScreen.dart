import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CamScreen extends StatefulWidget {
  const CamScreen({Key? key, required this.camera}) : super(key: key);

  final CameraDescription camera;

  @override
  State<CamScreen> createState() => _CamScreenState();
}

class _CamScreenState extends State<CamScreen> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _cameraController = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _cameraController.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the Future is complete, display the preview.
                return CameraPreview(_cameraController);
              } else {
                // Otherwise, display a loading indicator.
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Container(
                height: 190,
                width: 190,
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 3.0,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 22.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_circle_left_rounded),
              iconSize: 100,
              color: Colors.white,
            ),
            Text(
              'Back',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
