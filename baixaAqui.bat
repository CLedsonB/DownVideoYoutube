color 02
echo off
mode con:cols=80 lines=30
cls

echo .
echo 	----------------------------
echo 	---CONFIGURACOES INICIAIS---
echo 	----------------------------
echo .

echo Insira seu caminho para download
set /p caminho=
cd %caminho%

echo Insira um link do youtube para download
set /p link=

echo Deseja baixar em formato de video ou audio?
echo (Digite apenas 'video' ou 'audio')
set /p resposta=

if %resposta% == audio goto audio
if %resposta% == video goto video

cls

echo .
echo ----------------------------
echo ----INICIANDO DOWNLOADS-----
echo ----------------------------
echo .

:audio
youtube-dl -x --audio-format mp3 --audio-quality 0 %link%

:video
youtube-dl -x --audio-format mp4 --audio-quality 0 %link%

echo ----------------------------
echo ----------CONCLUIDO---------
echo ----------------------------



echo Deseja baixar outro video? (Diga apenas sim ou nao)
set /p resposta=

if %resposta% == sim goto baixar
if %resposta% == nao goto fim

:fim

echo ----------------------------
echo -------------FIM------------
echo ----------------------------

timeout 3
exit

