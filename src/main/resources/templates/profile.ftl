<html>
<head>
    <#include "links.ftl">
</head>
<body>
<#include "menu.ftl">
<div class="container">

 <#list user_profile as user>
     <#if currentUser.id == user.id>
    <h1>Профиль</h1>
    <form action="/create" method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="form-group has-success">
            <label class="col-md-form-label" for="inputSuccess1">Username:</label>
            <input type="text" class="form-control form-control-success" id="username" name="username" value="${user.username}">
        </div>
        <div class="form-group has-success">
            <label class="col-md-form-label" for="inputSuccess1">Firstname:</label>
            <input type="text" class="form-control form-control-success" id="firstname" name="firstname" value="${user.firstname}">
        </div>
        <div class="form-group has-success">
            <label class="col-md-form-label" for="inputSuccess1">Secondname:</label>
            <input type="text" class="form-control form-control-success" id="secondname" name="secondname" value="${user.secondname}">
        </div>
        <button type="submit" class="btn btn-warning">Сохранить изменения</button>
    </form>
     </#if>
     <#if currentUser.id != user.id>
      <form action="/add" method="post">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <h1>Профиль</h1>
          <div class="row" style="margin-top:20px;">
              <input type="hidden" name="username" id="username" value="${user.username}">
              <div class="col-md-2">Username:</div>
              <div class="col-md-10">${user.username}</div>
          </div>
          <div class="row" style="margin-top:15px;">
              <input type="hidden" name="secondname" id="secondname" value="${user.firstname}">
              <div class="col-md-2">Firstname:</div>
              <div class="col-md-10">${user.firstname}</div>
          </div>
          <div class="row" style="margin-top:15px;">
              <input type="hidden" name="secondname" id="secondname" value="${user.secondname}">
              <div class="col-md-2">Secondname:</div>
              <div class="col-md-10">${user.secondname}</div>
          </div>
          <button type="submit" class="btn btn-outline-success" style="margin-top:20px;">Добавить в друзья</button>
      </form>
        </form>
    </div>
     </#if>
 </#list>
</div>
</body>
</html>





