#  Script de Limpeza de Arquivos Temporários do File Server

Este script PowerShell foi desenvolvido para realizar a limpeza automática de arquivos temporários em um servidor de arquivos (File Server). Ele verifica se o diretório existe, encontra todos os arquivos dentro do diretório e suas subpastas, e os remove permanentemente. O objetivo é manter o servidor de arquivos livre de arquivos temporários indesejados, garantindo mais espaço em disco e desempenho otimizado.

## **Objetivo**

O script tem como objetivo a remoção de arquivos temporários de servidores de arquivos (File Servers) para liberar espaço em disco, melhorar o desempenho do sistema e garantir que arquivos desnecessários não ocupem espaço em servidores.
## **Funcionalidade**

- **Verificação de Existência de Pasta**: O script verifica se o diretório especificado existe no servidor de arquivos..
- **Busca de Arquivos**: Caso a pasta exista, o script busca todos os arquivos dentro dela e de suas subpastas.
- **Remoção de Arquivos:** O script apaga todos os arquivos encontrados, utilizando a opção de forçar a exclusão de arquivos protegidos.
---

## **Passos para Agendar a Execução Automática**

Para configurar o script para execução automática no Windows, siga os passos abaixo utilizando o **Agendador de Tarefas**:

### **Passo 1: Acesse o Agendador de Tarefas**

- Pressione a tecla `Windows` e digite **"Agendador de Tarefas"**.
- Abra o Agendador de Tarefas.

### **Passo 2: Crie uma Nova Tarefa**

- No painel direito, clique em **"Criar Tarefa..."**.
- Dê um nome à tarefa, por exemplo, **"Limpeza de Arquivos Temporários"**.

### **Passo 3: Defina os Privilégios**

- Na aba **"Geral"**, marque a opção **"Executar com privilégios mais altos"**.
- Certifique-se de selecionar a opção **"Executar independentemente de o usuário estar logado ou não"**. Isso garante que o script será executado mesmo que ninguém esteja logado na máquina.
- ![](image1.jpg)




### **Passo 4: Defina o Agendamento**

- Na aba **"Triggers"**, clique em **"Novo..."** para configurar quando a tarefa será executada.
- Defina o horário ou a frequência desejada (diariamente, semanalmente, etc.).
- Clique em **OK** após definir o agendamento.
- ![](image2.jpg)
### **Passo 5: Apontar para o Script**

- Na aba **"Ações"**, clique em **"Novo..."**.
- No campo **"Programa/script"**, digite o caminho do **PowerShell**:
  - Exemplo: `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`
- No campo **"Argumentos"**, adicione o caminho completo do script que você deseja executar:
  - Exemplo: `-ExecutionPolicy Bypass -File "C:\Caminho\Do\Script\Scriptpasta.ps1"`
  - - ![](image3.jpg)
  
  Isso permitirá que o PowerShell execute o script sem interrupções de segurança.

### **Passo 6: Conclua a Criação da Tarefa**

- Após configurar todos os parâmetros, clique em **OK** para salvar a tarefa.
- Agora, o script será executado automaticamente no horário definido.

---

## **Considerações Finais**

Esse script é uma ótima maneira de manter o servidor de arquivos livre de arquivos temporários e garantir que o sistema esteja sempre com o máximo de espaço disponível.

Caso queira modificar o diretório ou a frequência da execução, basta ajustar os parâmetros no script ou no Agendador de Tarefas.

Se tiver dúvidas ou precisar de mais informações, entre em contato!
