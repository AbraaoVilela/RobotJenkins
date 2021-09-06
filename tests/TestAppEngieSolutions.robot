*Settings*
Resource            ${EXECDIR}/resource/Base.robot
Test Setup          Start Session
Test Teardown       End Session

*Test Cases*
Cenário de Teste 01: Efetuar Login No Sistema
    [tags]         01
    Dado que acesso a "${URL}"
    Quando faço login com "${USERNAME}" e "${PASSWORD}"
    E clico no "${BUTTON_ENTRAR}"
    Então sou redirecionado para página home

Cenário de Teste 02: Fazer Login Com Usuário Inválido E Validar Mensagem De Erro
    [tags]         02
    Dado que acesso a "${URL}"
    Quando faço login com "${USER_INVALIDO}" e "${PASS_INVALIDO}" invalido
    E clico no "${BUTTON_ENTRAR}"
    Então valido "${MSG_ERRO_LOGIN}"