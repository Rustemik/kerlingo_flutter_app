import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kerlingo_flutter_app/assets/app_colors.dart';
import 'package:kerlingo_flutter_app/assets/app_strings.dart';
import 'package:kerlingo_flutter_app/assets/app_typography.dart';
import 'package:kerlingo_flutter_app/assets/components/custom_radio.dart';
import 'package:kerlingo_flutter_app/assets/components/property_item.dart';
import 'package:kerlingo_flutter_app/assets/components/theme_picker.dart';
import 'package:kerlingo_flutter_app/bloc/theme_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppString.profile,
          //style: AppTypography.text18Bold,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(AppString.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 10),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.green,
                ),
                height: 80,
                width: 80,
                child: Center(
                  child: Text(
                    AppString.edit,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(AppString.rewards),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("🥇", style: TextStyle(fontSize: 32)),
                  SizedBox(width: 16),
                  Text("🥇", style: TextStyle(fontSize: 32)),
                  SizedBox(width: 16),
                  Text("🥉", style: TextStyle(fontSize: 32)),
                  SizedBox(width: 16),
                  Text("🥈", style: TextStyle(fontSize: 32)),
                  SizedBox(width: 16),
                  Text("🥉", style: TextStyle(fontSize: 32)),
                  // Switch(
                  //   value:
                  //       context.read<ThemeBloc>().state.mode == ThemeMode.dark,
                  //   onChanged: (value) {
                  //     context.read<ThemeBloc>().add(ThemeChanged(value));
                  //   },
                  // ),
                ],
              ),
              SizedBox(height: 24),
              Column(
                children: [
                  PropertyItem(
                    title: AppString.name,
                    value: AppString.namePlayer,
                  ),
                  SizedBox(height: 8),
                  PropertyItem(
                    title: AppString.email,
                    value: AppString.emailPlayer,
                  ),
                  SizedBox(height: 8),
                  PropertyItem(
                    title: AppString.birth,
                    value: AppString.birthPlayer,
                  ),
                  SizedBox(height: 8),
                  PropertyItem(
                    title: AppString.team,
                    value: AppString.teamPlayer,
                    onPressed: () {},
                  ),
                  SizedBox(height: 8),
                  PropertyItem(
                    title: AppString.position,
                    value: AppString.positionPlayer,
                    onPressed: () {},
                  ),
                  SizedBox(height: 8),
                  PropertyItem(
                    title: AppString.theme,
                    value:
                        context.read<ThemeBloc>().state.mode == ThemeMode.dark
                            ? "Темная"
                            : "Светлая",
                    onPressed: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => ThemePicker(),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        side: BorderSide(
                            width: 2, color: AppColors.logoutColorLight),
                      ),
                      child: Text(
                        "Log out",
                        style: TextStyle(color: AppColors.logoutColorLight),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
