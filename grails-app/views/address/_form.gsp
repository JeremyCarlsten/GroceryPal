<%@ page import="grocerypal.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'address1', 'error')} required">
	<label for="address1">
		<g:message code="address.address1.label" default="Address1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address1" maxlength="100" required="" value="${addressInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="address.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" maxlength="100" value="${addressInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" maxlength="100" required="" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" maxlength="100" required="" value="${addressInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode">
		<g:message code="address.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipCode" maxlength="9" required="" value="${addressInstance?.zipCode}"/>
</div>

