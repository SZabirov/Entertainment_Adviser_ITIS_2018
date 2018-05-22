<html>
<head>
    <#include "links.ftl">
    <style>

    </style>
</head>
<body>
<#include "menu.ftl">
<div class="container">
    <h1>Мои друзья</h1>
<table class="table table-striped table-dark table-bordered table-hover">
    <thead>
    <tr>
        <th>username</th>
        <th>firstname</th>
        <th>Secondname</th>
    </tr>
    </thead>
    <tbody>
     <#list MyFriend as user>
     <tr>
         <td><a href="/user/${user.id}" </a>${user.username}</td>
         <td>${user.firstname}</td>
         <td>${user.secondname}</td>
     </tr>
     </#list>
    </tbody>
</table>
</div>
</body>
</html>