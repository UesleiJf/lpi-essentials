# dietasemanal.sh
## Esse script é um exemplo! Use-o para construir sua própria dieta com base nas indicações de sua nutricionista

Nota: a principal intenção desse script é servir como exemplo dos vários objetivos cobertos na prova LPI Linux Essentials (https://wiki.lpi.org/wiki/LinuxEssentials_Objectives_V1.6), com algumas informações adicionais. Para mais informações sobre como estudar para a prova Linux Essentials, visite http://brodtec.com/le

Simples script em bash para a criação de dieta semanal a partir de lista de equivalências de alimentos (usei a lista fornecida pela Unimed Vale do Taquari e Rio Pardo - https://www.unimed.coop.br/web/vtrp

Baixe todos os arquivos para uma pasta em seu computador que possua um interpretador bash shell

Dê as permissões devidas para os scripts:

chmod u+x dietasemanal.sh

chmod u+x imprimir.sh

Por padrão, os comandos apresentam o resultado na tela. Para manter uma versão que possa ser impressa, use a sintaxe:

./dietasemanal.sh > semana_NNMM

Exemplo:

./dietasemanal.sh > semana_0104 # para a primeira semana do mês de abril

O script imprimir.sh é um exemplo de como gerar uma lista de compras. Hoje ele está "hardcoded". Exemplo de uso:

sh dietasemanal.sh > dietasemanal.txt && sh imprimir.sh > lista.txt

less lista.txt

less dietasemanal.txt
