<html>
  <head>
    <title>Hacker News</title>
    <link rel="stylesheet" href="/public/css/new.css" />
  </head>
  <body>
    <ul class="news-view view">
      {% for item in list %}
      <li class="item">
        <a href="{{ item.url }}">
            {{ item.title }}
           <span class="time">{{ helper.relativeTime(item.time) }}</span>
        </a>
       
      </li>
      {% endfor %}
    </ul>
  </body>
</html>