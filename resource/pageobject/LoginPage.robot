*Settings*
Documentation          Login page automation actions


*Variables*

${URL}                 https://smart.sig-energy.com/
${TITLE_HOME}          Logar no Sistema - Smart
${CAMPO_USERNAME}      id=Usuario
${USERNAME}            abraao.vilela@ntconsult.com.br
${CAMPO_PASSWORD}      id=Senha
${PASSWORD}            M@i3125!
${BUTTON_ENTRAR}       xpath=//button[@type='submit']
${WELCOME_MSG}         xpath=//div[@class='header-content']//div[1]
${TITLE_PAGEHOME}      Sistemas Smart
${USER_INVALIDO}       TesteLoginInvalido
${PASS_INVALIDO}       123456789
${MSG_ERRO_LOGIN}      Usuário ou senha inválidos.

*Keywords*
Dado que acesso a "${URL}"
    Go To                ${URL}
    Title Should Be      ${TITLE_HOME}

Quando faço login com "${USERNAME}" e "${PASSWORD}"
    Input Text           ${CAMPO_USERNAME}       ${USERNAME}
    Input Text           ${CAMPO_PASSWORD}       ${PASSWORD}

E clico no "${BUTTON_ENTRAR}"
    Click Element        ${BUTTON_ENTRAR}
    Sleep                5

Então sou redirecionado para página home
    Wait Until Element Is Visible       ${WELCOME_MSG}      20
    Title Should Be      ${TITLE_PAGEHOME}

Quando faço login com "${USER_INVALIDO}" e "${PASS_INVALIDO}" invalido
    Input Text           ${CAMPO_USERNAME}       ${USER_INVALIDO}
    Input Text           ${CAMPO_PASSWORD}       ${PASS_INVALIDO}
    Sleep                5

Então valido "${MSG_ERRO_LOGIN}"
    ${MSG_ERRO}          Get Text       xpath=//span[text()='Usuário ou senha inválidos.']
    Log To Console       ${MSG_ERRO}