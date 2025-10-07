# ==============================================
# Preeclampsia AI Project Setup Script 
# ==============================================

# --- Creating folders ---
$folders = @(
    "data\raw",
    "data\processed",
    "data\external",
    "notebooks",
    "src\config",
    "src\data",
    "src\features",
    "src\models",
    "src\evaluation",
    "src\utils",
    "tests",
    "experiments\logs",
    "experiments\checkpoints",
    "experiments\reports",
    "scripts",
    "models",
    "deployment\api",
    "deployment\docker",
    "deployment\inference"
)

foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
    }
}

# --- Creating Python __init__ and main files ---
$files = @(
    "src\__init__.py",
    "src\main.py",
    "src\data\__init__.py",
    "src\data\dataloader.py",
    "src\features\__init__.py",
    "src\features\feature_engineering.py",
    "src\models\__init__.py",
    "src\models\model.py",
    "src\models\trainer.py",
    "src\evaluation\__init__.py",
    "src\evaluation\metrics.py",
    "src\utils\__init__.py",
    "src\utils\logger.py",
    "src\config\model_config.yaml",
    "src\config\data_config.yaml",
    "requirements.txt",
    "setup.py",
    ".gitignore",
    "README.md",
    "scripts\preprocess_data.py",
    "scripts\train_model.py",
    "deployment\api\app.py",
    "deployment\api\requirements.txt",
    "deployment\docker\Dockerfile",
    "deployment\docker\docker-compose.yml",
    "deployment\inference\predict.py",
    "deployment\inference\service.py",
    "notebooks\exploration.ipynb",
    "notebooks\experiments.ipynb",
    "tests\test_data.py",
    "tests\test_models.py",
    "tests\test_end_to_end.py"
)

foreach ($file in $files) {
    if (-not (Test-Path $file)) {
        New-Item -ItemType File -Path $file | Out-Null
    }
}

Write-Host "Yay!! Our project structure has been created successfully!"
