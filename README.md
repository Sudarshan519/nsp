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

NOTE:
The repo is missing the config/app_config.json which content is simillar to

{
    "is_debug": true,
    "base_url": "https://nspdev.truestreamz.com",
    "api_path": "/api/v1",
    "resume_base_url": "https://nspresume.truestreamz.com",
    "alert_base_url": "https://news.nettvnepal.com.np",
    "mirai_life_base_url" : "https://app.mirailifecare.com"
}

{
    "is_debug": false,
    "base_url": "https://app.bnpj.jp",
    "api_path": "/api/v1",
    "resume_base_url": "https://resume.bnpj.jp",
    "alert_base_url": "https://news.nettvnepal.com.np",
    "mirai_life_base_url" : "https://app.mirailifecare.com"
}

This json is injected at the build time from CI/CD. Thus the url consistancy is maintained at the buildtime.

To generate APP_CONFIG with appbase url and pass it to the CI/CD
Execute: openssl base64 -in config/app_config.json -out config/outputfile.txt

Check Coverage:
Execute: flutter test --coverage
Execute: genhtml -o coverage coverage/lcov.info

Remove all local git branch
git branch | grep -v "master\|develop\|current_branch" | xargs git branch -D 