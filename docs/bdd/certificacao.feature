Feature: Página Certificação - Comportamentos esperados

  Como visitante interessado em certificação
  Quero que os botões e fluxos funcionem corretamente
  Para que eu consiga me inscrever e navegar sem inconsistências

  ####################################################################

  Scenario: Realizar inscrição com sucesso
    Given que o usuário acessa "https://qualidade.apprbs.com.br/certificacao"
    When ele preenche corretamente os campos obrigatórios do formulário
    And clica no botão "Avançar"
    Then o sistema deve permitir a continuidade do processo de inscrição
    And não deve exibir mensagens de erro

  ####################################################################

  Scenario: Ícone do YouTube direciona para o canal oficial
    Given que o usuário acessa "https://qualidade.apprbs.com.br/certificacao"
    When ele rola até o rodapé
    And clica no ícone "YouTube"
    Then o sistema deve redirecionar para o canal oficial da empresa no YouTube

  ####################################################################

  Scenario: Botão "Quero me certificar" redireciona corretamente
    Given que o usuário acessa "https://qualidade.apprbs.com.br/certificacao"
    When ele rola até o final da página
    And clica no botão "Quero me certificar"
    Then o sistema deve redirecionar para a página "https://rubeus.com.br/"
    And não deve redirecionar para domínios não relacionados

  ####################################################################

  Scenario Outline: Botões "Saiba mais" redirecionam para páginas válidas
    Given que o usuário acessa "https://qualidade.apprbs.com.br/certificacao"
    When ele clica no botão "Saiba mais" da seção "<secao>"
    Then o sistema deve redirecionar para a página correspondente do curso

    Examples:
      | secao           |
      | Curso principal |
      | Outros Cursos   |