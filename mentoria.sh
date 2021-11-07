:'
comentário em bloco?
'
# PowerShell é um shell de linha de comando baseado em tarefas e linguagem de script desenvolvido no .NET.

# mostrar itens do diretório atual
Get-ChildItem

# declarar uma variavél usa-se $ com o nome da variável em seguida
# '-Path endereço' é para apontar qual diretório quer ver o seu conteúdo
$endereco = Get-ChildItem -Path C:\Users\ernane\Documents

# ver o que está habilitado para o usuário local atual
Get-LocalUser

# ver possíveis funções do Get
Get-Help

# input de dados de usuário
Read-Host "String a ser mostrado ao usuário"

# colocando input do usuário dentro de uma variável definindo o tipo de dado a ser inserido
[int]$number = (Read-Host "Digite o primeiro número")
$number2 = [int](Read-Host "Digite o segundo número")
$number3 = $number+$number2
[string]$string = Read-Host "digite um texto aleatório"

# output do usuário
Write-Host "Numero digitado" $number
Write-Host "Numero digitado $number2"

Write-Output "Numero digitado" $number
Write-Output "Numero digitado $number2"

Write-Output "" "Soma dos números"
Write-Output $number3

Write-Output "" "String"
Write-Host $string

# para executar somente a variável no console, precisa selecionar a variavel desejada e executar Run Selection

# CONDICIONAL IF ELSE
# -eq é quando queremos saber se o campo da direita é o mesmo campo da esquerda
# -ne tem a função contrário do -eq
$nome = Read-Host "Degite seu nome"

if($nome -eq "ernane"){
    write-host "Olá, Ernane!"
}else{
    write-host "Olá, estranho!"
}

# -match é para ver se o campo da direita contém em alguma parte do campo da esquerda
# -notmatch tem a função contrária
$nome = Read-Host "Degite seu nome"

if(($nome -match "cruz") -or ($nome -match "lima")){
    write-host "Olá, $nome!"
}else{
    write-host "Olá, estranho!"
}

# REPETIÇÃO FOR, FOREACH, WHILE, DO WHILE
# for para listar valor de 0 a 18
for($i=0;$i -ne 19;$i++){
    write-host "Valor de $i"
}

# foreach
$array = @("1","2","3")

foreach($valor in $array){
    write-host "variável $valor"
}

# while
$i = 1

while($i -ne 6){
    write-host "valor de $i"
    $i+=1
}

# do while
$i = 1

do{
    write-host "valor de $i"
    $i+=1
}while($i -ne 6)


# ARRAY & TIPOS DE VARIAVEIS
# criar um array
$lista = @(5, "Elemento array")

# busca informações da variável como IsPublic, IsSerial, Name e BaseType
$lista.GetType()

# dividi a variavel pela quantidade de caracteres
$string.GetEnumerator()

# mostra qual é o tipo de variavel
$string.GetTypeCode()
$string.GetType().Name

# obter o código hash
$string.GetHashCode()

# teste
[string]$lista = 3

# FUNÇÕES E RECURSIVIDADES
# função
function exemplo([int]$teste, [string]$teste1){
    write-host $teste1 - $teste
}

exemplo 3 "valor"

# função recursiva (looping infinito)
function exemplo([int]$teste, [string]$teste1){
    exemplo
}

# COMANDOS ÚTEIS ss64.com

# PADRÃO DO CÓDIGO
# todos eles por padrão usa em letra maiuscula
$status="OK/NOK"
$categoria="SUCESS, FAIL, INFO, RULE, SCRIPT"
$mensagem="É A DESCRIÇÃO DE ACORDO COM RESULTADO FINAL DA AÇÃO"
$StackTrace="debug da ação"

$trace="Inicio do programa"

Write-Output "" "$trace"

$vairavel123 = Read-Host "digita aí:"

if($variavel123 -eq "e aí"){
    $status="ok"
    $categoria="sucess"
    $mensagem="very good, it's all right!"
}else{
    $status="nok"
    $categoria="info"
    $mensagem="unfilled variable"
}

$TRACE = "Termino programa"

write-output "" "$status" "$categoria" "$mensagem" "$TRACE" ""


# mais completo
function funcao(){
    $trace="Inicio do programa"

    Write-Output "" "$trace" ""

    $vairavel123 = Read-Host "digita aí"

    if($variavel123 -eq "show"){
        $status="ok"
        $categoria="sucess"
        $mensagem="very good, it's all right!"
    }else{
        $status="nok"
        $categoria="info"
        $mensagem="unfilled variable"
    }

    $TRACE = "Termino programa"

    write-output "" "$status" "$categoria" "$mensagem" "" "$TRACE"
}

$agoraVai = funcao

# OBJETOS

# retorna o objeto com algumas propriedades
$servicos = Get-Service

# acessar apenas a coluna Status, Name ou DisplayName
$servicos.Status
$servicos.Name
$servicos.DisplayName

# filtrando campo especifico
$nome_spooler = $servicos | where-object {$_.Name -match "One"}
$nome_spooler = $servicos | where-object {$_.Name -match "One*"}
$nome_2 = $servicos | where-object {$_.Name -match "EventLog"}

# convertendo em json
$servicos | ConvertTo-Json

# adicionando valor
$servicos | Add-Member -Name "Propriedades" -Value "Valor"

# buscar um arquivo json e converter e shell script