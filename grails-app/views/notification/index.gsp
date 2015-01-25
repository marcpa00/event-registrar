
<%@ page import="ca.marcpa.eventregistrar.Notification" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notification.label', default: 'Notification')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-notification" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-notification" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="sendNotificationOn" title="${message(code: 'notification.sendNotificationOn.label', default: 'Send Notification On')}" />
					
						<g:sortableColumn property="notificationSentDate" title="${message(code: 'notification.notificationSentDate.label', default: 'Notification Sent Date')}" />
					
						<g:sortableColumn property="dateLastChecked" title="${message(code: 'notification.dateLastChecked.label', default: 'Date Last Checked')}" />
					
						<g:sortableColumn property="reasonNotSent" title="${message(code: 'notification.reasonNotSent.label', default: 'Reason Not Sent')}" />
					
						<g:sortableColumn property="notificationSent" title="${message(code: 'notification.notificationSent.label', default: 'Notification Sent')}" />
					
						<th><g:message code="notification.subscription.label" default="Subscription" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${notificationInstanceList}" status="i" var="notificationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${notificationInstance.id}">${fieldValue(bean: notificationInstance, field: "sendNotificationOn")}</g:link></td>
					
						<td><g:formatDate date="${notificationInstance.notificationSentDate}" /></td>
					
						<td><g:formatDate date="${notificationInstance.dateLastChecked}" /></td>
					
						<td>${fieldValue(bean: notificationInstance, field: "reasonNotSent")}</td>
					
						<td><g:formatBoolean boolean="${notificationInstance.notificationSent}" /></td>
					
						<td>${fieldValue(bean: notificationInstance, field: "subscription")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${notificationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
