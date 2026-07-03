# 💪 Porão Academia - Sistema de Gerenciamento

Sistema completo para gerenciamento de academia com controle de clientes, check-in, cobranças, notas e lembretes.

## 🔐 Sistema de Login

### Acesso Padrão
- **Usuário:** `admin`
- **Senha:** `admin`

### Tipos de Usuário

**👑 Administrador**
- Acesso total ao sistema
- Gerenciamento de usuários
- Dashboard, relatórios e cobranças
- Mensagens em massa

**💼 Funcionário**
- Cadastrar e editar clientes
- Check-in de alunos
- Gerenciar notas e lembretes
- Visualizar lista de clientes

**🎓 Aluno**
- Visualizar próprio perfil
- Fazer check-in
- Ver histórico de treinos
- Acompanhar status de pagamento

## 📋 Funcionalidades

### Para Admin
- ✅ Dashboard com estatísticas
- ✅ Cadastro de clientes
- ✅ Gerenciamento de cobranças
- ✅ Check-in de alunos
- ✅ Notas e lembretes
- ✅ Envio de mensagens em massa
- ✅ Relatórios em PDF
- ✅ Gerenciamento de usuários
- ✅ Ações rápidas

### Para Funcionários
- ✅ Cadastro de clientes
- ✅ Edição de clientes
- ✅ Check-in de alunos
- ✅ Notas compartilhadas
- ✅ Lembretes compartilhados
- ❌ Sem acesso a relatórios financeiros
- ❌ Sem acesso a mensagens em massa
- ❌ Sem acesso ao dashboard

### Para Alunos
- ✅ Perfil pessoal
- ✅ Check-in rápido
- ✅ Histórico de treinos
- ✅ Status de pagamento
- ✅ Avisos de vencimento

## 🚀 Como Usar

### Desenvolvimento Local

1. Instalar dependências:
```bash
pnpm install
```

2. Iniciar servidor de desenvolvimento:
```bash
pnpm dev
```

3. Acessar: `http://localhost:5173`

### Deploy para Produção

#### Vercel (Recomendado)
```bash
npm i -g vercel
vercel
```

#### Netlify
1. Faça build: `pnpm build`
2. Arraste a pasta `dist` para netlify.com

#### GitHub Pages
1. Faça build: `pnpm build`
2. Faça deploy da pasta `dist`

## ⚠️ Importante: Sincronização de Dados

### Sistema Atual (localStorage)
- ✅ Dados persistem no navegador
- ✅ Funciona offline
- ⚠️ Cada dispositivo tem dados separados
- ⚠️ Admin e funcionários compartilham dados APENAS no mesmo computador

### Para Sincronização Real (Multi-dispositivo)
Para que múltiplos funcionários acessem os mesmos dados de diferentes computadores/celulares, você precisa implementar um backend.

**Opções recomendadas:**
- **Supabase** (Grátis até 500MB) - Recomendado
- **Firebase** (Grátis até 1GB)
- **PocketBase** (Open source, self-hosted)

Leia `DEPLOY_ONLINE.md` para instruções detalhadas.

## 📁 Estrutura do Projeto

```
src/
├── app/
│   ├── components/       # Componentes React
│   │   ├── ui/          # Componentes de UI (shadcn)
│   │   ├── Login.tsx    # Tela de login
│   │   ├── UserManagement.tsx  # Gerenciamento de usuários
│   │   ├── StudentView.tsx     # Visualização para alunos
│   │   ├── ClientForm.tsx      # Cadastro de clientes
│   │   ├── ClientList.tsx      # Lista de clientes
│   │   ├── CheckInManager.tsx  # Check-in
│   │   ├── Dashboard.tsx       # Dashboard
│   │   └── ...
│   └── App.tsx          # Componente principal
├── contexts/
│   └── AuthContext.tsx  # Contexto de autenticação
├── lib/
│   ├── dateUtils.ts     # Utilitários de data
│   └── backup.ts        # Backup automático
└── styles/
    ├── theme.css        # Tema e cores
    └── fonts.css        # Fontes
```

## 🗄️ Dados Armazenados (localStorage)

- `poraoClients` - Lista de clientes
- `poraoUsers` - Usuários do sistema
- `poraoSession` - Sessão atual
- `poraoNotes` - Notas compartilhadas
- `poraoReminders` - Lembretes compartilhados
- `poraoCheckIns` - Histórico de check-ins

## 🔒 Segurança

⚠️ **Sistema atual é frontend-only (localStorage)**

**Limitações:**
- Senhas NÃO são criptografadas
- Dados ficam no navegador (podem ser perdidos)
- Qualquer pessoa com acesso ao console pode ver os dados

**Para produção segura:**
- Use Supabase ou Firebase
- Implemente hash de senhas (bcrypt)
- Adicione SSL/HTTPS
- Configure autenticação 2FA

## 📖 Documentação Adicional

- `SISTEMA_LOGIN.md` - Guia completo do sistema de login
- `DEPLOY_ONLINE.md` - Como colocar o site online
- `.env.example` - Variáveis de ambiente (para backend futuro)

## 🛠️ Tecnologias Utilizadas

- **React 18** - Framework frontend
- **TypeScript** - Tipagem estática
- **Tailwind CSS v4** - Estilização
- **Radix UI** - Componentes acessíveis
- **Vite** - Build tool
- **Sonner** - Notificações toast
- **date-fns** - Manipulação de datas
- **jsPDF** - Geração de relatórios PDF
- **Recharts** - Gráficos e estatísticas

## 🎯 Próximos Passos Recomendados

1. **Deploy básico** - Coloque o site no ar com Vercel
2. **Teste em produção** - Use com dados reais da academia
3. **Avalie necessidade de backend** - Se precisar de múltiplos dispositivos
4. **Implemente Supabase** - Para sincronização e segurança
5. **Adicione backup** - Exportação/importação de dados
6. **Customize visual** - Ajuste cores e logo

## 🐛 Solução de Problemas

**Esqueci a senha do admin**
```javascript
// No console do navegador (F12)
localStorage.removeItem('poraoUsers')
// Recarregue a página
```

**Dados desapareceram**
- Verifique se não limpou o cache do navegador
- localStorage é por domínio (localhost é diferente de produção)

**Funcionários não veem mesmos dados**
- Confirme que estão no mesmo computador/navegador
- Para sincronização entre dispositivos, use Supabase

## 📞 Suporte

Para implementação de backend ou personalização, entre em contato.

---

**Desenvolvido para Porão Academia** 💪

Versão: 1.0.0  
Última atualização: Junho 2026
