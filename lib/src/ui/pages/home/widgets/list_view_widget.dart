import 'package:flutter/material.dart';

import 'list_tile_widget.dart';

class ListViewWidget extends StatelessWidget {

  const ListViewWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return ListView(
      children: const [
          ListTileWidget(
            title: 'Botões', 
            subTitle: 'Varios botones en Flutter', 
            location: '/buttons', 
            icon: Icons.smart_button_outlined
          ),

          ListTileWidget(
            title: 'Tarjetas', 
            subTitle: 'Un contenedor estilizado', 
            location: '/cards', 
            icon: Icons.credit_card
          ),

          ListTileWidget(
            title: 'Progress Indicators', 
            subTitle: 'Generales y controlados', 
            location: '/progress', 
            icon: Icons.refresh_rounded
          ),

          ListTileWidget(
            title: 'Snackbars y diálogos', 
            subTitle: 'Indicadores en pantalla', 
            location: '/snackbars', 
            icon: Icons.info_outline
          ),

          ListTileWidget(
            title: 'Animated container', 
            subTitle: 'Stateful widget animado', 
            location: '/animated', 
            icon: Icons.check_box_outline_blank_rounded
          ),

          ListTileWidget(
            title: 'UI Controls + Tiles', 
            subTitle: 'Una serie de controles de Flutter', 
            location: '/ui-controls', 
            icon: Icons.car_rental_outlined
          ),

          ListTileWidget(
            title: 'Introducción a la aplicación', 
            subTitle: 'Pequeño tutorial introductorio', 
            location: '/tutorial', 
            icon: Icons.accessible_rounded
          ),

          ListTileWidget(
            title: 'InfiniteScroll y Pull', 
            subTitle: 'Listas infinitas y pull to refresh', 
            location: '/infinite', 
            icon: Icons.list_alt_rounded
          ),
      ],
    );
  }
}

