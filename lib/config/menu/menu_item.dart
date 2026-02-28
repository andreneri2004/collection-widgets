import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Contador',
    subtitle: 'Contador com o Riverpod',
    link: '/counter_river',
    icon: Icons.control_point_duplicate_rounded,
  ),
  MenuItem(
    title: 'Animações',
    subtitle: 'Animações de Flutter',
    link: '/animated',
    icon: Icons.play_arrow_outlined,
  ),
  MenuItem(
    title: 'Botões',
    subtitle: 'Alguns Botões de Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Cards',
    subtitle: 'Um Card de Flutter',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progresso',
    subtitle: 'Um Progresso de Flutter',
    link: '/progress',
    icon: Icons.sync,
  ),
  MenuItem(
    title: 'Snackbar',
    subtitle: 'Um Snackbar de Flutter',
    link: '/snackbar',
    icon: Icons.notifications,
  ),
  MenuItem(
    title: 'Scroll Infinito',
    subtitle: 'Um Scroll Infinito de Flutter',
    link: '/infinite_scroll',
    icon: Icons.inbox_outlined,
  ),
  MenuItem(
    title: 'Tutorial',
    subtitle: 'Um Tutorial de Flutter',
    link: '/app_tutorial',
    icon: Icons.book_outlined,
  ),
  MenuItem(
    title: 'UI Controls',
    subtitle: 'Um UI Controls de Flutter',
    link: '/ui_controls',
    icon: Icons.settings,
  ),
  MenuItem(
    title: 'Mudança de Tema',
    subtitle: 'Um Mudança de Tema de Flutter',
    link: '/theme_changer',
    icon: Icons.palette_outlined,
  ),
];
