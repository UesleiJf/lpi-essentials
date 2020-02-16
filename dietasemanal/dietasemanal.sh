#!/bin/bash
#
# Criação de dieta semanal com base na indicação da nutricionista
# Esse script é um exemplo! Use-o para construir sua própria dieta com base nas indicações de sua própria nutricionista
# Cesar Brod, abril de 2019
# 
# Recomendação de uso:
#
# ./dietasemanal.sh > dietasemanal.txt
#
# Imprima ou guarde o arquivo dietasemanal.txt
#
# ./imprimir.sh > listasuper.txt
#
# Gera uma lista de compras para o supermercado
#
# Arquivos importantes
#
# arroz.txt - arroz e seus substitutos
# carne.txt - tipos de carne e substitutos
# cereais.txt
# frutas.txt
# gordura.txt
# leguminosas.txt
# leite.txt - leite e seus substitutos
# oleaginosa.txt - opções de sementes oleaginosas
# receita.txt - opções de receita completa
# sementes.txt - sementes para usar na salada
# vegetal-livre.txt - vegetais que podem ser comidos à vontade (três deles por salada)
# vegetal.txt - vegetais com carboidratos notáveis, apenas um por salada
 
echo "============================="
echo "Dieta semanal para SEU_NOME  "
echo "============================="
echo
for dia in Segunda Terça Quarta Quinta Sexta Sábado Domingo; do
  echo "***********"
  echo " $dia"
  echo "***********"
  echo
  echo "09h00 Café da manhã"
  sort -R frutas.txt | head -n 1
  sort -R cereais.txt | head -n 1
  echo
  echo "12h00 Almoço"
  sort -R carne.txt | head -n 1
  sort -R arroz.txt | head -n 1
  sort -R leguminosas.txt | head -n 1
  echo "Salada com:"
  sort -R vegetal-livre.txt | head -n 3
  sort -R vegetal.txt | head -n 1
  sort -R sementes.txt | head -n 1
  sort -R gordura.txt | head -n 1
  echo
  echo "15h00 Lanche da tarde 1"
  sort -R frutas.txt | head -n 2
  sort -R cereais.txt | head -n 1
  echo
  echo "18h00 Lanche da tarde 2"
  sort -R leite.txt | head -n 1
  sort -R sementes.txt | head -n 1
  echo
  echo "20h30 Jantar"
  sort -R receita.txt | head -n 1
  sort -R carne.txt | head -n 1
  echo "Salada com:"
  sort -R vegetal-livre.txt | head -n 3
  sort -R vegetal.txt | head -n 1
  sort -R gordura.txt | head -n 1
  echo
  echo "22h30 Ceia"
  echo
  sort -R oleaginosa.txt | head -n 1
  echo
done
