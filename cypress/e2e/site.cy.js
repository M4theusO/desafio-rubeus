describe('Página Site', () => {
  beforeEach(() => {
    cy.visit('https://qualidade.apprbs.com.br/site')
  })

  it('Assinar newsletter com sucesso', () => {
    cy.get("[name='pessoa.nome']").type('João da Silva')
    cy.get("[name='pessoa.emailPrincipal']").type('joao.silva@example.com')
    cy.get("[name='pessoa.telefonePrincipal']").type('11987654321')
    cy.get("button#rbBtnNext[name='rbBtnNext']").click()
    cy.get("form#rbFormFeedbackMessage").should('be.visible')
  })

  it('Link WhatsApp direciona para canal oficial do WhatsApp', () => {
    cy.get('a#iks3g').should('have.attr', 'href').and('include', 'web.whatsapp.com')
  })

  it('Link "Institucional" direciona para a página principal da empresa', () => {
    cy.get('a#ilmc2').should('have.attr', 'href').and('include', 'rubeus.com.br')
  })

  it('Link "Biblioteca" direciona para a página de base de conhecimento', () => {
    cy.get('a#ier16').should('have.attr', 'href').and('include', 'zendesk.com')
  })

})