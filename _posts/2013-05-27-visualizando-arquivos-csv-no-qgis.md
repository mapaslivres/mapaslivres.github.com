---
layout: post
title: "Visualizando arquivos .csv no QGIS"
description: ""
category: Tutoriais
tags: [qgis, ibge, censo, csv, xls, script, ftp, github]
intro: "O IBGE disponibiliza em seu FTP diversos arquivos sobre o Censo 2010, e entre eles estão resultados agregados por setores censitários. Este tutorial mostra como transformá-los estes dados para .csv (valores separados por vírgula) e como visualizá-los no Quantum GIS."
---
{% include JB/setup %}

O IBGE disponibiliza em seu [FTP](ftp://ftp.ibge.gov.br) diversos arquivos sobre o [Censo 2010](ftp://ftp.ibge.gov.br/Censos/Censo_Demografico_2010), entre eles, resultados [agregados por setores censitários](ftp://ftp.ibge.gov.br/Censos/Censo_Demografico_2010/Resultados_do_Universo/Agregados_por_Setores_Censitarios). Os formatos disponíveis são Excel (.xls) e Valores Separados por Vírgula (.csv). 

Ao baixar os arquivos, percebe-se que os arquivos .csv tem o campo de identificação de setores corrompido, o que os torna inutilizáveis. Um script foi desenvolvido para resolver este problema. Ele transforma os arquivos .xls disponíveis em arquivos .csv corretos. O [código fonte](https://github.com/mapaslivres/censo-2010-agregado-por-setor) está disponível do [GitHub do Mapas Livres](https://github.com/mapaslivres).

## Rodando o script

Para gerar os arquivos você mesmo, clone o repositório do GitHub em um diretório local:

    git clone https://github.com/mapaslivres/censo-2010-agregado-por-setor.git

Vá ao [FTP do IBGE](ftp://ftp.ibge.gov.br/Censos/Censo_Demografico_2010/Resultados_do_Universo/Agregados_por_Setores_Censitarios), baixe e descompacte os arquivos que você quer transformar, na mesma pasta do script. 

Você deve descompactar cada arquivo em uma pasta com o mesmo nome do arquivo compactado. No OS X este é o comportamento padrão, mas pode ser que no seu sistema operacional seja diferente.

Você pode baixar um ou mais arquivos, pois o script irá interpretar os diretórios que estiverem na pasta e que iniciarem com a palabra 'Base'.

Após descompactar os arquivos, rode:

    ruby interpretar.rb
    
Isto fará com que sejam gerados novos diretórios contendo os arquivos transformados. Os arquivos .csv contém os dados em si, e os .csvt contém a descrição dos tipos (ex.: String, Integer, Float) dos campos do .csv. Para saber o que há em cada arquivo, consulte a [documentação fornecida pelo IBGE](https://github.com/mapaslivres/censo-2010-agregado-por-setor/raw/master/Base%20de%20informac%CC%A7o%CC%83es%20por%20Setor%20Censita%CC%81rio%20-%20Censo%202010%20-%20Universo.pdf).



## Visualizando um arquivo .csv no Quantum GIS

Agora vamos ao que interessa. Para visualizar as informações dos arquivos .csv em um mapa, é necessário um shapefile com os limites do setores censitários, que podem ser encontrados no [FTP de arquivos geoespaciais do IBGE](ftp://geoftp.ibge.gov.br/malhas_digitais/censo_2010/setores_censitarios/). 

Neste tutorial vamos utilizar os arquivos do Distrito Federal, que podem ser baixados diretamente [aqui]({{ BASE_PATH }}/arquivos/tutorial-qgis-e-csv.zip).

Primeiro, adicione a camada do shapefile do setores:

<div class="minipost img">
  <img src="{{ BASE_PATH }}/images/tutorial-qgis-e-csv-imagem-1.png">
</div>

Da mesma maneira como foi feito com o shapefile, carregue o arquivo .csv:

<div class="minipost img">
  <img src="{{ BASE_PATH }}/images/tutorial-qgis-e-csv-imagem-2.png">
</div>

Abra a janela de propriedades do shapefile (com o botão direito) e na aba "Uniões" adicione a relação entre os campos de identificação dos setores no shapefile e no .csv:

<div class="minipost img">
  <img src="{{ BASE_PATH }}/images/tutorial-qgis-e-csv-imagem-3.png">
</div>

A tabela de atributos do shapefile agora contará com informações do .csv, e isto possibilita criar um estilo de mapa a partir das variáveis do censo. Aqui, vamos utilizar a variável "V05", que é o valor médio do rendimento nominal mensal das pessoas responsáveis por domicílios particulares permanentes nos setores censitários. Crie um estilo baseado nesta variável:

<div class="minipost img">
  <img src="{{ BASE_PATH }}/images/tutorial-qgis-e-csv-imagem-4.png">
</div>

O resultado será este:

<div class="minipost img">
  <img src="{{ BASE_PATH }}/images/tutorial-qgis-e-csv-imagem-5.png">
</div>

Pronto. Estes são os passos gerais para utilizar um arquivo .csv para gerar uma visualização com referenciada espacialmente no QGIS. 

Comentários são bem vindos!