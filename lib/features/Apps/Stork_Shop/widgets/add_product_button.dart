import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stork/features/Apps/Stork_Shop/data/models/product_model.dart';
import 'package:stork/utils/constants/app_colors.dart';

class AddProductButton extends ConsumerWidget {
  final ProductModel product;
  const AddProductButton({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool expanded = false;
    return Positioned(
      bottom: 8,
      right: 8,
      child: AnimatedSize(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!expanded)
              Material(
                color: AppColors.primary,
                shape: const CircleBorder(),
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    expanded = true;
                    // ref.read(cartProvider.notifier).addProduct(product);
                    // if (1 == 0) {
                    // widget.onAdd();
                    // }
                    // setState(() => expanded = !expanded);
                  },
                  child: const SizedBox(
                    width: 36,
                    height: 36,
                    child: Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
              ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: expanded ? 1 : 0,
              child: Container(
                margin: const EdgeInsets.only(bottom: 6),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _iconButton(Icons.add, () {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text('1', style: const TextStyle(color: Colors.white)),
                    ),
                    _iconButton(Icons.remove, () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget _buildMainButton(List<ProductModel> cart) {
//   return Material(
//     color: AppColors.primary,
//     shape: const CircleBorder(),
//     child: InkWell(
//       customBorder: const CircleBorder(),
//       onTap: () {
//         // if (1 == 0) {
//         // widget.onAdd();
//         // }
//         // setState(() => expanded = !expanded);
//       },
//       child: const SizedBox(
//         width: 36,
//         height: 36,
//         child: Icon(Icons.add, color: Colors.white, size: 20),
//       ),
//     ),
//   );
// }

// Widget _buildExpanded(List<ProductModel> cart, expanded) {
//   return AnimatedOpacity(
//     duration: const Duration(milliseconds: 200),
//     opacity: expanded ? 1 : 0,
//     child: Container(
//       margin: const EdgeInsets.only(bottom: 6),
//       decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(18)),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           _iconButton(Icons.add, () {}),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 4),
//             child: Text('1', style: const TextStyle(color: Colors.white)),
//           ),
//           _iconButton(Icons.remove, () {}),
//         ],
//       ),
//     ),
//   );
// }

Widget _iconButton(IconData icon, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: SizedBox(width: 36, height: 36, child: Icon(icon, color: Colors.white, size: 18)),
  );
}
/*












 */