<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <style>
    .cont_box select {
        background: #f5f5f5;
        border: 1px solid #e1e1e1;
        font-size: 16px;
        padding: 8px 2px;
        margin: 0 2px 0 0;
        border-radius: 4px;
    }


  </style>
</head>
<body>

	<div>
        <div id="divMainPhotoUpload" class="cont_pic2">
          <input type="hidden" name="main_photo" id="main_photo" value="">
          <input type="hidden" name="new_main_photo" id="new_main_photo" value="">
          <input type="hidden" name="del_main_photo" id="del_main_photo" value="">
          <div style="position:absolute;left:-3000px"><input type="file" name="q_main_file" id="q_main_file" file_gubun="main" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
          <div id="divMainPhotoBox" is_over="0">
              <img id="mainPhotoHolder" onclick="browseMainFile()" src="https://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
          </div>
        </div>
        <div class="cont_line">
        	<p class="cont_tit4">레시피 제목</p>
        	<input type="text" name="cok_title" id="cok_title" value="" class="form-control" placeholder="예) 소고기 미역국 끓이기" style="width:610px; ">
        </div>
        <div class="cont_box pad_l_60">
          <p class="cont_tit4">태그</p>
            <input type="text" class="ui-widget-content ui-autocomplete-input" autocomplete="off">
          
        </div>
        
  
        <div class="cont_line pad_b_25"><p class="cont_tit4">동영상</p>
            <input type="hidden" name="video_photo" id="video_photo" value="">
            <input type="hidden" name="new_video_photo" id="new_video_photo" value="">
            <input type="hidden" name="del_video_photo" id="del_video_photo" value="">
            <input type="hidden" name="cok_video_src" id="cok_video_src" value="">
            <textarea name="cok_video_url" id="cok_video_url" class="form-control step_cont" prev_url="" placeholder="동영상이 있으면 주소를 입력하세요.(Youtube,네이버tvcast,다음tvpot 만 가능) 예)http://youtu.be/lA0Bxo3IZmM" style="height:100px; width:380px; resize:none;"></textarea>
            <div style="position:absolute;left:-3000px"><input type="file" name="q_video_file" id="q_video_file" file_gubun="video" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divVideoPhotoBox" is_over="0" class="thumb_m">
                <img id="videoPhotoHolder" src="https://recipe1.ezmember.co.kr/img/pic_none5.gif" style="width: 177px; height: 100px;">
            </div>
        </div>
  
        <div class="cont_line"><p class="cont_tit4">카테고리</p>
          <select name="cok_sq_category_4" id="cok_sq_category_4" text="테마별">
            <option value="">테마별</option>
            <option value="63">밑반찬</option>
            <option value="56">메인반찬</option>
            <option value="54">국/탕</option>
            <option value="55">찌개</option>
            <option value="60">디저트</option>
            <option value="53">면/만두</option>
            <option value="52">밥/죽/떡</option>
            <option value="61">퓨전</option>
            <option value="57">김치/젓갈/장류</option>
            <option value="58">양념/소스/잼</option>
            <option value="65">양식</option>
            <option value="64">샐러드</option>
            <option value="68">스프</option>
            <option value="66">빵</option>
            <option value="69">과자</option>
            <option value="59">차/음료/술</option>
            <option value="62">기타</option>
          </select>
          <select name="cok_sq_category_2" id="cok_sq_category_2" text="도구별">
  <option value="">도구별</option>
  <option value="12">일상</option>
  <option value="18">초스피드</option>
  <option value="13">손님접대</option>
  <option value="19">술안주</option>
  <option value="21">다이어트</option>
  <option value="15">도시락</option>
  <option value="43">영양식</option>
  <option value="17">간식</option>
  <option value="45">야식</option>
  <option value="20">푸드스타일링</option>
  <option value="46">해장</option>
  <option value="44">명절</option>
  <option value="14">이유식</option>
  <option value="22">기타</option>
  </select>
          <select name="cok_sq_category_1" id="cok_sq_category_1" text="재료별">
  <option value="">재료별</option>
  <option value="6">볶음</option>
  <option value="1">끓이기</option>
  <option value="7">부침</option>
  <option value="36">조림</option>
  <option value="41">무침</option>
  <option value="42">비빔</option>
  <option value="8">찜</option>
  <option value="10">절임</option>
  <option value="9">튀김</option>
  <option value="38">삶기</option>
  <option value="67">굽기</option>
  <option value="39">데치기</option>
  <option value="37">회</option>
  <option value="11">기타</option>
  </select>
          <select name="cok_sq_category_3" id="cok_sq_category_3" text="방법별">
          <option value="">방법별</option>
          <option value="70">소고기</option>
          <option value="71">돼지고기</option>
          <option value="72">닭고기</option>
          <option value="23">육류</option>
          <option value="28">채소류</option>
          <option value="24">해물류</option>
          <option value="50">달걀/유제품</option>
          <option value="33">가공식품류</option>
          <option value="47">쌀</option>
          <option value="32">밀가루</option>
          <option value="25">건어물류</option>
          <option value="31">버섯류</option>
          <option value="48">과일류</option>
          <option value="27">콩/견과류</option>
          <option value="26">곡류</option>
          <option value="34">기타</option>
          </select>
  <select name="cok_sq_category_3" id="cok_sq_category_3" text="종류별">
    <option value="">종류별</option>
    <option value="70">소고기</option>
    <option value="71">돼지고기</option>
    <option value="72">닭고기</option>
    <option value="23">육류</option>
    <option value="28">채소류</option>
    <option value="24">해물류</option>
    <option value="50">달걀/유제품</option>
    <option value="33">가공식품류</option>
    <option value="47">쌀</option>
    <option value="32">밀가루</option>
    <option value="25">건어물류</option>
    <option value="31">버섯류</option>
    <option value="48">과일류</option>
    <option value="27">콩/견과류</option>
    <option value="26">곡류</option>
    <option value="34">기타</option>
    </select>
        <select name="cok_sq_category_3" id="cok_sq_category_3" text="국가별">
            <option value="">국가별</option>
            <option value="70">소고기</option>
            <option value="71">돼지고기</option>
            <option value="72">닭고기</option>
            <option value="23">육류</option>
            <option value="28">채소류</option>
            <option value="24">해물류</option>
            <option value="50">달걀/유제품</option>
            <option value="33">가공식품류</option>
            <option value="47">쌀</option>
            <option value="32">밀가루</option>
            <option value="25">건어물류</option>
            <option value="31">버섯류</option>
            <option value="48">과일류</option>
            <option value="27">콩/견과류</option>
            <option value="26">곡류</option>
            <option value="34">기타</option>
          </select>
          
        </div>
        
      </div>

<div class="cont_box pad_l_60 ingreDiv">
        <span class="guide mag_b_15" style="width:100%;">재료가 남거나 부족하지 않도록 정확한 계량정보를 적어주세요.</span>
		<div class="ingre_class" id="defIngre">
        
        <input type="text" value="재료" style="font-weight:bold;font-size:18px;width:210px;">
        
        <ul id="divMaterialArea_1" class="ui-sortable">
          <li id="ingreNum1_1">
            <input type="text" style="width:330px;" placeholder="예) 돼지고기">
            <input type="text" style="width:280px;" placeholder="예) 300g">
          </li>
          <li id="ingreNum1_2">
            <input type="text" style="width:330px;" placeholder="예) 양배추">
            <input type="text" style="width:280px;" placeholder="예) 1/2개">
          </li>
          <li id="ingreNum1_3">
            <input type="text" style="width:330px;" placeholder="예) 참기름">
            <input type="text" style="width:280px;" placeholder="예) 1T">
          </li>
        </ul>

        <div class="btn_add" style="padding:0 0 20px 350px; width:800px;">
          <button type="button" class="btn btn-default add_ingre">
            추가
          </button>
          <button type="button" class="btn btn-default del_ingre">
            삭제
          </button>
        </div>
        
        
    </div>
    <script>
      $(function(){

     
        let ingreNum = 4;
        ingreClass = 2;
        $(document).on("click",".add_ingre",function(){
          
          console.log($(this).parent().prev());
          let ingre = '<li id="ingreNum1_'+ingreNum+'"><input type="text" style="width:330px;"><input type="text" style="width:280px;") 1T"></li>'
          $(this).parent().prev().append(ingre);
         
          ingreNum++;

        })

        $(document).on("click",".del_ingre",function(){  
          $(this).parent().prev().children().last().remove();
          ingreNum--;
        })

        // $(".addingre").click(function(){
          
        //   console.log($(this).parent().prev());
        //   let ingre = '<li id="ingreNum1_'+ingreNum+'"><input type="text" style="width:330px;"><input type="text" style="width:280px;") 1T"></li>'
        //   $(this).parent().prev().append(ingre);
         
        //   ingreNum++;

        // })

        // $(".delingre").click(function(){  
        //   $(this).parent().prev().children().last().remove();
        //   ingreNum--;
        // })
      
      
    })
    </script>

        <script>
          $(function(){
            let addHtml=$("#defIngre").html();
            
            $("#addIngreClass").click(function(){
              // console.log($(".ingre_class").html());
              // console.log($('<div class="ingre_class"><button>묶음삭제</button><div>').html(addHtml));
              $add=$('<div class="ingre_class"></div>').html(addHtml);
              console.log($add.children());
              $add.children('input').after('<button class="delClass">묶음삭제</button>');
              console.log($add);
            
              $(".ingreDiv").append($add);

            })

            $(document).on("click",".delClass",function(){
              console.log($(this).parent());
              $(this).parent().remove(".ingre_class");

            })
          })
          

          

        
          

        </script>

    </div>
    <div class="noti">
      <div class="noti_btn">
        <button type="button" id="addIngreClass"><span class="glyphicon glyphicon-plus"></span> 재료/양념 묶음 추가</button>
      </div>
  </div>
    <div class="cont_line"><p class="cont_tit4">요리정보</p>
      인원
        <select name="cok_portion" id="cok_portion" text="인원">
<option value="">인원</option><option value="1">1인분</option>
<option value="2">2인분</option>
<option value="3">3인분</option>
<option value="4">4인분</option>
<option value="5">5인분</option>
<option value="6">6인분이상</option>
</select>
      <span class="pad_l_30">시간 </span>
        <select name="cok_time" id="cok_time" text="요리시간">
<option value="">시간</option><option value="5">5분이내</option>
<option value="10">10분이내</option>
<option value="15">15분이내</option>
<option value="20">20분이내</option>
<option value="30">30분이내</option>
<option value="60">60분이내</option>
<option value="90">90분이내</option>
<option value="120">2시간이내</option>
<option value="999">2시간이상</option>
</select>
      <span class="pad_l_30">난이도 </span>
        <select name="cok_degree" id="cok_degree" text="난이도">
<option value="">난이도</option><option value="1">아무나</option>
<option value="2">초급</option>
<option value="3">중급</option>
<option value="4">고급</option>
<option value="5">신의경지</option>
</select>
      </div>
    <div id="divStepArea" class="ui-sortable"><div id="divStepItem_1" class="step">
        <p style="cursor:pointer" data-original-title="" title="">Step1</p>
        <div style="display:inline-block">
            <textarea placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>
        </div>
        <div style="display:inline-block">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_step_file_1" id="q_step_file_1" file_gubun="step" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divStepPhotoBox_1" is_over="0">
                <img id="stepPhotoHolder_1" onclick="browseStepFile(1)" src="https://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">
            </div>
        </div>

      </div>
    </div>

    <div style="padding:0 0 20px 180px; width:820px;">
      <button type="button" onclick="addStep()" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span>순서추가</button></div>
    
      <div class="regi_btm">
        <button type="button" onclick="doSubmit('save')" class="btn-lg btn-primary">작성하기</button>
        
        <button type="button" onclick="history.back();" class="btn-lg btn-default">취소</button>
      </div>
</body>
</html>