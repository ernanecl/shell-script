'
em shell precisamos inserir qual vai ser o seu compilador

caminho absoluto:
    #!/bin/bash
**não é recomendado manter o caminho absoluto, outras distribuições são caminhos diferentes

recomendado usar o caminho:
    #!/usr/bin/env bash
nesse caso, o "env" busca o bash dentro das variáveis de ambiente
'
#!/usr/bin/env bash

'
ver permissões de arquivos e diretórios:
    ll
    ls -l
    ls -la

para dar permissão:
    chmod +x file_name.sh

para executar o arquivo shell:
    ./file_name.sh
'