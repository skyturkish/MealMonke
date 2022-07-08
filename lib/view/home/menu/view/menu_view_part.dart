part of "menu_view.dart";

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.dynamicHeight(0.6572),
          width: context.dynamicWidth(0.2586),
          decoration: const BoxDecoration(
            color: ColorConstants.brightOrange,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(55),
              bottomRight: Radius.circular(55),
            ),
          ),
        ),
        Center(
          child: Column(
            children: MenuItems.items
                .map(
                  (item) => Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: MenuCategoryItem(item: item),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
