<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'site.label', default: 'Site')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

    <h1>MODIFICACION INDEX SITE PARA PROBAR GITHUB</h1>
    <h2>Titulo2</h2>

        <a href="#list-site" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-site" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:each var="site" in="${siteList}">
                -------------
                <p>Name: ${site.name}</p>
                <p>String: ${site.idSite}</p>
                <g:if test="${"${site.active}"=='true'}">
                    <p style="color:green;">Sitio activo</p>

                </g:if>
                <g:else>
                    <p style="color:red;">Sitio inactivo</p>
                </g:else>
            </g:each>
            <div class="pagination">
                <g:paginate total="${siteCount ?: 0}" />
            </div>
        </div>
    </body>
</html>