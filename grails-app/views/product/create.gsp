<!DOCTYPE html>
<%@page import="bairesdev.Category"%>
<%@page import="bairesdev.Currency"%>
<html lang="en" ng-app="glabApp">
<head>
<g:render template="/template/header" />
<g:set var="entityName"
	value="${message(code: 'product.label', default: 'Product')}" />
</head>
<body>
	<div id="wrapper">
		<g:render template="/template/navigator" />
		<!-- Page Content -->
		<div id="page-wrapper" ng-controller="dashboardController">
			<div class="row">
				<div class="row voffset2"></div>
			</div>
			<div class="container-fluid">
				
				<div class="row">
					<div class="col-lg-12">
						<div class="dataTable_wrapper">
							<div class="form-group">
								<g:form url="[resource:product, action:'save']" method="PUT">
									<fieldset class="form">
										<!-- Code -->
										<div class="form-group">
											<div
												class="fieldcontain ${hasErrors(bean: product, field: 'code', 'error')} required">
												<label class="control-label col-sm-2" for="code"> <g:message
														code="product.code.label" default="Code" /> <span
													class="required-indicator">*</span>
												</label>
												<g:textField name="code" required="" value="${product?.code}" />
											</div>
										</div>
										<!-- Description -->
										<div class="form-group">
											<div
												class="fieldcontain ${hasErrors(bean: product, field: 'description', 'error')} required">
												<label class="control-label col-sm-2" for="description"> <g:message
														code="product.description.label" default="Description" />
													<span class="required-indicator">*</span>
												</label>
												<g:textField name="description" required=""
													value="${product?.description}" />
											</div>
										</div>
										<!-- Price -->
										<div class="form-group">
											<div
												class="fieldcontain ${hasErrors(bean: product, field: 'price', 'error')} required">
												<label class="control-label col-sm-2" for="price"> <g:message
														code="product.price.label" default="Price" /> <span
													class="required-indicator">*</span>
												</label>
												<g:field name="price"
													value="${fieldValue(bean: product, field: 'price')}"
													required="" />
											</div>
										</div>
										<!-- Category -->
										<div class="form-group">
											<div
												class="fieldcontain ${hasErrors(bean: product, field: 'categories', 'error')} ">
												<label class="control-label col-sm-2" for="categories"> <g:message
														code="product.categories.label" default="Categories" />
												</label>
												<g:select name="categories" from="${Category.list()}"
													multiple="multiple" optionKey="name" size="5" optionValue="${{it.name}}"
													value="${product?.categories*.name}" />
											</div>
										</div>
										<!-- Currency -->
										<div class="form-group">
											<div
												class="fieldcontain ${hasErrors(bean: product, field: 'currency', 'error')} required">
												<label class="control-label col-sm-2" for="currency"> <g:message
														code="product.currency.label" default="Currency" /> <span
													class="required-indicator">*</span>
												</label>
												<g:select name="currency" from="${Currency.values()}"
													value="${product?.currency}" />
											</div>
										</div>
									</fieldset>
									<fieldset class="buttons">
										<div class="row">
											<div class="col-lg-12">
												<p class="navbar-btn">
													<g:actionSubmit class="btn btn-primary" action="save"
														value="Save" />
													<a href="${createLink(action: 'index')}"
														class="btn btn-primary">Cancel</a>
												</p>
											</div>
										</div>
									</fieldset>
								</g:form>
							</div>
						</div>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
			<script type="text/javascript">
				$(document).ready(function() {
					$('#dataTables-devices').dataTable();
				});
			</script>
		</div>
	</div>
	<g:render template="/template/body" />
</body>
</html>