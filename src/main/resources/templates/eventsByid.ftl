<html lang="ru">
<head>
    <#include "links.ftl">
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<#include "menu.ftl">
<div class="container">
<form action="/events/{id}" method="get">
<#list getEventById as Event>
    <img src="${Event.getImage()}" style="height: 200px; margin: 20px 20px 20px 0; display: block;">
    <h1>${Event.name}</h1>
    <h5>${Event.description}</h5>
</#list>
    <h4 style="margin-top: 15px;">Теги мероприятия</h4>
    <#list tags as tag>
        <li>${tag.getTagName()}</li>
    </#list>
</form>
</div>
</body>
</html>