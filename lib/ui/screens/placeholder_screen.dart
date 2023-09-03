import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Placeholder());
  }
}

class FavoritesSreen extends StatelessWidget {
  const FavoritesSreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Избранное')),
      body: const Center(
        child: Text('Это заполнительный экран. Здесь может быть ваш контент.'),
      ),
    );
  }
}

class CallsSreen extends StatelessWidget {
  const CallsSreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Заполнительный экран')),
      body: const Center(
        child: Text('Это заполнительный экран. Здесь может быть ваш контент.'),
      ),
    );
  }
}

class DevicesSreen extends StatelessWidget {
  const DevicesSreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Заполнительный экран')),
      body: const Center(
        child: Text('Это заполнительный экран. Здесь может быть ваш контент.'),
      ),
    );
  }
}

class FolderWithChatsSreen extends StatelessWidget {
  const FolderWithChatsSreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Заполнительный экран')),
      body: const Center(
        child: Text('Это заполнительный экран. Здесь может быть ваш контент.'),
      ),
    );
  }
}
