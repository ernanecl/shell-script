# shell-script

## compilador shell

em shell precisamos inserir qual vai ser o seu compilador

caminho absoluto:
    #!/bin/bash
**não é recomendado manter o caminho absoluto, outras distribuições são caminhos diferentes

recomendado usar o caminho:
    #!/usr/bin/env bash
nesse caso, o "env" busca o bash dentro das variáveis de ambiente

## permissões de leitura, escrita e execução

ver permissões de arquivos e diretórios:
    ll
    ls -l
    ls -la

para dar permissão:
    chmod +x file_name.sh

para executar o arquivo shell:
    ./file_name.sh


## variáveis

ao criar uma variável do tipo string (texto), no seu output (saída), use aspas "" para adotar a formatação usada na variável
    party="vamos
    na
    festa"

    echo "$party"

um padrão usado, são nas variáveis globais, que tem seu nome maiúsculo
variáveis globais: geralmente declaradas no começo do programa e podem ser usadas por qualquer função

as variáveis dentro das funções serão em minúsculo
variáveis dentro da função, são usadas dentro da função que estão declaradas

** isso são boas práticas usadas, não são obrigadas o uso


### variaveis reservadas

são variáveis que não podemos atribuir valores a elas, já tem valores padrões

ao criarmos variáveis sem atribuir valores, como as variáveis a seguir:
    echo "Parametro 1: $1"
    echo "Parametro 2: $2"

ao executar o arquivo, podemos inserir ou não um valor para as variáveis
atribuindo valores
    run:
        ./file_name.sh -1 129

    output:
        Parametro 1: -1
        Parametro 2: 129

sem atribuir valores    
    run:
        ./file_name.sh

    output:
        Parametro 1:
        Parametro 2:

para listar todos parametros na execução do sh
    code:
        echo "todos os paramentros $*"

    run:
        ./file_name.sh -1 129 5 6 7 2 j s w t

    output:
        todos os paramentros -1 129 5 6 7 2 j s w t

para contar todos os parametros
    code:
        echo "quantos paramentros: $#"

    run:
        ./file_name.sh -1 129 5 6 7 2 j s w t

    output:
        quantos paramentros: 10

para ver se o último comando teve está ok (0) ou não (1)
    code:
        echo "status da ultima saída de comando: $?"

    run:
        ./file_name.sh -1 129 5 6 7 2 j s w t

    output
        saída do último comando: 0

criar o número do processo da execução
    code:
        echo "PID: $$"

    run:
        ./file_name.sh -1 129 5 6 7 2 j s w t

    output
        PID: pid_number

nome do sh em execução
    code:
        echo $0

    run:
        ./file_name.sh -1 129 5 6 7 2 j s w t

    output
        ./file_name


## condicional if

existe várias maneiras de usar a condicional if

    VAR1=""
    VAR2="1"

    if [[ "$VAR1" = "$VAR2" ]]; then
        echo "as variáveis tem o mesmo valor"
    fi

    if [[ "$VAR1" = "$VAR2" ]]
    then
        echo "as variáveis tem o mesmo valor"
    fi

    if test "$VAR1" = "$VAR2"
    then
        echo "as variáveis tem o mesmo valor"
    fi

    if [ "$VAR1" = "$VAR2" ]
    then
        echo "as variáveis tem o mesmo valor"
    fi

quando a apenas uma condição, é recomendado usar uma única linha do comando como nos dois exemplos
    [ "$VAR1" = "$VAR2" ] && echo "as variáveis tem o mesmo valor"
    [ "$VAR1" = "$VAR2" ] || echo "as variáveis não tem o mesmo valor"

### operadores relacionais

    usadas para trabalhar com números
        -eq : (equal) Igual à
        -ne : (not equal) Diferente de
        -lt : (less than) Menor que
        -gt : (greater than) Maior que
        -le : (less or egual) Menor ou igual à
        -ge : (greater or equal) Maior ou igual à

    usadas para trabalhar com testos (strings)
        = : Igual à (isso mesmo apenas um sinal de igual)
        != : Diferente de
        -n : String existe e não é vazia (apenas um operador)
        -z: String existe e é vazia (apenas um operador)

    outras condições do shell
        -s: Arquivo existe, não vazio (apenas um operador)
        -f: Arquivo existe, não é um diretório (apenas um operador)
        -d: Diretório existe (apenas um operador)
        -w: Arquivo, com permissão de escrita (apenas um operador)
        -r: Arquivo, com permissão de leitura (apenas um operador)
        -x: Arquivo, com parmissão de execução  -x  (apenas um operador)

    link: http://blog.evaldojunior.com.br/aulas/blog/shell%20script/2011/05/08/shell-script-parte-2-controle-de-fluxo.html