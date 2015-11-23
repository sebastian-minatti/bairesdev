<!DOCTYPE html>
<html lang="en" ng-app="glabApp">
<head>
<g:render template="/template/header" />
<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
</head>
<body>
	<div id="wrapper">
		<g:render template="/template/navigator" />
		<!-- Page Content -->
		<div id="page-wrapper" ng-controller="dashboardController">

			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<p class="navbar-btn">
							<a href="${createLink(action: 'create')}" class="btn btn-primary">Add</a>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="dataTable_wrapper">						
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-devices">
								<thead>
									<tr>
										<th>Code</th>
										<th>Description</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<g:each in="${products}" var="product">
										<tr>
											<td>
												${product.code}
											</td>
											<td>
												${product.description}
											</td>
		    								<td>
		    									<g:set var="map" value="[id: product.code]" />	
		    									<a href="${createLink(action: 'edit', params: map)}"><span class="glyphicon glyphicon-edit"></span> Edit</a>
		    									<a href="${createLink(action: 'delete', params: map)}"><span class="glyphicon glyphicon-trash"></span> Delete</a>
		    								</td>											
										</tr>
									</g:each>
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
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