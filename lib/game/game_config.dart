import 'package:flutter/material.dart';

import '../app/arcade_stage.dart';
import '../app/game_api.dart';
import '../core/game_rules.dart';
import 'arena_engine.dart';
import 'arena_view.dart';
import 'rules.dart';

final gameConfig = GameConfig(
  gameId: 'game-071-zombie-survival-arena',
  title: const ['Zombi Hayatta Kalma Arenası', 'Zombie Survival Arena', 'Zombie-Überlebensarena', 'Arena de Supervivencia Zombi', 'Arène de Survie Zombie'],
  tagline: const ['Zombi dalgalarına karşı ayakta kal!', 'Survive wave after wave of zombies!', 'Überlebe die Zombiewellen!', '¡Sobrevive a las oleadas zombi!', 'Survivez aux vagues de zombies !'],
  seedColor: const Color(0xFF52B788),
  icon: Icons.coronavirus,
  rules: ZombieRules(),
  buildPlay: (ctx) => ArcadeStage(
    ctx: ctx,
    create: () => ArenaSim((ctx.generated as GeneratedLevel<ArenaLevel>).puzzle),
    paint: paintArena,
    sound: arenaSound,
    boosterIcon: Icons.bolt,
    boosterLabel: (l) => l == 'tr' ? 'Şok dalgası' : 'Shockwave',
    howTo: const ['Ekranın herhangi bir yerine basılı tutup parmağını kaydır: sanal joystick ile hareket et. Saldırı otomatik.', 'Hold anywhere and slide your finger: a virtual joystick moves you. Attacks are automatic.', 'Irgendwo halten und ziehen: virtueller Joystick. Angriffe automatisch.', 'Mantén pulsado y desliza: joystick virtual. Ataque automático.', 'Maintenez et glissez : joystick virtuel. Attaque automatique.'],
  ),
  tutorial: const [
    TutorialStep(Icons.open_with, ['Ekranın herhangi bir yerine basılı tutup parmağını kaydır: sanal joystick ile hareket et. Saldırı otomatik.', 'Hold anywhere and slide your finger: a virtual joystick moves you. Attacks are automatic.', 'Irgendwo halten und ziehen: virtueller Joystick. Angriffe automatisch.', 'Mantén pulsado y desliza: joystick virtual. Ataque automático.', 'Maintenez et glissez : joystick virtuel. Attaque automatique.']),
    TutorialStep(Icons.diamond, ['Kristalleri topla, seviye atladıkça güçlen.', 'Collect gems and power up as you level.', 'Kristalle sammeln und stärker werden.', 'Recoge gemas y mejora.', 'Ramassez des gemmes pour monter en niveau.']),
    TutorialStep(Icons.warning, ['Turuncu zombiler patlar; kırmızı halkadan uzak dur.', 'Orange zombies explode; stay out of the red ring.', 'Orange Zombies explodieren.', 'Los zombis naranjas explotan.', 'Les zombies orange explosent.']),
  ],
);
