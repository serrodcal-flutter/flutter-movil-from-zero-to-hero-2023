import 'package:flutter/material.dart';

class UIConstrolsScreen extends StatelessWidget {
  static const name = 'ui_control_screen';

  const UIConstrolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = false;
  Transportation selectedTransportation = Transportation.car;
  bool hasBreakfast = false;
  bool hasLunch = false;
  bool hasDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Developer Mode'),
          subtitle: const Text('Additional controls'),
          onChanged: (value) => setState(
            () {
              isDeveloper = !isDeveloper;
            },
          ),
        ),
        ExpansionTile(
          title: const Text('Transportation Mode'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Traveling by Car'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.car;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Traveling by Boat'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.boat;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Traveling by Plane'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.plane;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Traveling by Submarine'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.submarine;
                },
              ),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Breakfast?'),
          value: hasBreakfast,
          onChanged: (value) => setState(
            () {
              hasBreakfast = !hasBreakfast;
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('Lunch?'),
          value: hasLunch,
          onChanged: (value) => setState(
            () {
              hasLunch = !hasLunch;
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('Dinner?'),
          value: hasDinner,
          onChanged: (value) => setState(
            () {
              hasDinner = !hasDinner;
            },
          ),
        ),
      ],
    );
  }
}
