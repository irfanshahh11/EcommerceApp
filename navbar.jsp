<%@ include file="cartnullqty.jsp" %>
<%-- Get the current page URL --%>
<% String currentPage = request.getRequestURI(); %>
	
	<div style='margin-top: 20px;
	display: flex;
	justify-content: space-around;
	align-items: flex-start;
	 '>
	
<b>	<a href="cartnull.jsp" class="w3-bar-item w3-button" ><img src = images/cart.png height=40px alt=Cart></a>

	<b style="position: relative;
  top: 16px;
  right: 37px;"><span style="height: 25px;
  width: 25px;
  background-color: red;
  border-radius: 50%;
  display: inline-block"><b style="color:white"><center><%=tqty %></center></b></span></b>
	</b>
	
	<a href="customer_reg.jsp" class="w3-bar-item w3-button"><b>Customer Registration</b></a>
	
	<a href="customerlogin.jsp" class="w3-bar-item w3-button"><b>Customer Login</b></a>
	
	<a href="adminlogin.jsp" class="w3-bar-item w3-button"><b>Admin Login</b></a>
	
	<a href="contactus.jsp" class="w3-bar-item w3-button"><b>Contact Us</b></a>
	
	
	</div>
	
	<center>
	
	<b class="w3-wide" style="width:250px"> <h3><b>Online Electronic Shopping</b></h3></b>
	
	<div class="w3-large w3-text-grey" style="font-weight:bold">
	
		<a href="index.jsp" class="w3-bar-item w3-button <%= currentPage.contains("index.jsp") ? "active" : "" %>">Home</a>&ensp;
		
		<a href="category.jsp" class="w3-bar-item w3-button <%= currentPage.contains("category.jsp") ? "active" : "" %>">View Category</a>&ensp;
		
		<a href="tv.jsp" class="w3-bar-item w3-button <%= currentPage.contains("tv.jsp") ? "active" : "" %>">Tv</a>&ensp;
		
		<a href="laptop.jsp" class="w3-bar-item w3-button <%= currentPage.contains("laptop.jsp") ? "active" : "" %>">Laptop</a>&ensp;
		
		<a href="mobile.jsp" class="w3-bar-item w3-button <%= currentPage.contains("mobile.jsp") ? "active" : "" %>">Mobile</a>&ensp;
		
		<a href="watch.jsp" class="w3-bar-item w3-button <%= currentPage.contains("watch.jsp") ? "active" : "" %>">Watch</a>&ensp;
		
		<a href="viewproduct.jsp" class="w3-bar-item w3-button <%= currentPage.contains("viewproduct.jsp") ? "active" : "" %>">View All Product</a>&ensp;
		
		<a href="aboutus.jsp" class="w3-bar-item w3-button <%= currentPage.contains("aboutus.jsp") ? "active" : "" %>">About Us</a>&ensp;
	
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