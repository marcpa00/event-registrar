
<%@ page import="ca.marcpa.eventregistrar.IndividualSubscription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'individualSubscription.label', default: 'IndividualSubscription')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-individualSubscription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-individualSubscription" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list individualSubscription">
			
				<g:if test="${individualSubscriptionInstance?.subscribed}">
				<li class="fieldcontain">
					<span id="subscribed-label" class="property-label"><g:message code="individualSubscription.subscribed.label" default="Subscribed" /></span>
					
						<span class="property-value" aria-labelledby="subscribed-label"><g:link controller="event" action="show" id="${individualSubscriptionInstance?.subscribed?.id}">${individualSubscriptionInstance?.subscribed?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${individualSubscriptionInstance?.waitingLine}">
				<li class="fieldcontain">
					<span id="waitingLine-label" class="property-label"><g:message code="individualSubscription.waitingLine.label" default="Waiting Line" /></span>
					
						<span class="property-value" aria-labelledby="waitingLine-label"><g:link controller="event" action="show" id="${individualSubscriptionInstance?.waitingLine?.id}">${individualSubscriptionInstance?.waitingLine?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${individualSubscriptionInstance?.subscriberFirstName}">
				<li class="fieldcontain">
					<span id="subscriberFirstName-label" class="property-label"><g:message code="individualSubscription.subscriberFirstName.label" default="Subscriber First Name" /></span>
					
						<span class="property-value" aria-labelledby="subscriberFirstName-label"><g:fieldValue bean="${individualSubscriptionInstance}" field="subscriberFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${individualSubscriptionInstance?.subscriberLastName}">
				<li class="fieldcontain">
					<span id="subscriberLastName-label" class="property-label"><g:message code="individualSubscription.subscriberLastName.label" default="Subscriber Last Name" /></span>
					
						<span class="property-value" aria-labelledby="subscriberLastName-label"><g:fieldValue bean="${individualSubscriptionInstance}" field="subscriberLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${individualSubscriptionInstance?.subscriberEmail}">
				<li class="fieldcontain">
					<span id="subscriberEmail-label" class="property-label"><g:message code="individualSubscription.subscriberEmail.label" default="Subscriber Email" /></span>
					
						<span class="property-value" aria-labelledby="subscriberEmail-label"><g:fieldValue bean="${individualSubscriptionInstance}" field="subscriberEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${individualSubscriptionInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="individualSubscription.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${individualSubscriptionInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:individualSubscriptionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${individualSubscriptionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
