---
layout: post
title: "Elementos básicos do OpenStreetMap"
description: ""
category: 
tags: []
intro: "Para começar a contribuir com o OpenStreetMap é necessário conhecer os elementos básicos de mapeamento. Este post explica quais são, e como representar um bicicletário no OpenStreetMap. Não existe restrições para adicionar, editar ou remover elementos do OpenStreetMap, assim como suas tags podem assumir qualquer valor. Isto proporciona muita flexibilidade sobre o que pode ser mapeado..."
---
{% include JB/setup %}

Os elementos básicos que compõem o modelo de dados do OpenStreetMap são **nós**, **caminhos** e **relações**, todos estes combinados com **etiquetas** ou ***tags*** que definem o que elemento representa no mundo real.

Não existe restrições para adicionar, editar ou remover elementos do OpenStreetMap, assim como suas ***tags*** podem assumir qualquer valor. Isto proporciona muita flexibilidade sobre o que pode ser mapeado, mas traz a necessidade de se ter um “idioma” para que as pessoas que produzem e utilizam dados do OpenStreetMap possam compartilhar sem dificuldades.

Este "idioma" são as convenções de ***tags*** definidas pela comunidade do OpenStreetMap. A lista está no wiki, nesta página:

[http://wiki.openstreetmap.org/wiki/Map_Features](http://wiki.openstreetmap.org/wiki/Map_Features)

Esta página deveria estar nos favoritos de todo bom mapeador. Aí é possível encontrar praticamente tudo o que as pessoas  vem mapeando no OpenStreetMap. Existe uma versão em português também, mas geralmente está desatualizada por falta de tradução:

[Map Features em Português](http://wiki.openstreetmap.org/wiki/Pt-br:Map_Features)

Nesta página do wiki é possível descobrir que para adicionar um bicicletário ao mapa é necessário usar a ***tag*** "amenity=bicycle_parking", e que podemos associar outras ***tags*** para ter mais informação sobre o bicicletário a ser mapeado, como as seguintes:

* "capacity" = o número de bicicletas que podem ser estacionadas;
* "covered" = se o bicicletário tem cobertura; 
* "access=" = se o bicletário é público ou não; 
* "fee=" = se é cobrado para usar o bicicletário.

Veja toda a descrição da tag:

[http://wiki.openstreetmap.org/wiki/Tag:amenity=bicycle_parking](http://wiki.openstreetmap.org/wiki/Tag:amenity=bicycle_parking)