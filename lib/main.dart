import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seo_renderer/helpers/renderer_state.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

void main() {
  runApp(
    RobotDetector(
      child: MaterialApp(
        home: MyApp(), // Work well !!!!!!!!!!!!!!!!!!!
        // home: MyApp2(), // Not Working ??????????????????????
        navigatorObservers: [seoRouteObserver],
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // With Image.memory()..
            ImageRenderer(
              alt: 'Dot',
              child: Image.memory( // Dot.
                base64Decode(
                  'iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==',
                ),
              ),
            ),
            const TextRenderer(
              style: TextRendererStyle.paragraph,
              text:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            // Without Image.memory()..
            // Only TextRenderer
            TextRenderer(
              style: TextRendererStyle.paragraph,
              text:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
