import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/app/util/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../../../routes/app_routes.dart';

class FilterPageController extends GetxController {
  String selectedCountry = '';
  String selectedState = '';
  String selectedCity = '';

  final List<String> countries = ['USA', 'Canada', 'Mexico'];
  final Map<String, List<String>> statesInCountry = {
    'USA': ['New York', 'California', 'Texas'],
    'Canada': ['Ontario', 'Quebec', 'Alberta'],
    'Mexico': ['Jalisco', 'Nuevo Leon', 'Mexico City']
  };
  final Map<String, List<String>> citiesInState = {
    'New York': ['New York City', 'Buffalo', 'Rochester'],
    'California': ['Los Angeles', 'San Francisco', 'San Diego'],
    'Texas': ['Houston', 'Austin', 'Dallas'],
    'Ontario': ['Toronto', 'Ottawa', 'Hamilton'],
    'Quebec': ['Montreal', 'Quebec City', 'Sherbrooke'],
    'Alberta': ['Calgary', 'Edmonton', 'Red Deer'],
    'Jalisco': ['Guadalajara', 'Zapopan', 'Tlaquepaque'],
    'Nuevo Leon': ['Monterrey', 'San Pedro Garza Garcia', 'Santa Catarina'],
    'Mexico City': ['Mexico City', 'Coyoacan', 'Tlalpan']
  };
  bool expand = false;
  bool expand2 = false;
  bool expand3 = false;

  void onCountrySelected(String country) {
    selectedCountry = country;
    selectedState = '';
    selectedCity = '';
    expand = true;
    update();
  }

  void onStateSelected(String state) {
    selectedState = state;
    selectedCity = '';
    expand = true;
    expand2 = true;
    update();
  }

  void onCitySelected(String city) {
    selectedCity = city;
    expand = true;
    expand2 = true;
    update();
  }

  @override
  void onInit() {
    getADialag();
    super.onInit();
  }

  getADialag() async {
    await Future.delayed(
      const Duration(milliseconds: 1000),
    );
    await Get.dialog(
        barrierDismissible: false,
        GetBuilder<FilterPageController>(
          init: FilterPageController(),
          initState: (_) {},
          builder: (_) {
            return Dialog(
              alignment: Alignment.center,
              backgroundColor: AppColors.white,
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              insetPadding: const EdgeInsets.all(18),
              child: Container(
                  padding: const EdgeInsets.all(18),
                  width: 50.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: 'Country',
                            color: AppColors.black,
                            weight: FontWeight.bold,
                            fontSize: 20,
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: Get.height * 0.01),
                          DropdownButtonFormField<String>(
                            value: selectedCountry,
                            items: countries.map((country) {
                              return DropdownMenuItem(
                                value: country,
                                child: Text(country),
                              );
                            }).toList(),
                            onChanged: (value) {
                              onCountrySelected(value!);
                            },
                          ),
                        ],
                      ),
                      expand2
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height * 0.02),
                                CommonText(
                                  text: 'City',
                                  color: AppColors.black,
                                  weight: FontWeight.bold,
                                  fontSize: 20,
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: Get.height * 0.01),
                                DropdownButtonFormField<String>(
                                  value: selectedCity,
                                  items:
                                      citiesInState[selectedState]!.map((city) {
                                    return DropdownMenuItem(
                                      value: city,
                                      child: Text(city),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    onCitySelected(value!);
                                  },
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                      expand
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height * 0.02),
                                CommonText(
                                  text: 'State',
                                  color: AppColors.black,
                                  weight: FontWeight.bold,
                                  fontSize: 20,
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: Get.height * 0.01),
                                DropdownButtonFormField<String>(
                                  value: selectedState,
                                  items: statesInCountry[selectedCountry]!
                                      .map((state) {
                                    return DropdownMenuItem(
                                      value: state,
                                      child: Text(state),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    onStateSelected(value!);
                                  },
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                      expand3
                          ? CustomButton(
                              width: Get.width * 0.3,
                              gradient: LinearGradient(
                                colors: [AppColors.green, AppColors.green],
                              ),
                              onPressed: () async {
                                Get.back();
                                await Future.delayed(
                                    const Duration(seconds: 2));
                                Get.toNamed(Routes.startScreen);
                              },
                              child: CommonText(
                                text: 'Next',
                                color: AppColors.black,
                              ))
                          : const SizedBox.shrink(),
                    ],
                  )),
            );
          },
        ));
  }
}
