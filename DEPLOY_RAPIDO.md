# 🚀 Deploy Rápido - 3 Passos

## Opção 1: Vercel (Mais Fácil) ⚡

### Passo 1: Instalar Vercel CLI
```bash
npm install -g vercel
```

### Passo 2: Deploy
```bash
cd /pasta/do/projeto
vercel
```

### Passo 3: Seguir instruções
- Apertar ENTER em tudo
- No final, você recebe: `https://seu-site.vercel.app`

**Pronto! Site no ar! 🎉**

---

## Opção 2: Netlify (Arraste e Solte) 📦

### Passo 1: Build
```bash
pnpm install
pnpm build
```

### Passo 2: Arrastar
1. Acesse: https://app.netlify.com/drop
2. Arraste a pasta `dist` para o site
3. Pronto!

---

## Opção 3: GitHub Pages 🐙

### Passo 1: Criar repositório no GitHub
```bash
git init
git add .
git commit -m "Sistema Porão Academia"
git remote add origin https://github.com/seu-usuario/seu-repo.git
git push -u origin main
```

### Passo 2: Ativar Pages
1. Vá em: Repositório → Settings → Pages
2. Source: Deploy from a branch
3. Branch: main → /dist
4. Save

### Passo 3: Acessar
- Site estará em: `https://seu-usuario.github.io/seu-repo`

---

## ⚠️ IMPORTANTE

### Depois do Deploy:

✅ **O que funciona:**
- Site acessível de qualquer lugar
- Login funcionando
- Todas as funcionalidades

⚠️ **Lembre-se:**
- Cada dispositivo tem dados separados
- Computador A não sincroniza com Computador B
- Use mesmo computador para Admin e Funcionários
- OU implemente Supabase (leia DEPLOY_ONLINE.md)

---

## 🔐 Primeiro Acesso

```
1. Acesse: https://seu-site.vercel.app
2. Login: admin
3. Senha: admin
4. Crie outros usuários em "Usuários"
```

---

## 🎯 Para Academia Profissional

Se você precisa que:
- ❌ Funcionário A cadastre cliente no PC da recepção
- ❌ Funcionário B veja o cliente no celular dele
- ❌ Admin veja tudo de casa

**Você PRECISA de Supabase.**

Leia: `DEPLOY_ONLINE.md` para instruções completas.

---

**Deploy básico em 2 minutos!** ⚡
