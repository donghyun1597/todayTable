


viewTopRecipe();
//categoryList();
  

function viewTopRecipe(){

    let contextPath = "<%=contextPath%>";
    let value = "";
    
    $.ajax({
        url : "mainThumnail.re",
        success : function(list){
            
            
            
           
            for(let i=0;i<list.length;i++){
                value += '<div class="col-12 col-sm-6 col-lg-4" id="col-510" id="topRecipe1">'+
                        '<div class="single-best-receipe-area mb-30">'+
                        '<img src="/today'+list[i].recipePic+'" alt="음식2" id="topRecipeImg1">'+
                        '<div class="receipe-content">'+
                            '<a href="receipe-post.html">'+
                                '<h5>'+list[i].recipeName+'</h5>'+
                            '</a>'+
                            '<div class="ratings">난이도'+list[i].recipeDifficulty+'<br>'+
                                '<i class="fa fa-star" aria-hidden="true"></i>'+
                                '<i class="fa fa-star" aria-hidden="true"></i>'+
                                '<i class="fa fa-star" aria-hidden="true"></i>'+
                            '<i class="fa fa-star" aria-hidden="true"></i>'+
                                '<i class="fa fa-star-o" aria-hidden="true"></i>'+
                            '</div>'+
                        '</div>'+
                    '</div>'+
                '</div>'
            }
            $("#topRecipe").html(value);
        },
        error : function(){
            console.log("ajax 실패!!!");
        }


    })
    
}


// function recommendRecipe(){
//     let ingre = $("#recommendSel1 span").text();
//     let nation = $("#recommendSel2 span").text();
//     let people = $("#recommendSel3 span").text();

//     console.log(ingre);
//     console.log(nation);
//     console.log(people);
// }

// function categoryList(){

//     $.ajax({
//         url : "clist.ca",
//         success : function(result){
//             let ingreList = result[0];
//             let nationList = result[1]; 
            

//             let ingreOption = "";
//             let nationOption = "";
//             for(let i=0;i<ingreList.length;i++){
//                 ingreOption += "<option>"+ingreList[i].cIngreName+"</option>";
//             }
//             $("#recoSel1").html(ingreOption);

//             for(let j=0;j<nationList.length;j++){
//                 nationOption += "<option>"+nationList[j].cNatName+"</option>";
//             }
//             $("#sel2").html(nationOption);

//         },
//         error : function(){
//             console.log("ajax 실패!!!");
//         }


//     })


// }

