#!/usr/bin/env bash

# Verifica se newman está instalado
if ! command -v newman &> /dev/null
then
    echo "Newman não encontrado. Por favor instale com: npm install -g newman"
    exit 1
fi

echo "Executando testes via Newman..."
newman run postman/Serverest.postman_collection.json \
  --environment postman/Serverest.postman_environment.json \
  --reporters cli,junit,html \
  --reporter-junit-export newman-report.xml \
  --reporter-html-export report.html
