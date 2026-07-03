@echo off
echo ========================================
echo   PORAO ACADEMIA - Sistema de Clientes
echo ========================================
echo.
echo Iniciando o sistema...
echo.

REM Verifica se node_modules existe
if not exist "node_modules" (
    echo [AVISO] Primeira execucao detectada!
    echo Instalando dependencias... Aguarde...
    echo.
    call npm install
    echo.
)

echo Abrindo aplicacao...
echo.
echo O navegador abrira automaticamente.
echo Para fechar o sistema, feche esta janela.
echo.
echo ========================================

REM Inicia o servidor e abre o navegador
start http://localhost:5173
call npm run dev

pause
