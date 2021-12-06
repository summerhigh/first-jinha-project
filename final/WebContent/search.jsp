<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search.jsp</title>
<meta charset="utf-8"> <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <title>부트스트랩 테이블 만들기</title> <!-- 부트스트랩 --> <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> <!-- 부트스트랩 테이블 --> <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.css">

<!-- Jquery 가져오기 --> 
<script src="https://code.jquery.com/jquery-3.3.1.min.js" 
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" 
		crossorigin="anonymous"></script> 
<!-- bootstrap 가져오기 --> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" 
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" 
		crossorigin="anonymous"></script> 
<!-- bootstrap table 가져오기 --> 
<script src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>

<style type="text/css">

	#writeCheck{text-align: right; padding: 20pt; }
</style>

</head>
<body>

<div id="writeCheck">
	<button>체크리스트 작성</button>
</div>



<!-- bootstrap container --> 
<div class="container"> 
	<table>
		<tr>
			<th>알아볼 내용</th>
		</tr>
		<tr>
			<th>분류</th>
			<td>
				<select>
					<option>- 선택 -</option>
					<option>나의 체크리스트</option>
					<option>북마크</option>
					<option>지역 정보</option>
				</select>
			</td>
			<th>지역</th>
			<td>
				<select>
					<option>- 선택 -</option>
					<option value="1">강남구</option>
					<option value="2">강동구</option>
					<option value="3">강북구</option>
					<option value="4">강서구</option>
					<option value="5">관악구</option>
					<option value="6">광진구</option>
					<option value="7">구로구</option>
					<option value="8">금천구</option>
					<option value="9">노원구</option>
					<option value="10">도봉구</option>
					<option value="11">동대문구</option>
					<option value="12">동작구</option>
					<option value="13">마포구</option>
					<option value="14">서대문구</option>
					<option value="15">서초구</option>
					<option value="16">성동구</option>
					<option value="17">성북구</option>
					<option value="18">송파구</option>
					<option value="19">양천구</option>
					<option value="20">영등포구</option>
					<option value="21">용산구</option>
					<option value="22">은평구</option>
					<option value="23">종로구</option>
					<option value="24">중구</option>
					<option value="25">중랑구</option>
				</select>  구
			</td>
			<td>
				<select>
				<option>- 선택 -</option>
				<option value="1">서초1동 </option>
				<option value="2">서초2동 </option>
				<option value="3">서초3동 </option>
				<option value="4">서초4동 </option>
				<option value="5">잠원동 </option>
				<option value="6">반포본동 </option>
				<option value="7">반포1동  </option>
				<option value="8">반포2동 </option>
				<option value="9">반포3동</option>
				<option value="10">반포4동 </option>
				<option value="11">방배본동 </option>
				<option value="12">방배1동 </option>
				<option value="13">방배2동 </option>
				<option value="14">방배3동 </option>
				<option value="15">방배4동 </option>
				<option value="16">양재1동 </option>
				<option value="17">양재2동 </option>
				<option value="18">내곡동</option>
			</select>  동
			</td>
		</tr>
		<tr>
			<th>비교할 내용</th>
		</tr>
		<tr>
			<td>
			<input type="checkbox" name="checks" id="a" value="월세"  /><label for="a">월세</label>
			<input type="checkbox" name="checks" id="b" value="전세"  /><label for="b">전세</label>
			<input type="checkbox" name="checks" id="c" value="매매"  /><label for="c">매매</label>
			<input type="checkbox" name="checks" id="d" value="치안"  /><label for="d">치안</label>
			<input type="checkbox" name="checks" id="e" value="대중교통"  /><label for="e">대중교통</label>
			<input type="checkbox" name="checks" id="f" value="교통혼잡도"  /><label for="f">교통혼잡도</label>
			<input type="checkbox" name="checks" id="g" value="생활편의시설"  /><label for="g">생활편의시설</label>
			<input type="checkbox" name="checks" id="h" value="반려동물"  /><label for="h">반려동물</label>
			</td>
		</tr>
		<tr>
			<th>나의 해시태그</th>
		</tr>
		<tr>
			<td>
				<p>#연남동 #스세권 #회사30분컷 #살고싶은동네 # 신축 #산책로있음 <br>
			 	 #살아봤던동네 #11월20일
				</p>
			</td>
		</tr>
	</table>
	<!-- bootstrap 테이블 생성 --> 
	 <table data-toggle="table">
		<tr> 
			<th>분류</th> 
			<th>지역</th> 
			<th>제목</th> 
			<th>보증금</th> 
			<th>월세</th>
			<th>치안</th> 
			<th>나의해시태그</th>
		</tr> 
		<tr> 
			<td>나의 체크리스트</td>
			<td>관악구 신림동</td> 
			<td>신림역 좋아보임!</td> 
			<td>3000</td>
			<td>40</td>
			<td>3.5</td>
			<td>#회사30분컷</td>
		</tr> 
		<tr> 
			<td>북마크</td> 
			<td>양천구 목동</td> 
			<td>양천구 정보...</td> 
			<td>2000</td> 
			<td>60</td> 
			<td>4</td> 
			<td>#산책로있음 #신축</td> 
			
		</tr> 
		<tr> 
			<td>지역 정보</td> 
			<td>마포구 합정동</td> 
			<td>마포구 합정동 평균</td> 
			<td>3000</td> 
			<td>40</td> 
			<td>3.7</td> 
			<td>#신축 #살고싶은동네</td> 
		</tr> 
	</table> 
</div>



</body>
</html>