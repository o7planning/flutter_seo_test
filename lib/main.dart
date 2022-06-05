import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  runApp(
    RobotDetector(
      child: MaterialApp(
       //home: MyApp(), // Work well !!!!!!!!!!!!!!!!!!!
       home: MyApp2(), // Not Working ??????????????????????
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
            const SizedBox(height: 150),
            // With Image.memory()..
            ImageRenderer(
              alt: 'Dot',
              child: Image.memory(
                // Dot.
                base64Decode(
                  'iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==',
                ),
              ),
            ),
            const TextRenderer(
              style: TextRendererStyle.header1,
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
            SizedBox(height: 150),
            // Without Image.memory()..
            // Only TextRenderer
            TextRenderer(
              style: TextRendererStyle.header1,
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry 2.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
