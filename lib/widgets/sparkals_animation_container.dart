import 'dart:math';

import 'package:flutter/material.dart';

class SparkleSpiderAnimation extends StatefulWidget {
  const SparkleSpiderAnimation({super.key});

  @override
  State<SparkleSpiderAnimation> createState() => _SparkleSpiderAnimationState();
}

class _SparkleSpiderAnimationState extends State<SparkleSpiderAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Particle> particles = [];
  final int numParticles = 20;
  final double maxDistance = 120; // Distance to connect sparkles

  @override
  void initState() {
    super.initState();

    // Initialize particles
    for (int i = 0; i < numParticles; i++) {
      particles.add(Particle.random());
    }

    // Animation controller for continuous redraw
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 16),
    )..addListener(() {
        updateParticles();
      });

    _controller.repeat(); // infinite loop
  }

  void updateParticles() {
    for (var particle in particles) {
      particle.update();
    }
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        body: CustomPaint(
          painter:
              SpiderPainter(particles: particles, maxDistance: maxDistance),
          child: Container(),
        ));
  }
}

class Particle {
  static final Random _rand = Random();
  late Offset position;
  late Offset velocity;
  final double size;

  Particle._(this.position, this.velocity, this.size);

  factory Particle.random() {
    return Particle._(
      Offset(_rand.nextDouble() * 400, _rand.nextDouble() * 800),
      Offset((_rand.nextDouble() - 0.5) * 2, (_rand.nextDouble() - 0.5) * 2),
      _rand.nextDouble() * 3 + 2,
    );
  }

  void update() {
    position += velocity;

    // Bounce from edges
    if (position.dx < 0 || position.dx > 400) {
      velocity = Offset(-velocity.dx, velocity.dy);
    }
    if (position.dy < 0 || position.dy > 800) {
      velocity = Offset(velocity.dx, -velocity.dy);
    }
  }
}

class SpiderPainter extends CustomPainter {
  final List<Particle> particles;
  final double maxDistance;

  SpiderPainter({required this.particles, required this.maxDistance});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.grey.shade600;
    final linePaint = Paint()
      ..strokeWidth = 1.2
      ..style = PaintingStyle.stroke;

    // Draw particles
    for (var p in particles) {
      canvas.drawCircle(p.position, p.size, paint);
    }

    // Draw lines between close particles
    for (int i = 0; i < particles.length; i++) {
      for (int j = i + 1; j < particles.length; j++) {
        final p1 = particles[i].position;
        final p2 = particles[j].position;
        final distance = (p1 - p2).distance;

        if (distance < maxDistance) {
          final opacity = (1 - (distance / maxDistance)).clamp(0.0, 1.0);
          linePaint.color = Colors.grey.withOpacity(opacity);
          canvas.drawLine(p1, p2, linePaint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant SpiderPainter oldDelegate) => true;
}
