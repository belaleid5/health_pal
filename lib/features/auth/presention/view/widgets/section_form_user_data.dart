import 'package:flutter/material.dart';
import 'package:health_pal/core/functions/app_spacing.dart';
import 'package:health_pal/core/utlis/app_strings.dart';
import 'package:health_pal/core/widgets/custom_button.dart';
import 'package:health_pal/features/auth/presention/view/funcations/select_gender.dart';
import 'package:health_pal/features/auth/presention/view/widgets/custom-text_form_field.dart';

class SectionFormUSerData extends StatefulWidget {
  const SectionFormUSerData({
    super.key,
  });

  @override
  State<SectionFormUSerData> createState() => _SectionFormUSerDataState();
}

class _SectionFormUSerDataState extends State<SectionFormUSerData> {
  DateTime selectedDate = DateTime.now();
  final TextEditingController _dateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        _dateController.text = pickedDate.toLocal().toString().split(" ")[0];
      });
    }
  }

  String? gender;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const CustomTextFormField(
                  hint: AppStrings.yourName, label: AppStrings.yourName),
              const CustomTextFormField(
                  hint: AppStrings.nickName, label: AppStrings.nickName),
              const CustomTextFormField(
                  hint: AppStrings.yourEmail, label: AppStrings.yourEmail),
              CustomTextFormField(
                controller: _dateController,
                readOnly: true,
                icon: Icons.date_range,
                hint: AppStrings.date,
                label: AppStrings.date,
                onTap: () => _selectDate(context),
              ),
              customSelectGender(
                gender: gender,
                onChanged: (String? newValue) {
                  setState(() {
                    gender = newValue;
                  });
                },
              ),
              verticalSpace(20),
              CustomButton(
                title: AppStrings.save,
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
