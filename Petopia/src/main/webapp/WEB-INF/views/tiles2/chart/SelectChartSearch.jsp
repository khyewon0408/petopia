<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath();%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<style>
.btn1{
	background-color:rgb(252, 118, 106); 
	color:white; 
	width:15%;
	height:8%;
	border-radius: 10px;
	margin-top:37%;
    padding-top:0;
 }
 .btn2{
	background-color:rgb(252, 118, 106); 
	color:white; 
	width:5%;
	height:8%;
	border-radius: 10px;
 }
 
 .div1{
    width:70%;
    heigth:40%;
    float:left;
 }
 

 .div2{
   width:25%;
   height:8%;
   overflow:hidden;
   margin-top: 5%;
   margin-right:20%; 
  
 }
</style>
<script type="text/javascript">
    
	$(document).ready(function(){
		
		
		$('#calendar').fullCalendar({
			  defaultView: 'month'
			});
		
		$('#calendar').fullCalendar({
			  schedulerLicenseKey: 'GPL-My-Project-Is-Open-Source'
			});
	});// end of $(document).ready()----------------------
</script>

<div class="container" style="margin-top: 3%; ">
   
   <h3 style="color:rgb(252, 118, 106);margin-left: 3%;" >진료 & 예약 관리</h3>
  
  <div class="div1">
	<div id="calendar"  class="calendar"
	 style ="border: 1px solid gray;
	   height:80%;width:80%;border-radius:10px; padding:3% 3% 3% 3%;margin-bottom: 3%; ">
	</div>
 </div>
	<div class="div2">  
	  <input type="text" class="input1"  placeholder="회원 이름으로 검색하기"/>
	  <button type="button" class="btn2" style="width:30%; height:50%">검색</button>
     </div> 
      <button  type="button" class="btn1">오늘 진료관리</button>
  </div>
   

</div>