<!DOCTYPE html>
<%@page import="bairesdev.Category"%>
<%@page import="bairesdev.Currency"%>
<html lang="en" ng-app="glabApp">
<head>
<g:render template="/template/header" />
<g:set var="entityName"
	value="${message(code: 'category.label', default: 'Category')}" />
</head>
<body>
	<div id="wrapper">
		<g:render template="/template/navigator" />
		<!-- Page Content -->
		<div id="page-wrapper" ng-controller="dashboardController">

			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
				
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="dataTable_wrapper">
							<g:form url="[resource:category, action:'update']" method="PUT">
								<fieldset class="form">
										<!-- Code -->
										<div class="form-group">
											<div
												class="fieldcontain ${hasErrors(bean: category, field: 'name', 'error')} required">
												<label class="control-label col-sm-2" for="code"> <g:message
														code="category.name.label" default="Name" /> <span
													class="required-indicator">*</span>
												</label>
												<g:textField name="name" required="" value="${category?.name}" />
											</div>
										</div>
										<!-- Description -->
										<div class="form-group">
											<div
												class="fieldcontain ${hasErrors(bean: category, field: 'description', 'error')} required">
												<label class="control-label col-sm-2" for="description"> <g:message
														code="category.description.label" default="Description" />
													<span class="required-indicator">*</span>
												</label>
												<g:textField name="description" required=""
													value="${category?.description}" />
											</div>
										</div>
									</fieldset>
								<fieldset class="buttons">
									<div class="row">
										<div class="col-lg-12">
											<p class="navbar-btn">
												<g:actionSubmit class="btn btn-primary" action="update"
													value="Save" />
												<a href="${createLink(action: 'index')}" class="btn btn-primary">Cancel</a>
											</p>
										</div>
									</div>
								</fieldset>
							</g:form>
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