
:: Laravel Default Configuration.

@ECHO off

if(%1 == "") exit;

echo:
echo:
echo Project Creation Started. Project Name is %1

start /wait cmd /C composer create-project --prefer-dist laravel/laravel %1

if exist %1 (
echo:
echo:
echo ====================================================================
echo Goto The Folder
echo ====================================================================

cd %1
echo:
echo:
echo ====================================================================
echo Debuger is running
echo ====================================================================

composer require barryvdh/laravel-debugbar --dev

echo:
echo:
echo ====================================================================
echo Configuration of Laravel Debugbar
echo ====================================================================

php artisan vendor:publish --provider="Barryvdh\Debugbar\ServiceProvider"

)