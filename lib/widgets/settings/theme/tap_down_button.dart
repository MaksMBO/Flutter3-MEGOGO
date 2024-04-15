import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/theme_cubit.dart';

class TapDownButton extends StatelessWidget {
  const TapDownButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  final void Function(TapDownDetails details) onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return GestureDetector(
          onTapDown: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: state == ThemeState.dark
                  ? const Color(0xff313131)
                  : const Color(0xFFDADADA),
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 24.0,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
