# Wallet App 
[![Codemagic build status](https://api.codemagic.io/apps/6017bdd19e376abf2de1e47f/6018e9ee4ad38cf97745dbff/status_badge.svg)](https://codemagic.io/apps/6017bdd19e376abf2de1e47f/6018e9ee4ad38cf97745dbff/latest_build)

A new Flutter project.

## Getting Started

This project is build with clear architecture.

Run the testcases to verify everything is working fine.
flutter test --coverage

Run Integration test:
flutter drive --driver test_driver/integration_test.dart --target integration_test/login_test.dart

To regenerate the Unions, router and other auto generated files execute the following command.
Execute: flutter pub run build_runner build --delete-conflicting-outputs 
Execute: flutter pub run build_runner watch --delete-conflicting-outputs 
