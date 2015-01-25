
<%@ page import="ca.marcpa.eventregistrar.IndividualSubscription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'individualSubscription.label', default: 'IndividualSubscription')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-individualSubscription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-individualSubscription" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="individualSubscription.subscribed.label" default="Subscribed" /></th>
					
						<th><g:message code="individualSubscription.waitingLine.label" default="Waiting Line" /></th>
					
						<g:sortableColumn property="subscriberFirstName" title="${message(code: 'individualSubscription.subscriberFirstName.label', default: 'Subscriber First Name')}" />
					
						<g:sortableColumn property="subscriberLastName" title="${message(code: 'individualSubscription.subscriberLastName.label', default: 'Subscriber Last Name')}" />
					
						<g:sortableColumn property="subscriberEmail" title="${message(code: 'individualSubscription.subscriberEmail.label', default: 'Subscriber Email')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'individualSubscription.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${individualSubscriptionInstanceList}" status="i" var="individualSubscriptionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${individualSubscriptionInstance.id}">${fieldValue(bean: individualSubscriptionInstance, field: "subscribed")}</g:link></td>
					
						<td>${fieldValue(bean: individualSubscriptionInstance, field: "waitingLine")}</td>
					
						<td>${fieldValue(bean: individualSubscriptionInstance, field: "subscriberFirstName")}</td>
					
						<td>${fieldValue(bean: individualSubscriptionInstance, field: "subscriberLastName")}</td>
					
						<td>${fieldValue(bean: individualSubscriptionInstance, field: "subscriberEmail")}</td>
					
						<td>${fieldValue(bean: individualSubscriptionInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${individualSubscriptionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
