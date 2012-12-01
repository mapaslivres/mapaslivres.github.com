---
layout: page
---
{% include JB/setup %}


<div class="row">
  <div class="span9">
    <div class="miniposts">
      {% for post in site.posts %}
        <div class="minipost row">
          <div class="minipost-img span3">
            <img src="{{ BASE_PATH }}/images/mapamundi-small.png">
          </div>
          <div class="minipost-info span6">
            <div class="minipost-date postinfo">
              Publicado em {{post.date | date: "%d/%m/%Y" }}
            </div>
            <h2>
              <a href="{{ BASE_PATH }}{{post.url}}">
                {{post.title}}
              </a>
            </h2>
            <p>
              {{post.intro}}              
            </p>
          </div>
        </div>
      {% endfor %}
    </div>    
  </div>
  <div class="span3">
    <div class="navbox">
      <h2>
        links
      </h2>
      <ul>
        <li><a href="http://www.openstreetmap.org" target="_blank">site do openstreetmap</a></li>        
        <li><a href="https://www.openstreetmap.org/user/new" target="_blank">criar uma conta no osm</a></li>
        <li><a href="http://wiki.openstreetmap.org" target="_blank">wiki do openstreetmap</a></li>
        <li><a href="http://lists.openstreetmap.org/listinfo/talk-br" target="_blank">lista de discussão do brasil</a></li>
      </ul>
    </div>
  </div> 
</div>



 


