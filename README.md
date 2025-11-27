# 📚 Sistema de Biblioteca Comunitária  
Atividade 4 — Banco de Dados (SQL + GitHub)

Este repositório contém a implementação completa do banco de dados do **Sistema de Biblioteca Comunitária**, incluindo criação de tabelas, inserção de dados, consultas SQL, atualizações, remoções e documentação com prints de execução.

---

## 📁 Estrutura do Projeto


---

# 🏗️ 1. Criação das Tabelas (DDL)

As tabelas foram criadas no MySQL seguindo o modelo lógico do minimundo.

### ✔ Biblioteca  
![Biblioteca](imagens/Biblioteca.PNG)

### ✔ Livros  
![Livros](imagens/Livros.PNG)

### ✔ Leitores  
![Leitores](imagens/Leitores.PNG)

### ✔ Funcionário  
![Funcionario](imagens/Funcionario.PNG)

### ✔ Empréstimo  
![Emprestimo](imagens/Emprestimo.PNG)

### ✔ ItemEmprestimo  
![ItemEmpre](imagens/ItemEmpre.PNG)

---

## 🧩 2. Inserção de Dados (INSERT)

### ✔ Inserindo Biblioteca
![Insert Biblioteca](imagens/Insert_biblioteca.PNG)

### ✔ Inserindo Livros
![Insert Livros](imagens/Insert_Livros.PNG)

### ✔ Inserindo Leitores
![Insert Leitores](imagens/Insert_Leitores.PNG)

### ✔ Inserindo Funcionários
![Insert Funcionarios](imagens/Insert_Funcionario.PNG)

### ✔ Inserindo Empréstimos
![Insert Emprestimo](imagens/Insert_Emprestimo.PNG)

### ✔ Inserindo Itens de Empréstimo
![Insert ItemEmpre](imagens/Insert_ItemEmpre.PNG)

---

# ✏️ 3. Atualização de Dados (UPDATE)

### ✔ Atualização 1  
![Update 1](imagens/Upadate-1.PNG)

### ✔ Atualização 2  
![Update 2](imagens/Upadate-2.PNG)

### ✔ Atualização 3  
![Update 3](imagens/Upadate-3.PNG)

---

# 🗑️ 4. Remoção de Dados (DELETE)

### ✔ Delete 1  
![Delete 1](imagens/Delete-1.PNG)

### ✔ Delete 2  
![Delete 2](imagens/Delete-2.PNG)

### ✔ Delete 3  
![Delete 3](imagens/Delete-3.PNG)

---

# 🔍 5. Consultas SQL (SELECT)

### ✔ JOIN — Empréstimos + Leitores  
![Join](imagens/Join.PNG)

### ✔ WHERE + ORDER BY — Livros por ano  
![Where + Order By](imagens/Where+Order By.PNG)

### ✔ LIMIT — primeiros registros  
![Limit](imagens/Limit.PNG)

### ✔ LIKE — e-mails gmail  
![Like](imagens/Like.PNG)

### ✔ COUNT + GROUP BY — livros por gênero  
![Count](imagens/Count.PNG)

---

## ▶️ Como executar o script SQL

Para rodar corretamente todo o banco de dados do projeto, siga os passos abaixo:

### 1. Abrir o ambiente de desenvolvimento
Use um dos seguintes:
- **MySQL Workbench**  
- **VSCode com extensão SQL**  
- **Outro cliente MySQL compatível**

### 2. Conectar ao servidor MySQL
- Acesse sua conexão local (geralmente *localhost* com usuário *root*).  
- Insira sua senha configurada no MySQL.

### 3. Carregar o arquivo `script.sql`
No Workbench:
1. Vá em **File** > **Open SQL Script**  
2. Selecione o arquivo `script.sql` deste repositório  
3. O conteúdo será exibido no editor SQL

### 4. Executar o script completo
Clique no ícone de **raio (Execute)** ou use o atalho **CTRL + SHIFT + Enter**.

O script realiza automaticamente:
- Criação do banco: `SistemaBibliotecaComunitaria`
- Criação de todas as tabelas (DDL)
- Inserção dos dados principais (INSERT)
- Atualizações de dados (UPDATE)
- Remoções de registros (DELETE)
- Consultas SQL com diferentes cláusulas (SELECT, JOIN, WHERE, ORDER BY, LIMIT, GROUP BY)

### 5. Conferir se as tabelas foram criadas
Execute o comando:

```sql
SHOW TABLES;

SELECT * FROM Livros;
SELECT * FROM Leitores;
SELECT * FROM Emprestimo;



# ✅ Conclusão

A Atividade 4 foi desenvolvida utilizando:

- MySQL (DDL, DML e consultas)
- VSCode para edição e organização do projeto
- GitHub para versionamento e publicação
- Prints comprovando a execução correta dos comandos

Todo o banco de dados foi criado, populado e manipulado com sucesso, atendendo integralmente aos requisitos.

---

✍️ **Aluno:** Eduardo Vieira de Miranda  
📅 **Curso:** Análise e Desenvolvimento de Sistemas  
🏫 **Instituição:** Cruzeiro do Sul Virtual  
