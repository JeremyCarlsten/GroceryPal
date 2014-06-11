<%@ page import="grocerypal.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="100" required="" value="${productInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="255" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'stockKeepingUnitNumber', 'error')} required">
	<label for="stockKeepingUnitNumber">
		<g:message code="product.stockKeepingUnitNumber.label" default="Stock Keeping Unit Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="stockKeepingUnitNumber" cols="40" rows="5" maxlength="255" required="" value="${productInstance?.stockKeepingUnitNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: productInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'priceHistory', 'error')} required">
	<label for="priceHistory">
		<g:message code="product.priceHistory.label" default="Price History" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="priceHistory" value="${fieldValue(bean: productInstance, field: 'priceHistory')}" required=""/>
</div>

