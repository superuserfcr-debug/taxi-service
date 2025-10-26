Táxi Service — Deploy Ready (v2)

Conteúdo:
- Projeto React simplificado (src/TaxiAppUI.jsx)
- vercel-deploy.sh (script para inicializar o repo and abrir Vercel)
- vercel.json (configuração)
- .env.example (coloque sua chave do Google Maps)
- mockups/ (PNG + SVG para importar no Figma)
- fig_export/ (SVGs organizados para importação no Figma)

Passos rápidos:
1. Extraia o zip e entre na pasta taxi_service_project
2. Crie um repositório no GitHub e copie a URL (ex: https://github.com/seuuser/taxi-service)
3. Rode no terminal: bash vercel-deploy.sh
4. Quando solicitado, cole a URL do repo GitHub
5. No painel da Vercel, configure a variável de ambiente REACT_APP_GOOGLE_MAPS_API_KEY com sua chave
6. Conclua o deploy (Vercel irá detectar React automaticamente)
