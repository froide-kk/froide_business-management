<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>経歴書閲覧画面</title>
</head>
<body>
<!---------- ヘッダー部分　---------->
<header class="career">
    <h2><a class="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
    <nav>
        <ul class="header_right">

<!--            <li><a href="http://localhost:4567/career/show">My Page</a></li>-->
            <li><a href="http://localhost:4567/career/management">管理者</a></li>

<!--            <li>-->
<!--                <input type="button" class="logout" onclick="location.href='/career/login'" value="ログアウト">-->
<!--            </li>-->
        </ul>
    </nav>
</header>
<!---------- 戻るボタン ---------->
<nav>
    <ul class="back">
        <button class="browseBack" onclick="history.back(-1);return false;"><a href="#">戻る</a></button>
    </ul>
</nav>
<!---------- 編集ボタンとPDF化ボタン ---------->
<nav class="disp">
    <ul class="option">
        <li>
            <form method="get" action="/career/update">
            <button type="submit" value="${id}" name="id" class="edit" ><a>編集</a></button>
            </form>
        </li>
        <li>
            <form class="disp">
                <input class="pdf" type="button" value="PDF化">
            </form>
        </li>
    </ul>
</nav>
<!---------- 業務経歴書の部分 ---------->
<div class="careerSheet">
    <h1 class="sheetHead">業務経歴書</h1>

    <table border="1" style="border-collapse: collapse">
        <tr>
            <th>氏名</th>
            <th>生年月日</th>
            <th>年齢</th>
            <th>住所</th>
            <th>最終学歴</th>
        </tr>
        <tr>
            <td>${name!""}</td>
            <td>${birthday!""}</td>
            <!---------- 年齢表示 ---------->
            <td>
                <script>
                    let Birtday = "${birthday!""}"
                    let birtdayAry = Birtday.split('-')
                    const birthday = {
                         year: birtdayAry[0],
                         month: birtdayAry[1],
                         date: birtdayAry[2]
                         };
                    function getAge(birthday){
                       var today = new Date();
                        var thisYearsBirthday = new Date(today.getFullYear(), birthday.month-1, birthday.date);
                         var age = today.getFullYear() - birthday.year;
                        if(today < thisYearsBirthday){
                          age--;
                               }
                            return age;
                            }

                        document.write(getAge(birthday));

                </script>
            </td>
            <td>${address!""}</td>
            <td>${final_education!""}</td>
        </tr>
        <tr>
            <th colspan="5">資格</th>
        </tr>
        <tr>
            <td colspan="5">${license!""}</td>
        </tr>
    </table>

    <br>

    <div class="Level">
        <p>○　業務で使用経験あり △　個人レベルで対応可能</p>
    </div>

<!--        テーブルを入れていく。-->
    <div class="career_show_table">
            <table border=1 style="border-collapse: collapse" >
                <tr>
                    <th colspan="2">OS</th>
                </tr>
                <#list EachSkillsOS as eachskillOS>
                <tr>
                    <td class="zeroWidth">${eachskillOS.skill_name!""}</td>
                    <td class="centertext">${eachskillOS.skill_level!""}</td>
                </tr>
            </#list>
            </table>

        <table border=1 style="border-collapse: collapse">
            <tr>
                <th colspan="2">対応可能スクリプト・ツール</th>
            </tr>
            <#list EachSkillsScript as eachskillScript>
            <tr>
                <td class="zeroWidth">${eachskillScript.skill_name!""}</td>
                <td class="centertext">${eachskillScript.skill_level!""}</td>
            </tr>
            </#list>
        </table>

        <table border=1 style="border-collapse: collapse">
            <tr>
                <th colspan="2">DB</th>
            </tr>
            <#list EachSkillsDB as eachskillDB>
            <tr>
                <td class="zeroWidth">${eachskillDB.skill_name!""}</td>
                <td class="centertext">${eachskillDB.skill_level!""}</td>
            </tr>
        </#list>
        </table>
    </div>

<!--    ここまで！-->

    <br>
<#list EmpWorkLists as empWorkList>
    <table  border=1 style="border-collapse: collapse">
        <tr>
            <th>業種</th>
            <th class="disp">プロジェクト</th>
            <th colspan="2">期間</th>
        </tr>

        <tr class="tr-bottom">
            <td>${empWorkList.industry!""}</td>
            <td class="disp"><a href="http://localhost:4567/career/projectEmp/(id)">${empWorkList.projects_name!""}</a></td>
            <td>${empWorkList.work_start!"未設定"} 〜 ${empWorkList.work_end!"継続中"}
                <script>
                    var sday = "${empWorkList.work_start!"noStartDate"}";
                    var eday = "${empWorkList.work_end!"noEndDate"}";
                    console.log(sday);
                    console.log(eday);
                    if(sday === "noStartDate"){
                    console.log("NULLIF通過");
                    document.write("");
                    }else if(eday === "noEndDate"){
                    console.log("NULLELSEIF通過");
                    var today = new Date();
                    var Eyear = today.getFullYear();
                    var Emonth = today.getMonth()+1;
                    var Eday = today.getDate();
                    var sdayAry = sday.split('/');
                    var Syear = sdayAry[0];
                    var Smonth = sdayAry[1];
                    var Sday = sdayAry[2];
                    var startday = new Date(Syear,Smonth,Sday);
                    var endday = new Date(Eyear,Emonth,Eday);
                    //差日を求める（86,400,000ミリ秒＝１日）
                    var termDay = (endday - startday) / 86400000;
                    console.log(termDay)
                    if(termDay>365){
                    termMouths=termDay%365
                    termMouth=termMouths/30
                    termYear=termDay/365
                    document.write(Math.floor(termYear)+"年"+Math.floor(termMouth)+"ヶ月");
                    }else if(termDay>30){
                    termMouth=termDay/30
                     document.write(Math.floor(termMouth)+"ヶ月");
                    }else{
                     document.write(Math.floor(termDay)+"日");
                    };
                    }else{
                    console.log("ELSE通過");
                    var edayAry = eday.split('/');
                    var Eyear = edayAry[0];
                    var Emonth = edayAry[1];
                    var Eday = edayAry[2];
                    var sdayAry = sday.split('/');
                    var Syear = sdayAry[0];
                    var Smonth = sdayAry[1];
                    var Sday = sdayAry[2];
                    var startday = new Date(Syear,Smonth,Sday);
                    var endday = new Date(Eyear,Emonth,Eday);
                    //差日を求める（86,400,000ミリ秒＝１日）
                    var termDay = (endday - startday) / 86400000;
                    console.log(termDay)
                    if(termDay>365){
                    termMouths=termDay%365
                    termMouth=termMouths/30
                    termYear=termDay/365
                    document.write(Math.floor(termYear)+"年"+Math.floor(termMouth)+"ヶ月");
                    }else if(termDay>30){
                    termMouth=termDay/30
                     document.write(Math.floor(termMouth)+"ヶ月");
                    }else{
                     document.write(Math.floor(termDay)+"日");
                    };
                    };
                </script>
            </td>
        </tr>
        </table>

        <table border=1 style="border-collapse: collapse">
        <tr>
            <th colspan="2">システムの概要</th>
            <th>開発規模</th>
            <th>役割</th>
        </tr>
        <tr>
            <td colspan="2">${empWorkList.system_sum!""}</td>
            <td>${empWorkList.dev_scale!""}</td>
            <td>${empWorkList.role!""}</td>

        </tr>
        <tr>
            <th colspan="2">開発担当フェーズ</th>
            <th colspan="2">使用言語</th>
        </tr>
        <tr>
            <td colspan="2">
                <span>${empWorkList.dpp_name!""}</span>
            </td>
            <td colspan="2">${empWorkList.dev_environment!""}</td>
        </tr>

        <tr>
            <th colspan="4">システムの詳細</th>
        </tr>
        <tr>
            <td colspan="4">
                ${empWorkList.system_details!""}
            </td>
        </tr>
    </table>
</#list>
        <script>
            const display = (flag) => {
            const target =  document.querySelectorAll(".disp,.career,.back")
            if(flag === true){
             target.forEach((element) =>{
            element.style.display = "block"
            document.location.reload()
            })
            }else{
             target.forEach((element) =>{
            element.style.display = "none"
            })
            }
          }
            document.querySelector(".pdf").addEventListener("click",() => {
            display(false)
            window.print();
            display(true)
            })

        </script>


</body>
</html>


