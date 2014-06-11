<%@ page import="grocerypal.Store" %>



<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="store.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${storeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'products', 'error')} required">
	<label for="products">
		<g:message code="store.products.label" default="Products" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="products" from="${grocerypal.Product.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${storeInstance?.products*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'locations', 'error')} required">
	<label for="locations">
		<g:message code="store.locations.label" default="Locations" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="locations" from="${grocerypal.Address.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${storeInstance?.locations*.id}" class="many-to-many"/>
</div>

