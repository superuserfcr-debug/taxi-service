#!/bin/bash
echo "🚕 Iniciando deploy do Táxi Service..."

if ! command -v git &> /dev/null
then
    echo "❌ Git não está instalado. Instale o Git e tente novamente."
    exit
fi

git init
git add .
git commit -m "Táxi Service v2 deploy-ready"
git branch -M main

read -p "🔗 Cole aqui o link do seu repositório GitHub (ex: https://github.com/seuusuario/taxi-service.git): " repo
git remote add origin $repo
git push -u origin main

echo "✅ Projeto enviado com sucesso para o GitHub!"
echo "🌍 Abrindo a página da Vercel para finalizar o deploy..."
if [[ "$OSTYPE" == "darwin"* ]]; then
  open "https://vercel.com/new"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  xdg-open "https://vercel.com/new"
elif [[ "$OSTYPE" == "msys"* ]]; then
  start "https://vercel.com/new"
else
  echo "➡️ Acesse manualmente: https://vercel.com/new"
fi
echo "🚀 Se já adicionou a variável REACT_APP_GOOGLE_MAPS_API_KEY no painel da Vercel, finalize o deploy."
