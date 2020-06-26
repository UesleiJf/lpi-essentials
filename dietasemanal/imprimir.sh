#!/bin/bash
cat dietasemanal.txt | sed '/^$/d' | grep -Ev '(Salada|Café|Lanche|Almoço|Jantar|Ceia|Segunda|Terça|Quarta|Quinta|Sexta|Sábado|Domingo|=|\*)' | sort | uniq | sort | cut -d, -f1 | sed -e 's/^[[:space:]]*//'
