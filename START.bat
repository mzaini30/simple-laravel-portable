@echo off

set port=1234

copy php\php.template.ini php\php.ini
echo extension_dir = "%cd%\php\ext" >> php\php.ini

echo .
echo      Buka localhost:%port% di browser
echo .

cd www
..\php\php artisan serve --port %port%