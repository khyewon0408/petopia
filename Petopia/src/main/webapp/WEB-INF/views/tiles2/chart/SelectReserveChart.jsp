<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath();%>

<style>
#dropdown{
display: inline-block;
}
.div1{
  width:80%;
  height:80%;
  background-color: #eaebed;
  border:0px solid black;
  border-radius:10px;
  margin-bottom: 3%;
  margin-top: 3%;
}
h3 {
margin-left: 10%;
margin-top:2%;
color:rgb(252, 118, 106);
}
h4{
 margin-left: 10%;
 margin-top:2%;
 color:rgb(252, 118, 106);
}
table{
border: 1px solid grey;
}
td, th{
border: 1px solid grey;

}
th{
color:rgb(252, 118, 106);
}
</style>
 <div class="div1 container">
 <h3 >진료기록 검색하기</h3>
  <div class="dropdown"  style="margin-left: 10%; margin-top: 3%;">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" >진료 일자
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">2018/04/08</a></li>
      <li><a href="#">2018/05/24</a></li>
      <li><a href="#">2019/01/08</a></li>
    </ul>
   
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">진료 고객
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">**고객님/10:00</a></li>
      <li><a href="#">**고객님/15:00</a></li>
      <li><a href="#">**고객님/17:00</a></li>
    </ul>
      <button type="button" class="btn" style="background-color:rgb(252, 118, 106); color:white;">검색하기</button>
  </div>
  

<div style="margin: 0 auto;">    
<h4>진료기록</h4>         
  <table class="table" style="text-align: center;width:80%;margin: 0 auto;" >
    <thead>
      <tr>
        <th style="text-align: center;">코드</th>
        <th style="text-align: center;">명칭</th>
        <th style="text-align: center;">수술</th>
        <th style="text-align: center;">투약</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>A90</td>
        <td>뎅기열</td>
        <td><input type="checkbox"/></td>
        <td>투약</td>
    
    </tbody>
  </table>
</div>

<div style="margin: 0 auto;"> 
<h4>처방내역</h4>
         
  <table class="table" style="text-align:center;margin: 0 auto;width:80%;" >
    <thead>
      <tr>
        <th style="text-align: center;">처방코드</th>
        <th style="text-align: center;">명칭</th>
        <th style="text-align: center;">총용량</th>
        <th style="text-align: center;">일수</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>121</td>
        <td>세노바액</td>
        <td>6</td>
        <td>1</td>
    
    </tbody>
  </table>
</div>


<div style="margin: 0 auto; margin-bottom: 1%;"> 
<h4>메모 히스토리</h4> 
        
  <table class="table" style="text-align:center;margin: 0 auto; width:80%;" >
    <thead>
      <tr>
        <th style="text-align: center; width:80%;">메모 내용</th>
        <th style="text-align: center;width:20%;">메모작성 날짜</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> 와우 진상고객님</td>
       <td>2018/01/05</td>
    
    </tbody>
    </table>
    </div>

</div>