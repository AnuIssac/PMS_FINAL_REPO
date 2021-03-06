
<!-- author: Pankaj sankpal
description: contains fields to add new faculty member->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Add Faculty Members Manually </title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</head>
<body 	onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
	<jsp:directive.include file="Header.jsp" />

	<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>

					<div class="page-content">
						

						<div class="page-header">
							<h1>
								Logged in as
								<c:out value="${sessionScope.name}" />
							</h1>
						</div><!-- /.page-header -->
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="clearfix">
								
										<div class="row">
										<div class="col-xs-12 ">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div>
													<form:form method="POST"  modelAttribute="facultyBean" action="registerFaculty">
														<h2 align="center"><u>Add Faculty</u></h2>
														<c:if test="${error==1}">
															<p style="color:red;">This user already exists in the database!</p>
														</c:if>
														<c:if test="${success==1}">
															<p style="color:green;">User added successfully!</p>
														</c:if>
															<table align="center" style="padding-top: 10px"  >
																<tr >
																	<td>ID :</td>
																	<td><form:input path="userId" /></td>
																	<td><form:errors path="userId" cssClass="error" /></td>
																</tr><br>
																<tr >
																	<td>Name :</td>
																	<td style="padding-top: 10px"><form:input path="name" /></td>
																	<td><form:errors path="name" cssClass="error" /></td>
																</tr><br>
																<tr ">
																	<td style="padding-top: 10px">Branch :</td>
																	<td style="padding-top: 10px"><form:select path="branch">
																			<form:option value="0" label="Select" />
																			<form:option value="Computer Engineering"  label="Computer" />
																			<form:option value="IT Engineering" label="IT" />
																			<form:option value="Electronics Engineering" label="Electronics" />
																			<form:option value="Production Engineering" label="Production" />
																		</form:select></td>
																</tr>
																
																
																<tr>
																	<td>Gender :</td>
																	<td><form:radiobutton path="gender" value="MALE" label="Male" />
																		<form:radiobutton path="gender" value="FEMALE" label="Female" /></td>
																		<td><form:errors path="gender" cssClass="error" /></td>
																</tr>
																
																<tr>
																	<td>Email ID :</td>
																	<td><form:input path="email" /></td>
																	<td><form:errors path="email" cssClass="error" /></td>
																</tr>
																<tr><td></td></tr>
																
																<tr >
																
																	<td colspan="2" style="padding-top: 10px"><input  class="btn btn-md btn-success" type="submit" value="Add Faculty"></td>
																</tr>
															</table>
														</form:form>
												
												<br><br>
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>

										
									</div>
										
								
								
								</div>
							</div>
							

	
		<jsp:directive.include file="scripts.jsp" />
		<jsp:directive.include file="Footer.jsp" />
	<!-- ace scripts -->
						</div>
					</div>
				</div>
												

	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	
		<!-- /.main-container -->

</div>
	
	


</body>
</html>



<%--

<!--
 Filename : addFaculty.jsp
 Author name: Crystal Cuthinho
 Description: used for adding faculty members manually by tpo/ admin. Mapping goes to ManageUserController.
 -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Faculty</title>
</head>
<body>
	<form:form method="POST"  modelAttribute="facultyBean" action="registerFaculty">
	<h2><u>Add Faculty</u></h2>
	
	<c:if test="${error==1}">
			<p style="color:red;">This user already exists in the database!</p>
		</c:if>
		<table>
			<tr>
				<td>ID :</td>
				<td><form:input path="userId" /></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Branch :</td>
				<td><form:select path="branch">
						<form:option value="0" label="Select" />
						<form:option value="Computer Engineering"  label="Computer" />
						<form:option value="IT Engineering" label="IT" />
						<form:option value="Electronics Engineering" label="Electronics" />
						<form:option value="Production Engineering" label="Production" />
					</form:select></td>
			</tr>
			
			
			<tr>
				<td>Gender :</td>
				<td><form:radiobutton path="gender" value="MALE" label="Male" />
					<form:radiobutton path="gender" value="FEMALE" label="Female" /></td>
			</tr>
			
			<tr>
				<td>Email ID :</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr><td></td></tr>
			
			<tr>
			
				<td colspan="2"><input type="submit" value="Add Faculty"></td>
			</tr>
		</table>
	</form:form>


</body>
</html>


 --%>

