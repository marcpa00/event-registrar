
<%@ page import="ca.marcpa.eventregistrar.Notification" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notification.label', default: 'Notification')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-notification" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-notification" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list notification">
			
				<g:if test="${notificationInstance?.sendNotificationOn}">
				<li class="fieldcontain">
					<span id="sendNotificationOn-label" class="property-label"><g:message code="notification.sendNotificationOn.label" default="Send Notification On" /></span>
					
						<span class="property-value" aria-labelledby="sendNotificationOn-label"><g:formatDate date="${notificationInstance?.sendNotificationOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificationInstance?.notificationSentDate}">
				<li class="fieldcontain">
					<span id="notificationSentDate-label" class="property-label"><g:message code="notification.notificationSentDate.label" default="Notification Sent Date" /></span>
					
						<span class="property-value" aria-labelledby="notificationSentDate-label"><g:formatDate date="${notificationInstance?.notificationSentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificationInstance?.dateLastChecked}">
				<li class="fieldcontain">
					<span id="dateLastChecked-label" class="property-label"><g:message code="notification.dateLastChecked.label" default="Date Last Checked" /></span>
					
						<span class="property-value" aria-labelledby="dateLastChecked-label"><g:formatDate date="${notificationInstance?.dateLastChecked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificationInstance?.reasonNotSent}">
				<li class="fieldcontain">
					<span id="reasonNotSent-label" class="property-label"><g:message code="notification.reasonNotSent.label" default="Reason Not Sent" /></span>
					
						<span class="property-value" aria-labelledby="reasonNotSent-label"><g:fieldValue bean="${notificationInstance}" field="reasonNotSent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificationInstance?.notificationSent}">
				<li class="fieldcontain">
					<span id="notificationSent-label" class="property-label"><g:message code="notification.notificationSent.label" default="Notification Sent" /></span>
					
						<span class="property-value" aria-labelledby="notificationSent-label"><g:formatBoolean boolean="${notificationInstance?.notificationSent}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificationInstance?.subscription}">
				<li class="fieldcontain">
					<span id="subscription-label" class="property-label"><g:message code="notification.subscription.label" default="Subscription" /></span>
					
						<span class="property-value" aria-labelledby="subscription-label"><g:link controller="subscription" action="show" id="${notificationInstance?.subscription?.id}">${notificationInstance?.subscription?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:notificationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${notificationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
