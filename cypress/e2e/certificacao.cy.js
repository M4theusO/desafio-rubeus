describe('Página Certificação', () => {
  beforeEach(() => {
    cy.visit('https://qualidade.apprbs.com.br/certificacao')
  })

  it('Realizar inscrição com sucesso', () => {
    cy.get("[name='pessoa.nome']").type('João da Silva')
    cy.get("[name='pessoa.telefonePrincipal']").type('11987654321')
    cy.get("[name='pessoa.emailPrincipal']").type('joao.silva@example.com')
    cy.get("button#rbBtnNext[name='rbBtnNext']").click()
    cy.get("form#rbFormEtapa2").should('be.visible')
  })

  it('Ícone do YouTube direciona para o canal oficial', () => {
    cy.get('img#inm1sk').click()
    cy.url().should('include', 'https://www.youtube.com/@rubeus')
  })

  it('Botão "Quero me certificar" redireciona corretamente', () => {
    cy.get('a#ixy3u1').click()
    cy.url().should('include', 'https://rubeus.com.br/')
  })

  it('Botões "Saiba mais" redirecionam para páginas válidas', () => {
    cy.get('a#i7r4lj').should('have.attr', 'href')
    cy.get('a#inawao').should('have.attr', 'href')
    cy.get('a#inzf4v').should('have.attr', 'href')
    cy.get('a#i90t3o').should('have.attr', 'href')
  })
})