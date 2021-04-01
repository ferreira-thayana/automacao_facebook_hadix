Dado('que eu esteja na pagina de pesquisa do google') do
  @desafioHadixPage = DesafioHadixPage.new
  @desafioHadixPage.abri_pagina_google
end

Quando('pesquiso e acesso a rede social facebook') do
  @desafioHadixPage.pesquisa_google
  @desafioHadixPage.clique_pesquisa_facebook
end

Entao('visualizo a pagina de login do facebook') do
  expect(page).to have_button('Entrar')
end

Dado('que eu esteja na pagina principal do facebook') do
  @desafioHadixPage = DesafioHadixPage.new
  @desafioHadixPage.abri_pagina_facebook
end

Quando('informo as credenciais necessarias') do
  @desafioHadixPage.credenciais_login_facebook
  @desafioHadixPage.botao_entrar_facebook
end

Entao('o login é realizado com sucesso') do
  expect(page).to have_content('Bem-vindo ao Facebook, Thayana')
end

Dado('que eu esteja logada no facebook') do
  @desafioHadixPage = DesafioHadixPage.new
  @desafioHadixPage.abri_pagina_facebook
  @desafioHadixPage.credenciais_login_facebook
  @desafioHadixPage.botao_entrar_facebook
end

Quando('visualizo a cor de fundo do cabeçalho') do
  @desafioHadixPage.cabeçalho_facebook
end

Entao('valido a cor') do
  expect(@desafioHadixPage.cor_cabecalho).to eq('rgba(255, 255, 255, 1)')
end

Quando('verifico o usuario logado') do
  @desafioHadixPage.verifica_usuario_logado
end

Entao('confirmo que o usuario logado é xxxxx') do
  expect(page).to have_content('Thayana Ferreira')
end

Quando('realizo uma publicação') do
  @desafioHadixPage.clique_home_facebook
  @desafioHadixPage.inciar_publicacao
  @desafioHadixPage.escrever_publicacao
  @desafioHadixPage.submeter_publicacao
end

Entao('obtenho um publicação criada com sucesso') do
  expect(page).to have_content(@texto)
end

