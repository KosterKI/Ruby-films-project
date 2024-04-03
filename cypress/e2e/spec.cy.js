describe('template spec', () => {
  it('passes', () => {
     cy.visit('https://ukd.edu.ua/')
     cy.get('.d-inline-block').should('be.visible')
     cy.get(':nth-child(2) > :nth-child(1) > .btn').should('contain.text', 'написати ректору')
     cy.get(':nth-child(2) > :nth-child(1) > .btn').click()
    cy.visit('https://ukd.edu.ua/webform/napisati-rektoru')
    cy.get('#edit-vashe-im-ya').type("Constantin") 
    cy.get('#edit-vashe-im-ya').should('have.value', "Constantin")
    
    cy.get('#edit-kontaktniy-telefon').type("0979498718")
    cy.get('#edit-kontaktniy-telefon').should('have.value',"0979498718")
   
    cy.get('#edit-e-mail').type("0523optimus@gmail.com")
    cy.get('#edit-e-mail').should('have.value',"0523optimus@gmail.com")
    cy.get('#edit-vashe-im-ya').clear()
    cy.get('#edit-kontaktniy-telefon').clear()
    cy.get('#edit-e-mail').clear()
    

  })
})