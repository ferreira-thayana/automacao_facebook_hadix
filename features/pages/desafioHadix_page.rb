class DesafioHadixPage
  include Capybara::DSL

  def abri_pagina_google
    visit 'https://www.google.com'
  end

  def abri_pagina_facebook
    visit 'https://www.facebook.com'
  end

  def pesquisa_google
    labelpesquisar = find(:css, 'input[title="Pesquisar"]').click
    labelpesquisar.send_keys 'facebook'
    find(:css, 'input[value="Pesquisa Google"]').click
  end

  def clique_pesquisa_facebook
    clickLinkFacebook = find(:css, 'a[href="https://pt-br.facebook.com/"]').click
  end

  def credenciais_login_facebook
    fill_in 'email', with: 'desafiohadixthayana@gmail.com'
    fill_in 'pass', with: 'desafiohadixthayana3003'
  end

  def botao_entrar_facebook
    click_button 'Entrar'
  end

  def cabeçalho_facebook
    @elementoCabeçalho = find(:xpath, XPath.css('div[id *= "mount"]>div>div:nth-child(1)>div>:nth-child(4)>:nth-child(3)>:nth-child(1)'))
  end

  def cor_cabecalho
    @elementoCabeçalho.native.css_value('background-color')
      #@corCabecalho
  end

  def verifica_usuario_logado
    clickfoto = find(:css, 'div[aria-label="Conta"]').click
  end

  def clique_home_facebook
    clickPaginaInicial = find(:css, 'a[aria-label="Página inicial"]').click
    sleep 2
  end

  def inciar_publicacao
    clickPublicacao = find('span', text: 'No que você está pensando, Thayana?').click
  end

  def escrever_publicacao
    textAreaPublicacao = find('div[aria-label="No que você está pensando, Thayana?"]')
    numeroAleatorio = rand(1000..2000)
    @texto = "Publicação desafio (#{numeroAleatorio})"
    textAreaPublicacao.send_keys @texto
  end

  def submeter_publicacao
    botaoPublicar = find('div[aria-label="Publicar"]').click
  end
end