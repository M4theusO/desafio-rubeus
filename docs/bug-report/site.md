# 🐞 Relatório de Bugs – Página Site

**URL testada:**  
https://qualidade.apprbs.com.br/site  

---

## 🔴 Item 01 – Erro ao tentar assinar a newsletter

**Tipo:** Correção  
**Classificação:** Utilidade  
**Prioridade:** Alta  

### Passos para reproduzir
1. Acessar a página https://qualidade.apprbs.com.br/site  
2. Preencher os campos do formulário de newsletter  
3. Clicar em **Concluir**

### Resultado esperado
O sistema deve concluir o cadastro na newsletter com sucesso ou exibir mensagem de confirmação.

### Resultado atual
É exibida a mensagem:  
> "É necessário informar a base legal"

O cadastro não é concluído.

---

## 🟡 Item 02 – Opções "Atendimento" e "WhatsApp" redirecionam para o mesmo destino

**Tipo:** Melhoria  
**Classificação:** Desejabilidade  
**Prioridade:** Baixa  

### Passos para reproduzir
1. Acessar a página https://qualidade.apprbs.com.br/site  
2. Clicar no link **"Atendimento"**  
3. Clicar no link **"WhatsApp"**

### Resultado esperado
Cada opção deve direcionar para canais distintos ou possuir nomenclatura que represente corretamente o destino.

### Resultado atual
Ambos os links redirecionam para o WhatsApp.

---

## 🟠 Item 03 – Links do header executam duas ações simultaneamente

**Tipo:** Melhoria  
**Classificação:** Usabilidade  
**Prioridade:** Média  

### Passos para reproduzir
1. Acessar a página https://qualidade.apprbs.com.br/site  
2. Clicar em um dos links do header:
   - "Nossos diferenciais"
   - "Eventos"
   - "Depoimentos"

### Resultado esperado
O link deve executar apenas uma ação:
- Realizar navegação interna para a seção correspondente

### Resultado atual
O sistema abre uma nova guia no navegador e, ao retornar para a guia original, o usuário é direcionado automaticamente para a seção correspondente.

Esse comportamento pode gerar confusão na navegação.