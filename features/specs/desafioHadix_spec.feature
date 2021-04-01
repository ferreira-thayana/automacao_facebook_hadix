#language: pt

Funcionalidade: Login facebook

  Cenario: Entrar na rede social através do "Google"
    Dado que eu esteja na pagina de pesquisa do google
    Quando pesquiso e acesso a rede social facebook
    Entao visualizo a pagina de login do facebook

  Cenario: Realizar login
    Dado que eu esteja na pagina principal do facebook
    Quando informo as credenciais necessarias
    Entao o login é realizado com sucesso

  Cenario: Confirmar cor de fundo do cabeçalho
    Dado que eu esteja logada no facebook
    Quando visualizo a cor de fundo do cabeçalho
    Entao valido a cor

  Cenario: Confirmar usuário logado
    Dado que eu esteja logada no facebook
    Quando verifico o usuario logado
    Entao confirmo que o usuario logado é xxxxx

  Cenario: Fazer uma publicação e confirmar seu registro na timeline
    Dado que eu esteja logada no facebook
    Quando realizo uma publicação
    Entao obtenho um publicação criada com sucesso


