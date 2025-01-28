<%@ include file="cartnullqty.jsp" %>
<%-- Get the current page URL --%>
<% String currentPage = request.getRequestURI(); %>
	
	<div style='margin-top: 20px;
	display: flex;
	justify-content: space-around;
	align-items: flex-start;
	 '>
	
<b>	<a href="cartnull.jsp" class="w3-bar-item w3-button" ><img src = images/cart.png height=40px alt=Cart></a>

	<!-- <b style="position: relative;
  top: 16px;
  right: 37px;"><span style="height: 25px;
  width: 25px;
  background-color: red;
  border-radius: 50%;
  display: inline-block"><b style="color:white"><center><%=tqty %></center></b></span></b> -->
	</b>
	
	<a href="addproduct.jsp" class="w3-bar-item w3-button"  ><b>Add Product</b></a>
	
	<a href = "managecustomers.jsp" class="w3-bar-item w3-button" ><b>Manage Customers</b></a>
	
	<a href = "managetables.jsp" class="w3-bar-item w3-button" ><b>Manage Tables</b></a>
	
	<a href="adminlogin.jsp" class="w3-bar-item w3-button"  ><b>Admin Logout</b></a>&ensp;
	
	
	</div>
	
	<center>
	
	<b class="w3-wide" style="width:250px"> <h3><b>Online Electronic Shopping</b></h3></b>
	
	<div class="w3-large w3-text-grey" style="font-weight:bold">
	
		<a href="adminhome.jsp" class="w3-bar-item w3-button <%= currentPage.contains("adminhome.jsp") ? "active" : "" %>">Home</a>&ensp;
		
		<a href="categorya.jsp" class="w3-bar-item w3-button <%= currentPage.contains("categorya.jsp") ? "active" : "" %>">View Category</a>&ensp;
		
		<a href="tva.jsp" class="w3-bar-item w3-button <%= currentPage.contains("tva.jsp") ? "active" : "" %>">Tv</a>&ensp;
		
		<a href="laptopa.jsp" class="w3-bar-item w3-button <%= currentPage.contains("laptopa.jsp") ? "active" : "" %>">Laptop</a>&ensp;
		
		<a href="mobilea.jsp" class="w3-bar-item w3-button <%= currentPage.contains("mobilea.jsp") ? "active" : "" %>">Mobile</a>&ensp;
		
		<a href="watcha.jsp" class="w3-bar-item w3-button <%= currentPage.contains("watcha.jsp") ? "active" : "" %>">Watch</a>&ensp;
		
		<a href="viewproducta.jsp" class="w3-bar-item w3-button <%= currentPage.contains("viewproduct.jsp") ? "active" : "" %>">View All Product</a>&ensp;
		
	
	</div>
	<hr>
	
	<style>
		h1, h2, h3, h4, h5, h6 {
			margin: 20px 0 20px 0;
		}
	
		.w3-bar-item, .w3-button {
			border-radius: 15px;
			padding: 10px 15px;
			text-decoration: none;
			transition: background 0.3s;
		}
	
		/* Default Button Hover */
		.w3-button:hover {
			background-color: #ffa500;
			color: white;
		}
	
		/* Active Page Style */
		.w3-button.active {
			background-color: #fc9900 !important;
			color: white !important;
		}
	</style>