

Dado('que acesso o site da Crefisa') do
    @TestsElements=ElementTests.new
    @TestsPages=PagesTests.new
    include Capybara::DSL

    @TestsPages.acessa

  end
  
  Quando('passo o mouse em Para Voce') do
    find(:xpath, @TestsElements.BotaoParaVoce).hover
    @TestsPages.espera
      end
  
  Quando('clico em Emprestimo Pessoal') do
    find(:xpath, @TestsElements.BotaoEmprestimoPessoal).click
    @TestsPages.espera
  end
  
  Quando('desco a tela ate Agende uma visita') do
    # scroll_to 'emprestimo__texto'
    scroll_to 'nossos-produtos__titulo-principal'
    
    @TestsPages.espera
  end
  
  Quando('preencho o formulario') do
      fill_in "agende-nome",with: 'xpto'
      @TestsPages.espera
      fill_in "agende-telefone",with: '1133336952'
      @TestsPages.espera
      fill_in "agende-email",with: 'xpto@teste.com.br'
      @TestsPages.espera
  end

  Entao('poderei enviar o formulario') do
    find(:xpath, @TestsElements.BotaoContinuar).click
    @TestsPages.espera
  end