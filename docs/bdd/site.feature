Feature: Página Site - Comportamentos esperados

  Como visitante do site
  Quero que as funcionalidades executem corretamente
  Para que eu tenha uma navegação clara e funcional

  ####################################################################

  Scenario: Assinar newsletter com sucesso
    Given que o usuário acessa "https://qualidade.apprbs.com.br/site"
    When ele preenche corretamente os campos obrigatórios da newsletter
    And clica no botão "Concluir"
    Then o sistema deve concluir o cadastro com sucesso
    And deve exibir uma mensagem de confirmação

  ####################################################################

  Scenario: Link Atendimento direciona para canal correto
    Given que o usuário acessa "https://qualidade.apprbs.com.br/site"
    When ele clica no link "Atendimento"
    Then o sistema deve redirecionar para o canal oficial de atendimento

  ####################################################################

  Scenario: Link WhatsApp direciona para canal oficial do WhatsApp
    Given que o usuário acessa "https://qualidade.apprbs.com.br/site"
    When ele clica no link "WhatsApp"
    Then o sistema deve redirecionar para o WhatsApp oficial da empresa

  ####################################################################

  Scenario Outline: Links do header realizam navegação interna sem abrir nova guia
    Given que o usuário acessa "https://qualidade.apprbs.com.br/site"
    When ele clica no link "<link>"
    Then o sistema deve navegar para a seção correspondente na mesma página
    And não deve abrir uma nova guia no navegador

    Examples:
      | link                  |
      | Nossos diferenciais   |
      | Eventos               |
      | Depoimentos           |