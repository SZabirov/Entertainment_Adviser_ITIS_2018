<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>All events</title>
    <#include "links.ftl">
    <style>
        #glaw {
            display:inline;
            width:680px;
        }
        .clrred {
            color: red;
        }
        .clrgreen{
            color: green;
        }
        .blok1 {
            float:left;
            margin: 3px 3px 3px 5px;
            width:350px;
            height:430px;
            padding: 10px;
            text-align: center;
            border-radius: 15px;
        }
        .blok2 {
            float:left;
            margin: 3px 3px 3px 5px;
            width:300px;
            height:200px;
            text-align: center;
        }
    </style>
</head>
<body>
<#include "menu.ftl">
<div class="container">
    <div class="row">
        <div class="col-md-10" >
        <h1>Мероприятия</h1>
        </div>
        <div class="col-md-2">
            <form class="form-inline my-2 my-lg-0" action="/myevents" method="get" style="padding: 8px 16px 8px 16px">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Подобрать мероприятия</button>
            </form>
        </div>
    </div>
<form action="/events" method="get">
    <#list getAllevents as Event>
    <div id="glaw">
        <div class="blok1">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="${Event.getImage()}" width="300" height="130" alt="">
                        <div class="caption">
                            <div class="blok2">
                                <h3><a href="/events/${Event.id}">${Event.name}</a></h3>
                                <p>${Event.description}</p>
                                <p>Адрес: ${Event.address}</p>
                            </div>
                            <#if "${Event.status}" == "Окончено">
                            <div class="clrred"><p>${Event.status}</p></div>
                            <#else>
                            <div class="clrgreen"><p>${Event.status}</p></div>
                            </#if>
                            <p><a href="#" class="btn btn-primary" role="button">Я пойду</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#list>
</form>
</div>
</body>
</html>