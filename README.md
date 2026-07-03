# 🏋️ Porão Academia - Sistema de Gerenciamento de Clientes

Sistema completo para gerenciar clientes, controlar cobranças e manter contato via WhatsApp.

## 📋 Funcionalidades

- ✅ Cadastro completo de clientes (nome, email, telefone, data de nascimento)
- ✅ Controle de prazo em dias para cobranças
- ✅ Cálculo automático de clientes com cobranças pendentes
- ✅ Integração com WhatsApp para contato direto
- ✅ Edição de clientes com botões rápidos para adicionar dias
- ✅ **Backup automático** dos dados sempre que houver alterações
- ✅ Design personalizado nas cores laranja e cinza

## 🚀 Como Usar (Primeira Vez)

### Pré-requisitos
- **Node.js** versão 18 ou superior ([Baixar aqui](https://nodejs.org))

### Instalação

1. **Abra o terminal/prompt** na pasta do projeto

2. **Instale as dependências** (apenas na primeira vez):
```bash
npm install
```

3. **Pronto!** Agora pode usar os arquivos de atalho abaixo.

---

## ⚡ Iniciar o Sistema (Uso Diário)

### Windows
**Clique duas vezes no arquivo:** `ABRIR-APP.bat`

### Mac/Linux
**Clique duas vezes no arquivo:** `ABRIR-APP.sh`

*Ou execute no terminal:*
```bash
chmod +x ABRIR-APP.sh
./ABRIR-APP.sh
```

### Manualmente (qualquer sistema)
```bash
npm run dev
```

**Depois de executar, o navegador abrirá automaticamente em:** `http://localhost:5173`

---

## 💾 Sistema de Backup

### Backup Automático
- Os dados são salvos **automaticamente** sempre que você:
  - Cadastrar um novo cliente
  - Editar um cliente
  - Excluir um cliente

- Os backups ficam salvos em: **`/public/backups/`**
- Formato do arquivo: `backup-AAAA-MM-DD-HH-MM-SS.json`

### Restaurar Backup Manualmente
1. Abra o navegador (F12 ou botão direito > Inspecionar)
2. Vá na aba **Console**
3. Cole este código (substitua a data):
```javascript
// Exemplo: restaurar backup de 13/12/2024 às 14:30:15
fetch('/backups/backup-2024-12-13-14-30-15.json')
  .then(r => r.json())
  .then(data => {
    localStorage.setItem('poraoClients', JSON.stringify(data));
    location.reload();
  });
```

### Download Manual de Backup
Clique no botão **"Baixar Backup"** na aba de Clientes para fazer download dos dados.

---

## 📂 Estrutura de Pastas

```
porao-academia/
├── ABRIR-APP.bat          # Atalho Windows
├── ABRIR-APP.sh           # Atalho Mac/Linux
├── README.md              # Este arquivo
├── package.json           # Dependências
├── public/
│   └── backups/           # Backups automáticos (criada automaticamente)
├── src/
│   └── app/
│       ├── App.tsx        # Aplicação principal
│       └── components/    # Componentes React
└── node_modules/          # Bibliotecas (criada após npm install)
```

---

## ⚠️ Observações Importantes

### Dados Locais
- Os dados ficam salvos no **navegador** (localStorage)
- Cada navegador (Chrome, Edge, Firefox) tem dados separados
- **NÃO compartilhe dados entre computadores automaticamente**

### Backup de Segurança
- Sempre que houver mudanças, um backup é criado em `/public/backups/`
- **Recomendação:** Copie a pasta `backups` para um pen drive ou nuvem regularmente

### Limpeza do Navegador
- ⚠️ Se limpar cache/cookies do navegador, os dados do localStorage são perdidos
- ✅ Os arquivos de backup em `/public/backups/` **NÃO são afetados**

### WhatsApp
- O sistema abre o WhatsApp Web automaticamente
- Funciona com números brasileiros (código +55)

---

## 🛠️ Solução de Problemas

### "npm não é reconhecido"
➡️ Instale o Node.js: https://nodejs.org

### Porta já em uso
➡️ Feche outros programas usando a porta 5173 ou mude no `vite.config.js`

### Não abre o navegador automaticamente
➡️ Abra manualmente: http://localhost:5173

### Backup não está sendo criado
➡️ Verifique se a pasta `/public/backups/` existe e tem permissão de escrita

---

## 🎨 Personalização

### Cores (laranja e cinza)
Edite o arquivo `/src/styles/theme.css` para mudar as cores do tema.

### Prazo padrão
Edite o arquivo `/src/app/components/ClientForm.tsx` linha ~18 para mudar o prazo padrão (atualmente 30 dias).

---

## 📞 Suporte

Sistema desenvolvido especialmente para **Porão Academia**.

**Data:** Dezembro 2024  
**Versão:** 1.0.0

---

## 📄 Licença

Uso privado - Porão Academia
