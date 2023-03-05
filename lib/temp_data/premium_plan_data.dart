import 'package:flutter/material.dart';
import 'package:i_connect/app/types/premium_plantype.dart';

class PeremiumPlanData {
  String? title;
  double? price;
  String? timePeriod;
  String? description;
  Gradient? gradient;

  PeremiumPlanData({
    this.description,
    this.price,
    this.timePeriod,
    this.title,
    this.gradient,
  });
}

List<PeremiumPlanData> premiumPlanDAta = [
  PeremiumPlanData(
    title: 'BASIC',
    price: 14.00,
    timePeriod: 'For 1 DAY',
    description:
        '3 Users that are interchangable throughout the month\n\nUnlimited Connect time',
    gradient: PremiumPlanType.basic.gradient,
  ),
  PeremiumPlanData(
    title: 'SILVER',
    price: 24.00,
    // timePeriod: 'For 1 DAY',
    description: '4-6 Users\n(interchangable)\n\nUnlimited Connect time',
    gradient: PremiumPlanType.silver.gradient,
  ),
  PeremiumPlanData(
    title: 'GOLD',
    price: 49.00,
    // timePeriod: 'For 1 DAY',
    description: '7-10 Users\n(interchangable)\n\nUnlimited Connect time',
    gradient: PremiumPlanType.gold.gradient,
  ),
  PeremiumPlanData(
    title: 'PLATINUM',
    price: 99.00,
    // timePeriod: 'For 1 DAY',
    description: '11-25 Users\n(interchangable)\n\nUnlimited Connect time',
    gradient: PremiumPlanType.platinum.gradient,
  ),
];
