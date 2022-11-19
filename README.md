# Habitomic - Track Every 1 Percent Routine to Build New Habit

Habitomic is a lifestyle app to create habit plan, organize, get daily reminder, and new habit progress.

## Getting Started 📲

To run this project on VSCode, use the following `launch.json` configuration:

'''json
{
    "configurations": [
        {
            "name": "Dev [debug]",
            "request": "launch",
            "type": "dart",
            "program": "lib/main_dev.dart",
            "flutterMode": "debug",
            "args": [
                "--flavor",
                "dev"
            ]
        },
        {
            "name": "Dev [profile]",
            "request": "launch",
            "type": "dart",
            "program": "lib/main_dev.dart",
            "flutterMode": "profile",
            "args": [
                "--flavor",
                "dev"
            ]
        },
        {
            "name": "Dev [release]",
            "request": "launch",
            "type": "dart",
            "program": "lib/main_dev.dart",
            "flutterMode": "release",
            "args": [
                "--flavor",
                "dev"
            ]
        },
        {
            "name": "Prod [debug]",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_prod.dart",
            "flutterMode": "debug",
            "args": [
                "--flavor",
                "prod"
            ]
        },
        {
            "name": "Prod [profile]",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_prod.dart",
            "flutterMode": "profile",
            "args": [
                "--flavor",
                "prod"
            ]
        },
        {
            "name": "Prod [release]",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_prod.dart",
            "flutterMode": "release",
            "args": [
                "--flavor",
                "prod"
            ]
        }
    ]
}
'''

Build with ❤️ and [Flutter](https://docs.flutter.dev/)
