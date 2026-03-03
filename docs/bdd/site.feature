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

  Scenario: Link WhatsApp direciona para canal oficial do WhatsApp
    Given que o usuário acessa "https://qualidade.apprbs.com.br/site"
    When ele clica no link "WhatsApp"
    Then o sistema deve redirecionar para o WhatsApp oficial da empresa

####################################################################

  Scenario: Link "Institucional" direciona para a página principal da empresa
    Given que o usuário acessa "https://qualidade.apprbs.com.br/site"
    When ele clica no link "Institucional"
    Then o sistema deve redirecionar para o site oficial da empresa

    ####################################################################

  Scenario: Link "Biblioteca" direciona para a página de base de conhecimento
    Given que o usuário acessa "https://qualidade.apprbs.com.br/site"
    When ele clica no link "Biblioteca"
    Then o sistema deve redirecionar para a página de base de conhecimento