---
layout: post
title: "Traduzindo as ferramentas do OpenStreetMap"
description: ""
category: 
tags: [traduções]
intro: "O OpenStreetMap tem diversas ferramentas de processamento, edição, análise, validação e renderização dos dados do projeto. Um desafio é manter estas ferramentas traduzidas para idiomas além do inglês, e este post mostra por onde começar a ajudar nesta tarefa."
---
{% include JB/setup %}

Diferentemente da Wikipedia, que se baseia quase que exclusivamente na plataforma [MediaWiki](http://www.mediawiki.org) para controlar edições e distribuir de conteúdo, o [OpenStreetMap](http://www.openstreetmap.org) é constituído apenas de um pequeno núcleo, que é uma [API](http://wiki.openstreetmap.org/wiki/API_v0.6) que permite operações em uma base de dados [PostgreSQL](http://www.postgresql.org/download/). Outras atividades essenciais, como a geração do mapa ou edição dos dados, ficam a cargo de ferramentas desenvolvidas de maneira independente por voluntários ou outras organizações.

Este modelo estimulou o surgimento de um conjunto de softwares relacionados ao projeto, fornecendo uma boa variedade de ferramentas para as atividades de processar, editar, analisar e validar dados, além de, obviamente, representá-los em um mapa. Exemplos de softwares desenvolvidos para o OpenStreetMap, são: 

* Processamento: [Osmosis](http://wiki.openstreetmap.org/wiki/Osmosis), [Osmium](http://wiki.openstreetmap.org/wiki/Osmium), [Osm2pgsql](http://wiki.openstreetmap.org/wiki/Osm2pgsql)
* Edição: [JOSM](http://wiki.openstreetmap.org/wiki/Josm), [Potlach](http://wiki.openstreetmap.org/wiki/Potlach), [Merkaator](http://wiki.openstreetmap.org/wiki/Merkaartor), [iD](http://wiki.openstreetmap.org/wiki/ID)
* Análise: [Taginfo](http://wiki.openstreetmap.org/wiki/Taginfo)
* Validação: [Keep Right](http://wiki.openstreetmap.org/wiki/Keep_Right), [MapDust](http://wiki.openstreetmap.org/wiki/MapDust)
* Renderização: [Mapnik](http://wiki.openstreetmap.org/wiki/Mapnik), [Osmarender](http://wiki.openstreetmap.org/wiki/Osmarender)

A língua principal destes softwares é o inglês, mas alguns oferecem a possibilidade de tradução a outro idioma. O desafio é manter estas ferramentas com suas traduções atualizadas, porque esta é uma atividade que tem menor apelo para a participação voluntária, por não ser ligada diretamente com o objetivo do projeto, que é produzir e distribuir dados abertos geo-espaciais.

A página do wiki do OpenStreetMap sobre traduções é um excelente ponto de partida para encontrar informações sobre como e onde ajudar:

<http://wiki.openstreetmap.org/wiki/Translations>

A lista abaixo contém links diretos para as páginas de tradução de algumas 
ferramentas:

* JOSM: <https://translations.launchpad.net/josm>
* Potlach: <http://translatewiki.net/w/i.php?title=Special:Translate&group=out-osm-potlatch2-main>
* iD: <https://github.com/systemed/iD/blob/master/CONTRIBUTING.md#translating>
* Taginfo: <https://github.com/joto/taginfo/tree/master/web/i18n>
* Site do OpenStreetMap: <http://translatewiki.net/w/i.php?title=Special:Translate&group=out-osm-site>

O português está disponível na maioria das ferramentas, mas, em algumas, de maneira parcial. Por exemplo, até o momento, **apenas 56% das strings do JOSM estão traduzidas ao português brasileiro**, enquanto que há 86% traduzidas para o espanhol e 100% para italiano. 

A qualidade do mapa de um território no OpenStreetMap depende muito da quantidade de mapeadores e da coesão da comunidade local. Garantir a tradução das ferramentas é atividade fundamental para fortalecer uma comunidade e deixar o mapa cada vez melhor.
