---
layout: post
title: "Importando dados do OpenStreetMap ao PostgreSQL no Linux"
description: ""
category: tutoriais
tags: [osm2pgsql, linux, postgresql, postgis]
intro: "Não é difícil importar dados do OpenStreetMap no Linux, o sistema operacional utilizado nos servidores do projeto do mapa livre do mundo. Siga este tutorial para saber como usar a ferramenta osm2pgsql para popular uma base de dados PostgreSQL com todos os dados do território brasileiro."
---
{% include JB/setup %}

Este tutorial ensina como usar a ferramenta [osm2pgsql](https://github.com/openstreetmap/osm2pgsql) para popular uma base de dados [PostgreSQL](http://www.postgresql.org) com todos os dados do território brasileiro.

Foi usado o [Ubuntu versão 12.10](http://www.ubuntu.com), mas não devem ser encontrados problemas em versões recentes de distribuições Linux baseadas no [gerenciador de pacotes APT](http://pt.wikipedia.org/wiki/Advanced_Packaging_Tool).

## Instalando o [PostgreSQL](http://www.postgresql.org) e o [PostGIS](http://postgis.net/)

Verifique se o gerenciador de pacotes está atualizado:

    sudo apt-get update
    sudo apt-get upgrade
  
Instale o [PostgreSQL](http://www.postgresql.org):

    sudo apt-get install postgresql
    
Acesse o terminal do PostgreSQL como usuário 'postgres':

    sudo -u postgres psql postgres

Escolha uma senha para este usuário:

    \password postgres
    
Saia deste terminal com comando `\q`.

Crie o banco de dados 'osm', que vai receber os dados do [OpenStreetMap](www.openstreetmap.org):

    sudo -u postgres createdb osm

Instale a extensão espacial [PostGIS](http://postgis.net/), para poder armazenar tipos e fazer consultas geo-espaciais, executando:

    sudo apt-get install postgresql-9.1-postgis

Rode os scripts de instalação da extensão, como o usuário 'postgres':

    sudo su postgres
    psql -d osm < /usr/share/postgresql/9.1/contrib/postgis-1.5/postgis.sql
    psql -d osm < /usr/share/postgresql/9.1/contrib/postgis-1.5/spatial_ref_sys.sql
    
# Instalado o [osm2pgsql](https://github.com/openstreetmap/osm2pgsql) e populando o banco de dados

O [osm2pgsql](https://github.com/openstreetmap/osm2pgsql) é uma ferramenta de importação de dados do OSM ao PostgreSQL, e pode ser instalada com o seguinte comando:

    sudo apt-get install osm2pgsql

Para realizar a importação, é necessário baixar dados do OpenStreetMap. A [Geofabrik](http://www.geofabrik.de/), empresa alemã especializada no OpenStreetMap, oferece arquivos atualizados diariamente. Acesse a página de [downloads](http://download.geofabrik.de/) e baixe o arquivo [brazil-latest.osm.pbf](http://download.geofabrik.de/south-america/brazil-latest.osm.pbf) para um diretório local. 

Finalmente, execute o [osm2pgsql](https://github.com/openstreetmap/osm2pgsql) para proceder com a importação ao banco de dados:

    sudo -u postgres osm2pgsql -s -d osm ~/Downloads/brazil-latest.osm.pbf

# Resultados

Ao término da importação, a base de dados [PostgreSQL](http://www.postgresql.org) terá  as seguintes tabelas:

* *planet_osm_point*
* *planet_osm_line*
* *planet_osm_polygon*
* *planet_osm_roads*
* *planet_osm_nodes* (auxiliar)
* *planet_osm_ways* (auxiliar)
* *planet_osm_rels* (auxiliar)

As tabelas auxiliares foram criadas porque se utilizou a opção `-s`, que habilita o *slim mode*. Esta opção faz com que sejam utilizadas as tabelas auxiliares durante a importação, reduzindo a quantidade necessária de memória RAM. Se não fosse utilizada esta opção, todo arquivo de entrada seria carregado na memória, o que só é possível em servidores com boa especificação de hardware.

Já o esquema das outras tabelas, que contém os dados já processados, dependem do arquivo de estilo que está sendo adotado na importação. Como não foi especificado um arquivo diferente do padrão, foi utilizado o arquivo  `/usr/local/share/osm2pgsql/default.style`, que define um estilo otimizado para importações destinadas a renderização com o [Mapnik](http://wiki.openstreetmap.org/wiki/Mapnix).

Consulte o [wiki](http://wiki.openstreetmap.org/wiki/Osm2pgsql) para saber mais detalhes do osm2pgsql.