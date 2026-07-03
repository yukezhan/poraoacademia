#!/bin/bash

echo "========================================"
echo "  PORÃO ACADEMIA - Sistema de Clientes"
echo "========================================"
echo ""
echo "Iniciando o sistema..."
echo ""

# Verifica se node_modules existe
if [ ! -d "node_modules" ]; then
    echo "[AVISO] Primeira execução detectada!"
    echo "Instalando dependências... Aguarde..."
    echo ""
    npm install
    echo ""
fi

echo "Abrindo aplicação..."
echo ""
echo "O navegador abrirá automaticamente."
echo "Para fechar o sistema, pressione Ctrl+C"
echo ""
echo "========================================"

# Aguarda 2 segundos e abre o navegador
sleep 2

# Detecta o sistema operacional e abre o navegador apropriado
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    open http://localhost:5173
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    xdg-open http://localhost:5173 2>/dev/null || sensible-browser http://localhost:5173 2>/dev/null
fi

# Inicia o servidor
npm run dev
