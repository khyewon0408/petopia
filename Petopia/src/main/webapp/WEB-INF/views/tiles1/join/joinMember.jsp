<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
	.profile label { 
		display: inline-block; 
		padding: 3% 4%;
		color: #999;
		font-size: inherit;
		line-height: normal; 
		vertical-align: middle; 
		cursor: pointer; 
	} 
	.profile input[type="file"] { 
		/* 파일 필드 숨기기 */
		position: absolute; 
		width: 1px; 
		height: 1px; 
		padding: 0; 
		margin: -1px; 
		overflow: hidden; 
		clip:rect(0,0,0,0); 
		border: 0; 
	}
	
	/* imaged preview */ 
	.filebox .upload-display { 
		/* 이미지가 표시될 지역 */ 
		margin-bottom: 5px; 
	} 
	
	@media(min-width: 768px) { 
		.filebox .upload-display { 
			display: inline-block; margin-right: 5px; margin-bottom: 0; 
		} 
	} 
	
	.filebox .upload-thumb-wrap { 
		/* 추가될 이미지를 감싸는 요소 */ 
		display: inline-block; 
		width: 54px; 
		padding: 2px; 
		vertical-align: middle; 
		border: 1px solid #ddd; 
		border-radius: 5px; 
		background-color: #fff; 
	} 
	
	.filebox .upload-display img { 
		/* 추가될 이미지 */
		display: block; 
		max-width: 100%; 
		width: 100% \9; 
		height: auto; 
	}


</style>

<script type="text/javascript">
	$(document).ready(function(){
	    $('.profile').css('height', $(".profile").width()-1);
	    
		$(window).resize(function() { 
			$('.profile').css('height', $(".profile").width());
	    });
		
		// 수정해서 사용****************
		var imgTarget = $('.preview-image .upload-hidden'); 
		imgTarget.on('change', function(){ 
			var parent = $(this).parent(); 
			parent.children('.upload-display').remove(); 
			if(window.FileReader){ 
				//image 파일만
				if (!$(this)[0].files[0].type.match(/image\//)) return; 
				var reader = new FileReader(); 
				reader.onload = function(e){ 
					var src = e.target.result; parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>'); 
				} 
				reader.readAsDataURL($(this)[0].files[0]); 
			} else { 
				$(this)[0].select(); 
				$(this)[0].blur(); 
				var imgSrc = document.selection.createRange().text; 
				parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>'); 
				var img = $(this).siblings('.upload-display').find('img'); 
				img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")"; 
			} 
		});

	});
	
</script>

<div class="col-md-12">
	<div class="col-md-offset-2 col-md-8" style="background-color: #f2f2f2;`">
		
		<div class="col-sm-12" align="center">
			<h2>일반회원 회원가입</h2>
		</div>
		
		<div class="row col-md-offset-2 col-md-8" style="margin-bottom: 15px;">
			<div class="col-sm-3 profile" style="background-color: #d9d9d9; height: 150px; border-radius: 100%;" align="center">
				<div style="margin-top: 35%;">
					<label for="profileimg">프로필</label>
					<input type="file" id="profileimg" name="profileimg"/>
				</div>
			</div>
		</div>
		<div class="filebox preview-image">
			<input class="upload-name" value="파일선택" disabled="disabled" >
			<label for="input-file">업로드</label>
			<input type="file" id="input-file" class="upload-hidden">
		</div>

		
	</div>
</div>