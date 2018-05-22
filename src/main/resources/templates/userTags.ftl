<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>User tags</title>
    <#include "links.ftl">
</head>
<body>
<#include "menu.ftl">
<div class="container">
    <h1>Мои теги</h1>
    <form action="/tags" method="post">
        <#include "csrf.ftl">
        <#list userTagList as userTag>
        <div class="form-group">
            <input type="checkbox" class="form-check-input" name="userTag" value="${userTag.id}" id="userTag${userTag.id}"
            <#if userTag.getChosen()??> <#if userTag.getChosen()> checked</#if> </#if>
            ><label for="userTag${userTag.id}">${userTag.tagName}</label><br>
        </div>
        </#list>
        <button type="submit"  class="btn btn-primary">Сохранить</button>
    </form>
</div>
</body>
</html>