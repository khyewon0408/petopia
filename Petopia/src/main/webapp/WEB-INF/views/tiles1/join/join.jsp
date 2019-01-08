<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
	.joinSelectDiv {
		height: 400px;
		padding: 1%;
	}
	
	.joinSelect {
		background-color: #d9d9d9;
		height: 100%;
		padding-top: 150px;
	}
	
	.changColor {
		background-color: rgb(252, 118, 106);
	}
</style>

<script type="text/javascript">
	
	$(document).ready(function(){
		
		$(".joinSelect").hover(function(){
				$(this).addClass("changColor");
			}, function(){
				$(this).removeClass("changColor");
		});
		
		$(".joinSelect").hover();
		
	}); // end of $(document).ready()
	
	function goBizMemberJoin() {
		
	} // end of function goBizMemberJoin()
	
	function goMemberJoin() {
		
	} // end of function goMemberJoin()
	
</script>

<div class="col-md-12">
	<div class="col-md-offset-2 col-md-8" style="background-color: #f2f2f2"> <!-- 색 : rgb(252, 118, 106) -->
		<div class="col-md-12" align="center">
			<h2>가입하기</h2>
		</div>
		
		<div class="col-md-12">
			<div class="col-md-offset-2 col-md-8">
				<div class="col-md-offset-1 col-md-5 joinSelectDiv" align="center" onclick="goBizMemberJoin();">
					<div class="joinSelect">
						<div class="row">
							<img src="<%=request.getContextPath() %>/resources/img/memberIcon/hospital.png">
							<img src="<%=request.getContextPath() %>/resources/img/memberIcon/drugstore.png">
						</div>
						
						<div class="row">
							<h4 style="color: white; font-weight: bolder;">병원/약국 회원(기업회원)</h4>
						</div>
					</div>
				</div>
				
				<div class="col-md-5 joinSelectDiv" align="center" onclick="goMemberJoin();">
					<div class="joinSelect">
						<img src="<%=request.getContextPath() %>/resources/img/memberIcon/pet.png">
						<h4 style="color: white; font-weight: bolder;">일반 회원</h4>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</div>