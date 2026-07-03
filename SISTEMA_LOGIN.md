# 🔐 Sistema de Login - Porão Academia

## Credenciais Padrão

**Login inicial:**
- Usuário: `admin`
- Senha: `admin`

⚠️ **IMPORTANTE**: Após o primeiro acesso, recomenda-se criar outros usuários administrativos e, se necessário, alterar a senha padrão (via edição do localStorage).

---

## 📋 Tipos de Usuários

### 1. **Administrador** 👑
- **Permissões completas:**
  - ✅ Todas as funcionalidades da academia
  - ✅ Gerenciamento de usuários
  - ✅ Criar/editar/excluir clientes
  - ✅ Acessar relatórios
  - ✅ Enviar mensagens em massa
  - ✅ Gerenciar check-ins
  - ✅ Controlar cobranças

### 2. **Funcionário** 💼
- **Acesso operacional:**
  - ✅ Cadastrar e editar clientes
  - ✅ Gerenciar check-ins
  - ✅ Controlar cobranças
  - ✅ Acessar dashboard
  - ✅ Enviar mensagens
  - ✅ Ver relatórios
  - ❌ NÃO pode criar/excluir usuários
  - ❌ NÃO pode excluir clientes

### 3. **Aluno** 🎓
- **Acesso limitado:**
  - ✅ Visualizar próprio perfil
  - ✅ Fazer check-in
  - ✅ Ver histórico de check-ins
  - ✅ Ver status de pagamento
  - ❌ NÃO pode acessar dados de outros alunos
  - ❌ NÃO pode acessar painel administrativo

---

## 🚀 Como Usar

### Criando Usuários (apenas Admin)

1. Faça login com `admin/admin`
2. Acesse a aba **"Usuários"** no menu lateral
3. Preencha o formulário:
   - **Nome Completo**: Nome do usuário
   - **Usuário (Login)**: Nome de login (sem espaços, minúsculas)
   - **Senha**: Mínimo 4 caracteres
   - **Nível de Acesso**: Escolha entre Admin, Funcionário ou Aluno
   - **Cliente Associado** (apenas para Alunos): Vincule a um cliente cadastrado

4. Clique em **"Criar Usuário"**

### Criando Login para Aluno

Para que um aluno tenha acesso ao sistema:

1. **Primeiro**, cadastre o aluno na aba **"Cadastrar"** ou **"Clientes"**
2. Depois, vá em **"Usuários"**
3. Crie um novo usuário com:
   - Tipo: **Aluno**
   - Cliente Associado: Selecione o cliente cadastrado
4. Informe o login e senha ao aluno

### Acessando como Aluno

Quando um aluno faz login:
- Vê apenas uma tela com seus dados pessoais
- Pode fazer check-in com um clique
- Vê seu histórico de check-ins
- Vê status de pagamento e dias até vencimento

---

## 🔒 Segurança

⚠️ **Este sistema usa localStorage (armazenamento local do navegador)**

**Limitações:**
- ✅ Funciona 100% offline
- ✅ Rápido e sem necessidade de servidor
- ❌ Senhas não são criptografadas (hash)
- ❌ Dados ficam no navegador (podem ser perdidos se limpar cache)
- ❌ NÃO é recomendado para dados sensíveis em produção

**Para produção real, considere:**
- Usar Supabase ou Firebase para backend seguro
- Implementar hash de senhas (bcrypt)
- Adicionar autenticação 2FA
- Implementar backup automático em nuvem

---

## 💡 Dicas

1. **Backup automático**: O sistema já faz backup automático dos clientes no localStorage
2. **Primeiro acesso**: Crie pelo menos 2 admins para não perder acesso
3. **Senha esquecida**: Admin pode excluir e recriar usuários
4. **Múltiplos funcionários**: Crie quantos funcionários precisar
5. **Um login por aluno**: Cada aluno deve ter seu próprio login vinculado ao cadastro

---

## 🎯 Fluxo de Trabalho Recomendado

### Para Academia:
1. Admin cria logins para funcionários
2. Funcionários cadastram novos alunos
3. Admin cria logins para alunos (vinculados aos cadastros)
4. Alunos fazem check-in pelo próprio celular/tablet

### Para Alunos:
1. Recebe login e senha da recepção
2. Acessa o sistema
3. Vê seu perfil e status
4. Faz check-in ao chegar na academia
5. Acompanha vencimento de pagamento

---

## 📱 Acesso Multi-dispositivo

O sistema funciona em:
- 💻 Computadores (recepção)
- 📱 Tablets (check-in)
- 📱 Celulares (alunos)

**Cada dispositivo terá seus próprios dados salvos localmente.**

Para sincronizar entre dispositivos, será necessário implementar um backend (Supabase/Firebase).

---

## ❓ Solução de Problemas

**"Esqueci a senha do admin"**
- Abra o Console do navegador (F12)
- Digite: `localStorage.removeItem('poraoUsers')`
- Recarregue a página
- O admin padrão (admin/admin) será recriado

**"Não consigo fazer login"**
- Verifique se usuário e senha estão corretos
- Usuário deve estar em minúsculas
- Senha é case-sensitive (diferencia maiúsculas)

**"Aluno não consegue fazer check-in"**
- Verifique se o login do aluno está vinculado a um cliente
- Verifique se o cliente está ativo no sistema

---

## 🔄 Logout

Para sair do sistema, clique no botão de **logout** (ícone de sair) no rodapé do menu lateral.

---

**Desenvolvido para Porão Academia** 💪
