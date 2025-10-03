<%@ page language="java" import="java.util.*"%>


<!-- Simple data Rendering by Using Java-->
<%-- 
<h1 style="color:red; text-align:center">Model Attribute Data</h1>
<br><br>

<b> Model attribute (simple values) :: ${name}, ${course} ${fee} </b> 
--%>

<!-- array and collection data Rendering by Using Java-->
<%-- 
<b>Model Attribute (Arrays and Collection)</b><br>
  <% 
      String course[] = (String[])request.getAttribute("course");
      List<String> favColor = (List<String>)request.getAttribute("favColor");
      Set<String> friends = (Set<String>)request.getAttribute("friends");
      Map<String,Object> mobileNum = (Map<String, Object>)request.getAttribute("mobileNumber");
      
  %>
  <b>Course ::<%= Arrays.toString(course) %></b><br>
  <b>FavColor ::<%= favColor %></b><br>
  <b>Friends :: <%= friends %></b><br>
  <b>MobileNumber :: <%= mobileNum %></b><br>
   --%>

<!-- Array and collection data rendering by using JSTL (JSP Standard Tag Library) -->

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 
<h1 style="color: red; text-align: center">Array and Collection DATA rendering</h1>

          <h1 style="color:blue; text-align:center">Array DS(Course) </h1>
          
<c:if test="${!empty course}">
	<ul>
		<c:forEach var="crs" items="${course}">
			<li style="color:red;text-align:center;list-style-type:none">${crs}</li>
		</c:forEach>
	</ul>
</c:if>


           <h1 style="color:blue; text-align:center">List DS(FavColor) </h1>
<c:if test="${favColor ne null }">
	<ul>
		<c:forEach var="color" items="${favColor}">
			<li style="color:red;text-align:center;list-style-type:none">${color}</li>
		</c:forEach>
	</ul>
</c:if>

            <h1 style="color:blue; text-align:center">Set DS(Friends) </h1>
<c:if test="${friends ne null}">
	        <ul>
				<c:forEach var="fr" items="${friends}">
					<li style="color:red;text-align:center;list-style-type:none">${fr}</li>
				</c:forEach>
			</ul>
</c:if>

        <h1 style="color:blue; text-align:center">Map DS(MobileNumber) </h1>
<c:if test="${mobileNumber ne null}">
		<c:forEach var="num" items="${mobileNumber}">
			<li style="color:red;text-align:center;list-style-type:none">${num }</li>
		</c:forEach>
	</ul>
</c:if>


--%>
                             <!--  Model class object data -->

<%-- 
<h1 style="color: red; text-align: center">Model class object data rendering(Model Attribute)</h1>
<c:if test="${!empty stdDat}">
      Student Details :: ${stdData}<br>
      Student Details :: ${stdData.id },${staData.name },${stdData.addr },${stdData.fee}<br>
</c:if>
 --%>
 
                           <!-- Multiple Model class object data -->
 
 <h1 style="color: red; text-align: center">Multiple Model class object data rendering(Model Attribute)</h1>
  <c:choose>
   <c:when test="${!empty stdInfo}">
      <table border="1" bgcolor="cyan" align="center">
      <tr><th>ID</th><th>NAME</th><th>ADDR</th><th>FEE</th></tr>
          <c:forEach var="st" items="${stdInfo}">
                <tr>
                  <td>${st.id}</td>
                  <td>${st.name}</td>
                  <td>${st.addr}</td>
                  <td>${st.fee}</td>
                </tr>
          </c:forEach>
      </table>
   </c:when>
    <c:otherwise>
     <h1 style="color:red; text-align:center">No Records Found</h1>
    </c:otherwise>
  </c:choose>




















