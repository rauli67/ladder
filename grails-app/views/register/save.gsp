<!doctype html>
<html>
<head>
    <meta name='layout' content='main'/>
    <r:require modules="application"/>
    <title>Register</title>
</head>

<body>
<div class="page-header">
    <h1><g:message code="register.label"/></h1>
</div>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:hasErrors>
    <div class="errors">
        <g:renderErrors bean="${profile}" as="list"/>
    </div>
</g:hasErrors>
<div class="well">
    <g:form action="save" class="form-horizontal">
        <fieldset>
            <div class="control-group">
                <label class="control-label" for="username">E-mail <span class="required-indicator">*</span></label>

                <div class="controls">
                    <g:textField name="username" value="${params.username}"/>
                    <p>Your e-mail address is also your username.</p></div>
            </div>

            <div class="control-group">
                <label class="control-label" for="password">Password <span class="required-indicator">*</span>
                </label>

                <div class="controls">
                    <g:passwordField name="password"/></div>
            </div>

            <div class="control-group">
                <label class="control-label" for="passwordRepeat">Repeat password <span
                        class="required-indicator">*</span></label>

                <div class="controls">
                    <g:passwordField name="passwordRepeat"/></div>
            </div>

            <div class="control-group">
                <label class="control-label" for="firstName">First name <span class="required-indicator">*</span>
                </label>

                <div class="controls">
                    <g:textField name="firstName" value="${params.firstName}"/></div>
            </div>

            <div class="control-group">
                <label class="control-label" for="lastName">Last name <span class="required-indicator">*</span>
                </label>

                <div class="controls">
                    <g:textField name="lastName" value="${params.lastName}"/></div>
            </div>
        </fieldset>

        <div class="form-actions">
            <g:submitButton name="register"
                            value="${message(code: 'default.button.register.label', default: 'Register')}"
                            class="btn btn-primary"/>
            <g:link controller="home" class="btn"><g:message code="default.button.cancel.label"/></g:link>
        </div>
    </g:form></div>
</body>
</html>