import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

//
// Widget para representar el estado de carga de una sección de tarjetas de películas, esto se hace
// usando Skeleton.
//
// numberItems - números de tarjetas a dibujar dentro de la sección.
//
class MovieCardSectionLoading extends StatelessWidget {
  const MovieCardSectionLoading({
    super.key,
    required this.numberItems,
  });

  final int numberItems;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: _getSkeletonCards(context, numberItems: numberItems),
    );
  }

  List<Widget> _getSkeletonCards(BuildContext context,
      {required int numberItems}) {
    List<Widget> listWidget = [];

    Size size = MediaQuery.of(context).size;

    for (var i = 0; i < numberItems; i++) {
      listWidget.add(
        SkeletonItem(
          child: AspectRatio(
            aspectRatio: 0.5,
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 0.7,
                    child: SkeletonAvatar(
                      style: SkeletonAvatarStyle(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  SkeletonParagraph(
                    style: SkeletonParagraphStyle(
                        lines: 2,
                        spacing: 6,
                        lineStyle: SkeletonLineStyle(
                          height: 10,
                          minLength: MediaQuery.of(context).size.width / 2,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return listWidget;
  }
}
