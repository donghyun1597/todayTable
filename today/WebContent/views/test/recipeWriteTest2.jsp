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
  

  <form action="<%=request.getContextPath()%>/insert.rc" method="post" enctype="multipart/form-data">

	<div>
        <div id="divMainPhotoUpload" class="cont_pic2">
          
          <div style="display: none;">
            <input type="file" name="file0" id="file0" accept="jpeg,png,gif" onchange="loadImg(this,0)">
          </div>
          <div id="divMainImg" is_over="0">
              <img id="mainImg" onclick="$('#file0').click()" src="https://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
          </div>
        </div>
        <div class="cont_line">
        	<p class="cont_tit4">레시피 제목</p>
        	<input type="text" name="recipeName" id="cok_title" value="" class="form-control" placeholder="예) 소고기 미역국 끓이기" style="width:610px; ">
        </div>
        <div class="cont_box pad_l_60">
          <p class="cont_tit4">태그</p>
            <input type="text" name="recipeTag" class="ui-widget-content ui-autocomplete-input" autocomplete="off">
          
        </div>
        
  
        <div class="cont_line pad_b_25"><p class="cont_tit4">동영상</p>
            
            <textarea name="recipe_video" id="cok_video_url" class="form-control step_cont" prev_url="" placeholder="동영상이 있으면 주소를 입력하세요.(Youtube,네이버tvcast,다음tvpot 만 가능) 예)http://youtu.be/lA0Bxo3IZmM" style="height:100px; width:380px; resize:none;"></textarea>
            <div style="position:absolute;left:-3000px">
              <input type="file" name="q_video_file" id="q_video_file" file_gubun="video" accept="jpeg,png,gif" >
            </div>
            <div id="divVideoPhotoBox" is_over="0" class="thumb_m">
                <img id="videoPhotoHolder" src="https://recipe1.ezmember.co.kr/img/pic_none5.gif" style="width: 177px; height: 100px;">
            </div>
        </div>
  
        <div class="cont_line"><p class="cont_tit4">카테고리</p>
          <select name="c_theme_no" id="cok_sq_category_4" text="테마별">
            <option value="">테마별</option>
            <option value="TM1">건강식</option>
            <option value="TM2">캠핑요리</option>
            <option value="TH3">간단자취요리</option>
            <option value="TM4">편의점꿀조합</option>
            <option value="TM5">반려동물을 위한 요리</option>
            <option value="TM6">파티요리</option>
            
          </select>
          <select name="c_tool_no" id="cok_sq_category_2" text="도구별">
            <option value="">도구별</option>
            <option value="T1">냄비</option>
            <option value="T2">프라이팬</option>
            <option value="T3">전자레인지</option>
            <option value="T4">오븐</option>
            <option value="T5">에어프라이어</option>
           
          </select>
          <select name="c_ingre_no" id="cok_sq_category_1" text="재료별">
            <option value="">재료별</option>
            <option value="I1">소고기</option>
            <option value="I2">돼기괴</option>
            <option value="I3">소고기</option>
            <option value="I4">닭고기</option>
            <option value="I6">채소</option>
            
            </select>
          <select name="c_step_no" id="cok_sq_category_3" text="방법별">
            <option value="">방법별</option>
            <option value="S1">구이</option>
            <option value="S2">찜</option>
            <option value="S3">볶음</option>
            <option value="S4">무침</option>
            <option value="S5">튀김</option>
          </select>
          <select name="c_kind_no" id="cok_sq_category_3" text="종류별">
            <option value="">종류별</option>
            <option value="K1">안주</option>
            <option value="K2">반찬</option>
            <option value="K3">국/탕</option>
            <option value="K4">샐러드</option>
            <option value="K5">디저트</option>
            <option value="K6">김치/젓갈</option>
            <option value="K7">차/음료/술</option>
          </select>
          <select name="c_nat_no" id="cok_sq_category_3" text="국가별">
            <option value="">국가별</option>
            <option value="N1">한국</option>
            <option value="N2">베트남</option>
            <option value="N3">중국</option>
            <option value="N4">이탈리아</option>
            <option value="N5">일본</option>
          </select>
          
        </div>
        
      </div>

<div class="cont_box pad_l_60 ingreDiv">
        <span class="guide mag_b_15" style="width:100%;">재료가 남거나 부족하지 않도록 정확한 계량정보를 적어주세요.</span>
		<div class="ingre_class" id="defIngre">
        
        <input type="text" value="재료" style="font-weight:bold;font-size:18px;width:210px;" name="">
        
        <ul id="divMaterialArea_1" class="ingre_ul">
          <li id="ingreNum1_1">
            <input type="text" style="width:330px;" class="ingre1" name="ingre1" placeholder="예) 돼지고기">
            <input type="text" style="width:280px;" class="ingre1" name="ingre1" placeholder="예) 300g">
          </li>
          <li id="ingreNum1_2">
            <input type="text" style="width:330px;" class="ingre1" name="ingre1" placeholder="예) 양배추">
            <input type="text" style="width:280px;" class="ingre1" name="ingre1" placeholder="예) 1/2개">
          </li>
          <li id="ingreNum1_3">
            <input type="text" style="width:330px;" class="ingre1" name="ingre1" placeholder="예) 참기름">
            <input type="text" style="width:280px;" class="ingre1" name="ingre1" placeholder="예) 1T">
          </li>
        </ul>

        <div class="btn_add" style="padding:0 0 20px 350px; width:800px;">
          <button type="button" class="btn btn-default add_ingre">
            추가
          </button>
          <button type="button" id="delBtn" class="btn btn-default del_ingre">
            삭제
          </button>
        </div>
        
        
    </div>
    <script>
       let ingreNum = 1;
      $(function(){

     
       
        
        $(document).on("click",".add_ingre",function(){
          
          
          let ingre = $('<li><input type="text" style="width:330px;"><input type="text" style="width:280px;"></li>');
          ingre.children().attr("name","ingre"+ingreNum);
          $(this).parent().prev().append(ingre);
         
          ingreNum++;

        })

        $(document).on("click",".del_ingre",function(){  
          if($(this).attr("id")=="delBtn" && $("#defIngre ul").children().length==1){
            return;
          }
          $(this).parent().prev().children().last().remove();
          
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
              
              $add=$('<div class="ingre_class"></div>').html(addHtml);
              $add.find("#delBtn1").removeAttr("id");
              console.log($add.children());
              $add.children('input').after('<button class="delClass">묶음삭제</button>');
              console.log($add);
            
              $(".ingreDiv").append($add);
              ingreNum++;
            })

            $(document).on("click",".delClass",function(){
              console.log($(this).parent());
              $(this).parent().remove(".ingre_class");
              ingreNum--;
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
          <option value="">시간</option>
          <option value="5">5분이내</option>
          <option value="10">10분이내</option>
          <option value="15">15분이내</option>
          <option value="20">20분이내</option>
          <option value="30">30분이내</option>
          <option value="60">60분이내</option>
          <option value="90">60분이상</option>
        </select>
        <span class="pad_l_30">난이도 </span>
        <select name="cok_degree" id="cok_degree" text="난이도">
          <option value="">난이도</option>
          <option value="1">상</option>
          <option value="2">중</option>
          <option value="3">하</option>
        </select>
      </div>
      
        <div id="divStepArea" class="ui-sortable">

          <div id="divStepItem_1" class="step">
            <p style="cursor:pointer" class="stepNo">Step1</p>
            <div style="display:inline-block">
                <textarea name="recipeOrder" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>
            </div>
            <div style="display:inline-block">
              <div id="file-area" style="display: none;">
                <input type="file" class='file' name="file1" id="file1" onchange="loadImg(this,1);">
              </div>
                <div id="divStepImg1">
                    <img class='stepImg' id="stepImg1" src="https://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">
                </div>
            </div>

          </div>
        </div>
    

    <div style="padding:0 0 20px 180px; width:820px;">
      <button type="button" onclick="addStep()" class="btn btn-default">
        순서추가
      </button>
      <button type="button" onclick="delStep()" class="btn btn-default">
        순서삭제
      </button>
    </div>
    <script>

      $(function(){
        $(document).on("click",".stepImg",function(){
          $(this).parent().prev().children().click();

        })
      })
      function loadImg(inputFile,num){
        if(inputFile.files.length == 1){
            const reader = new FileReader();
            reader.readAsDataURL(inputFile.files[0]);
            reader.onload = function(e){
                $("#stepImg"+num).attr("src",e.target.result);
                if(num==0){
                  $("#mainImg").attr("src",e.target.result);
                }
            }
        }else{
          $("#stepImg"+num).attr("src","https://recipe1.ezmember.co.kr/img/pic_none2.gif");
          if(num==0){
            $("#mainImg").attr("src","https://recipe1.ezmember.co.kr/img/pic_none4.gif");
          }  
        }

      }

      let no = 2;
      let step = $(".step").html();
      function addStep(){
        let divStep = $('<div></div>').append(step);
        divStep.children('.stepNo').text('step'+no);
        divStep.find("#file1").attr("name","file"+no).attr("id","file"+no).attr("onchange","loadImg(this,"+no+");");
        divStep.find("#stepImg1").attr("id","stepImg"+no);
        $('#divStepArea').append(divStep);

        no++;
          
      }

      function delStep(){
        $("#divStepArea").children().last().remove();
        no--;

      }
     


    </script>
    
      <div class="regi_btm">
        <button type="submit">작성하기</button>
        
        <button type="button" onclick="history.back();" class="btn-lg btn-default">취소</button>
      </div>
    </form>
      <script>
        function insertRecipe(){


        }
          
          // function doSubmit(){
          //   let ingreForm=$('<form action="/today/ingreIn.re" method="POST"><form>');
          //   let ingreClass = [];
          //   let ingre = [];
          //   let i = 1;
          //   $(".ingre_class").each(function(){
          //     ingreClass.push($('<input type="text" name="ingreClass">').val($(this).children('.ingre_class_name').val()));
          //     $(this).find('.ingre_ul input').each(function(){
          //       ingre.push($('<input type="text" name="ingre'+i+'">').val($(this).val()));
          //     })
          //     i++;
          //    });
          //    ingreForm.append(ingreClass);
          //    ingreForm.append(ingre);
             
          //    $('body').append(ingreForm);
          //    ingreForm.submit();
          //   // });
          //   // $(".ui-sortable input").each(function(){
          //   //     console.log($(this).val());

          //   //   });

          // }

        

      </script>
</body>
</html>