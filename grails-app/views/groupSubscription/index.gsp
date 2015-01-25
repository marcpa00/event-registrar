
<%@ page import="ca.marcpa.eventregistrar.GroupSubscription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'groupSubscription.label', default: 'GroupSubscription')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-groupSubscription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-groupSubscription" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="groupSubscription.subscribed.label" default="Subscribed" /></th>
					
						<th><g:message code="groupSubscription.waitingLine.label" default="Waiting Line" /></th>
					
						<g:sortableColumn property="contactFirstName" title="${message(code: 'groupSubscription.contactFirstName.label', default: 'Contact First Name')}" />
					
						<g:sortableColumn property="contactLastName" title="${message(code: 'groupSubscription.contactLastName.label', default: 'Contact Last Name')}" />
					
						<g:sortableColumn property="contactEmail" title="${message(code: 'groupSubscription.contactEmail.label', default: 'Contact Email')}" />
					
						<g:sortableColumn property="groupSize" title="${message(code: 'groupSubscription.groupSize.label', default: 'Group Size')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${groupSubscriptionInstanceList}" status="i" var="groupSubscriptionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${groupSubscriptionInstance.id}">${fieldValue(bean: groupSubscriptionInstance, field: "subscribed")}</g:link></td>
					
						<td>${fieldValue(bean: groupSubscriptionInstance, field: "waitingLine")}</td>
					
						<td>${fieldValue(bean: groupSubscriptionInstance, field: "contactFirstName")}</td>
					
						<td>${fieldValue(bean: groupSubscriptionInstance, field: "contactLastName")}</td>
					
						<td>${fieldValue(bean: groupSubscriptionInstance, field: "contactEmail")}</td>
					
						<td>${fieldValue(bean: groupSubscriptionInstance, field: "groupSize")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${groupSubscriptionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
