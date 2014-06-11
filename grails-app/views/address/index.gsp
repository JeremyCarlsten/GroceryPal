
<%@ page import="grocerypal.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-address" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address1" title="${message(code: 'address.address1.label', default: 'Address1')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'address.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'address.city.label', default: 'City')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'address.state.label', default: 'State')}" />
					
						<g:sortableColumn property="zipCode" title="${message(code: 'address.zipCode.label', default: 'Zip Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressInstanceList}" status="i" var="addressInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "address1")}</g:link></td>
					
						<td>${fieldValue(bean: addressInstance, field: "address2")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "state")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "zipCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${addressInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
