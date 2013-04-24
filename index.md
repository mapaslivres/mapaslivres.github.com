---
layout: page
image: 
---
{% include JB/setup %}


<div class="row">
  <div class="span9">
    <div class="miniposts">
      {% for post in site.posts %}
        <div class="minipost row">
          <h6 class="post-info">
            {{post.date | date: "%d.%m.%Y" }}
          </h6>
          <h2 class="headline">
            <a href="{{ BASE_PATH }}{{post.url}}">
              {{post.title}}              
            </a>
          </h2>
          <div class="minipost img span3">
            <img src="{{ BASE_PATH }}/images/mapamundi-small.png">
          </div>
          <div class="minipost-info span6">
            <p>
              {{post.intro}}
              <a href="{{ BASE_PATH }}{{post.url}}" class="more-link">→ Ler mais</a>
            </p>
            <p>

              {% unless post.categories == empty %}
                {% assign categories_list = post.category %}
                {% include JB/categories_inline_list %}
              {% endunless %}  

              
              //
              
              {% unless post.tags == empty %}
                {% assign tags_list = post.tags %}
                {% include JB/tags_inline_list %}
              {% endunless %}  
              
            </p>
          </div>
        </div>


      {% endfor %}
    </div>    
  </div>
</div>



 



