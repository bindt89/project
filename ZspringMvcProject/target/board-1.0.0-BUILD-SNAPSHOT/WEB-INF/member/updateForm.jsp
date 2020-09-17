<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<c:set var="path" value="<%=request.getContextPath() %>"></c:set>

<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>
<form action=${path }/member/update"  method="get" name="frm">
 
 	<div id="tit">
        <br>
        <b><font size="6" color="goold">회원가입</font></b>
        <br><br>



		<table>
             <!--   <tr>
					<td id="mai" >이름</td> 
					<td colspan="1" align="left">&emsp;<input type="text" name="name"
						autofocus="autofocus" required="required" class="from-cintol">
					</td>
				</tr>
                        
                <tr>
					<td id="mai">아이디</td> 
					<td colspan="2" align="left">&emsp;<input type="text"  name="id" required="required"
						class="from-cintol"> <input type="button" value="중복확인">
					</td>
				</tr> -->


				<tr>
					<td id="mai">비밀번호</td>
					<td colspan="1" align="left" >&emsp;<input type="password" name="password" maxlength="50">
					</td>
				</tr>

				<tr>
					<td id="mai" >비밀번호 확인</td>
					<td colspan="1" align="left">&emsp;<input type="password" name="passwordcheck" maxlength="50">
					</td>
				</tr>
                   
               <!--  <tr>
                    <td id="mai">성별</td> 
                    <td colspan="1" align="left"> &emsp;
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr>
                    
             	<tr>
					<td id="mai">생년월일</td> 
					<td colspan="1" align="left"> &emsp;<input type="date" name="birthdate"
						required="required" class="from-cintol"></td>
				</tr>
				 -->
                <tr>
                    <td id="mai">이메일</td>
                    <td colspan="1" align="left"> &emsp;
                        <input style="text-indent: 90px;" type="text" name="email1" maxlength="50">@
                        <select name="email2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                    
     
                <tr>
					<td id="mai"  >핸드폰</td>
					<td colspan="3" align="left"> &emsp;
					 <select  name="hp" class="sel" aria-label="전화번호 입력">
                                        <option value="1671" >
                                            괌 +1 671
                                        </option>
                                        <option value="30" >
                                            그리스 +30
                                        </option>
                                        <option value="234" >
                                            나이지리아 +234
                                        </option>
                                        <option value="27" >
                                            남아프리카공화국 +27
                                        </option>
                                        <option value="31" >
                                            네덜란드 +31
                                        </option>
                                        <option value="977" >
                                            네팔 +977
                                        </option>
                                        <option value="47" >
                                            노르웨이 +47
                                        </option>
                                        <option value="64" >
                                            뉴질랜드 +64
                                        </option>
                                        <option value="82" selected>
                                            대한민국 +82
                                        </option>
                                        <option value="45" >
                                            덴마크 +45
                                        </option>
                                        <option value="49" >
                                            독일 +49
                                        </option>
                                        <option value="7" >
                                            러시아/카자흐스탄 +7
                                        </option>
                                        <option value="961" >
                                            레바논 +961
                                        </option>
                                        <option value="40" >
                                            루마니아 +40
                                        </option>
                                        <option value="352" >
                                            룩셈부르크 +352
                                        </option>
                                        <option value="853" >
                                            마카오 +853
                                        </option>
                                        <option value="60" >
                                            말레이시아 +60
                                        </option>
                                        <option value="52" >
                                            멕시코 +52
                                        </option>
                                        <option value="377" >
                                            모나코 +377
                                        </option>
                                        <option value="212" >
                                            모로코 +212
                                        </option>
                                        <option value="960" >
                                            몰디브 +960
                                        </option>
                                        <option value="976" >
                                            몽골 +976
                                        </option>
                                        <option value="1" >
                                            미국/캐나다 +1
                                        </option>
                                        <option value="880" >
                                            방글라데시 +880
                                        </option>
                                        <option value="58" >
                                            베네수엘라 +58
                                        </option>
                                        <option value="84" >
                                            베트남 +84
                                        </option>
                                        <option value="32" >
                                            벨기에 +32
                                        </option>
                                        <option value="375" >
                                            벨라루스 +375
                                        </option>
                                        <option value="359" >
                                            불가리아 +359
                                        </option>
                                        <option value="55" >
                                            브라질 +55
                                        </option>
                                        <option value="966" >
                                            사우디아라비아 +966
                                        </option>
                                        <option value="221" >
                                            세네갈 +221
                                        </option>
                                        <option value="94" >
                                            스리랑카 +94
                                        </option>
                                        <option value="46" >
                                            스웨덴 +46
                                        </option>
                                        <option value="41" >
                                            스위스 +41
                                        </option>
                                        <option value="34" >
                                            스페인 +34
                                        </option>
                                        <option value="421" >
                                            슬로바키아 +421
                                        </option>
                                        <option value="386" >
                                            슬로베니아 +386
                                        </option>
                                        <option value="963" >
                                            시리아 +963
                                        </option>
                                        <option value="65" >
                                            싱가포르 +65
                                        </option>
                                        <option value="971" >
                                            아랍에미리트 +971
                                        </option>
                                        <option value="374" >
                                            아르메니아 +374
                                        </option>
                                        <option value="54" >
                                            아르헨티나 +54
                                        </option>
                                        <option value="354" >
                                            아이슬란드 +354
                                        </option>
                                        <option value="353" >
                                            아일랜드 +353
                                        </option>
                                        <option value="994" >
                                            아제르바이잔 +994
                                        </option>
                                        <option value="93" >
                                            아프가니스탄 +93
                                        </option>
                                        <option value="593" >
                                            에콰도르 +593
                                        </option>
                                        <option value="503" >
                                            엘살바도르 +503
                                        </option>
                                        <option value="44" >
                                            영국 +44
                                        </option>
                                        <option value="967" >
                                            예멘 +967
                                        </option>
                                        <option value="968" >
                                            오만 +968
                                        </option>
                                        <option value="43" >
                                            오스트리아 +43
                                        </option>
                                        <option value="504" >
                                            온두라스 +504
                                        </option>
                                        <option value="962" >
                                            요르단 +962
                                        </option>
                                        <option value="598" >
                                            우루과이 +598
                                        </option>
                                        <option value="998" >
                                            우즈베키스탄 +998
                                        </option>
                                        <option value="380" >
                                            우크라이나 +380
                                        </option>
                                        <option value="964" >
                                            이라크 +964
                                        </option>
                                        <option value="98" >
                                            이란 +98
                                        </option>
                                        <option value="972" >
                                            이스라엘 +972
                                        </option>
                                        <option value="20" >
                                            이집트 +20
                                        </option>
                                        <option value="39" >
                                            이탈리아 +39
                                        </option>
                                        <option value="91" >
                                            인도 +91
                                        </option>
                                        <option value="62" >
                                            인도네시아 +62
                                        </option>
                                        <option value="81" >
                                            일본 +81
                                        </option>
                                        <option value="1876" >
                                            자메이카 +1 876
                                        </option>
                                        <option value="995" >
                                            조지아 +995
                                        </option>
                                        <option value="86" >
                                            중국 +86
                                        </option>
                                        <option value="236" >
                                            중앙아프리카공화국 +236
                                        </option>
                                        <option value="420" >
                                            체코 +420
                                        </option>
                                        <option value="56" >
                                            칠레 +56
                                        </option>
                                        <option value="237" >
                                            카메룬 +237
                                        </option>
                                        <option value="974" >
                                            카타르 +974
                                        </option>
                                        <option value="855" >
                                            캄보디아왕국 +855
                                        </option>
                                        <option value="254" >
                                            케냐 +254
                                        </option>
                                        <option value="269" >
                                            코모로,마요트 +269
                                        </option>
                                        <option value="506" >
                                            코스타리카 +506
                                        </option>
                                        <option value="225" >
                                            코트디부아르 +225
                                        </option>
                                        <option value="57" >
                                            콜롬비아 +57
                                        </option>
                                        <option value="242" >
                                            콩고 +242
                                        </option>
                                        <option value="243" >
                                            콩고민주공화국 +243
                                        </option>
                                        <option value="53" >
                                            쿠바 +53
                                        </option>
                                        <option value="965" >
                                            쿠웨이트 +965
                                        </option>
                                        <option value="385" >
                                            크로아티아 +385
                                        </option>
                                        <option value="886" >
                                            타이완 +886
                                        </option>
                                        <option value="255" >
                                            탄자니아 +255
                                        </option>
                                        <option value="66" >
                                            태국 +66
                                        </option>
                                        <option value="90" >
                                            터키 +90
                                        </option>
                                       </option>
                                       <option value="51" >
                                            페루 +51
                                        </option>
                                        <option value="351" >
                                            포르투갈 +351
                                        </option>
                                        <option value="48" >
                                            폴란드 +48
                                        </option>
                                       <option value="679" >
                                            피지 +679
                                        </option>
                                        <option value="358" >
                                            핀란드 +358
                                        </option>
                                        <option value="63" >
                                            필리핀 +63
                                        </option>
                                        <option value="36" >
                                            헝가리 +36
                                        </option>
                                        <option value="61" >
                                            호주 +61
                                        </option>
                                        <option value="852" >
                                            홍콩 +852
                                        </option>
                        </select> &emsp;
                        
					<select size="1"  name="hp1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="019">019</option>

					</select> <b>-</b> <input type="text" size="2" name="hp2"
						required="required" onkeyup="goFocus(this)"> <b>-</b> <input
						type="text" size="2" name="hp3" required="required"> </select></td>
				</tr>
				
				<tr>&emsp;
					<td id="mai">주소</td> 
					<td><input type="text" size="70" name="addr"
						required="required" class="from-cintol"></td>
				</tr>
				


				
		</table>
		<br><br>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="수정"> <input type="button" value="취소" onclick=""></td>
			</tr></form>
	</div>
</body>
</html>


