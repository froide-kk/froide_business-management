<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>経歴書編集画面</title>

</head>

<body>

<!---------- ヘッダー部分　---------->
<header class="career">
    <h2><a class ="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
    <nav>
        <ul class="header_right">
            <!--            <li><a href="http://localhost:4567/career/show(id)">My Page</a></li>-->
            <li><a href="http://localhost:4567/career/management">管理者</a></li>
            <!--            <li><input type="button" class="logout" onclick="location.href='/career/login'" value="ログアウト"></li>-->
        </ul>
    </nav>
</header>
<!---------- 戻るボタン ---------->
<nav>
    <ul class="back">
        <button class="browseBack" onclick="history.back(-1);return false;"><a href="#" >戻る</a></button>
    </ul>
</nav>
<!---------- 追加ボタン ---------->
<form method="post" action="/career/updateWorkAdd">
    <button type="submit" value="${id}" name="employee_id" id="add" class="add_work">追加</button>
</form>
<!---------- 保存ボタン ---------->
<form method="post" action="/career/update">
    <button type="submit" value="${id}" name="id" class="keep">保存</button>
    <!---------- 業務経歴書の部分 ---------->
    <div class="careerSheet">
        <h1 class="sheetHead">業務経歴書 編集画面</h1>

        <table border="1" style="border-collapse: collapse">
            <tr>
                <th>氏名</th>
                <th>生年月日</th>
                <th>年齢</th>
                <th>住所</th>
                <th>最終学歴</th>
            </tr>

            <tr>
                <td>
                    <input type="text" size="42" value="${name!""}" name="name" class="input_update">
                </td>
                <td>
                    <input type="text" value="${birthday!""}" name="birthday" class="input_update">

                </td>
                <td> <script>
                    //inputされた値をリアルタイムbirthdayに代入したい
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
                <td><input type="text" value="${address!""}" name="address" class="input_update"></td>
                <td><input type="text" value="${final_education!""}" name="final_education" class="input_update"></td>
            </tr>

            <tr>
                <th colspan="5">資格</th>
            </tr>
            <tr>
                <td colspan="5"><input type="text" size="120" value="${license!""}" name="license" class="input_update"></td>
            </tr>
        </table>


        <br>

        <div class ="Level">
            <p>○　業務で使用経験あり  △　個人レベルで対応可能</p>
        </div>

        <table border=1 style="border-collapse: collapse">
            <tr>
                <th>OS</th>
                <th>対応可能スクリプト・ツール</th>
                <th>DB</th>
            </tr>

            <tr>
                <td>
                    <ul>
                        <#list EachSkillsOS as osList>
                        <input type="hidden" value="${osList.id}" name="os_id">
                        <li>${osList.skill_name!""}
                            <select name="osList">
                                <option value="-">${osList.skill_level!"-"}</option>
                                <option value="-">-</option>
                                <option value="○">○</option>
                                <option value="△">△</option>
                            </select>
                        </li>
                    </#list>
                    </ul>
                </td>
                <td>
                    <ul>
                        <#list EachSkillsScript as sList>
                        <input type="hidden" value="${sList.id}" name="s_id">
                        <li>${sList.skill_name!""}
                            <select name="sList">
                                <option value="-">${sList.skill_level!"-"}</option>
                                <option value="-">-</option>
                                <option value="○">○</option>
                                <option value="△">△</option>
                            </select>
                        </li>
                    </#list>
                    </ul>
                </td>
                <td>
                    <ul>
                        <#list EachSkillsDB as dbList>
                        <input type="hidden" value="${dbList.id}" name="db_id">
                        <li>${dbList.skill_name!""}
                            <select name="dbList">
                                <option value="-">${dbList.skill_level!"-"}</option>
                                <option value="-">-</option>
                                <option value="○">○</option>
                                <option value="△">△</option>
                            </select></li>
                    </#list>
                    </ul>
                </td>
            </tr>
        </table>

        <br>



        <#list EmpWorkLists as empWorklist>
        <table border=1 style="border-collapse: collapse">
            <input type="hidden" value="${empWorklist.history_id}" name="histories_id">
            <tr>
                <th>業種</th>
                <th class="disp">プロジェクト</th>
                <th class="period_change" colspan="2">期間</th>
            </tr>

            <tr>
                <td><input type="text" name="industry" value="${empWorklist.industry!""}" class="input_update"></td>
                <td>
                    <select name="project_id">
                        <option value="0">${empWorklist.projects_name!""}</option>
                        <#list ProLists as proList>
                        <option value="${proList.id}">${proList.name!""}</option>
                    </#list>
                    </select>
                </td>
                <td><input type="text" size="10" name="work_start" value="${empWorklist.work_start!""}" class="input_update">
                    〜
                    <input type="text" size="10" name="work_end" value="${empWorklist.work_end!""}" class="input_update"></td>
                <td>
                    <script>
                    var sday = "${empWorklist.work_start!"noStartDate"}";
                    var eday = "${empWorklist.work_end!"noEndDate"}";
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

            <tr>
                <th colspan="2">システムの概要</th>
                <th>開発規模</th>
                <th>役割</th>
            </tr>
            <tr>
                <td colspan="2"><input type="text" name="system_sum" value="${empWorklist.system_sum!""}" class="input_update"></td>
                <td>
                    <select name="dev_scale">
                        <option value="0">${empWorklist.dev_scale!""}</option>
                        <option value="5人以下">5人以下</option>
                        <option value="10人以下">10人以下</option>
                        <option value="15人以下">15人以下</option>
                        <option value="20人以下">20人以下</option>
                        <option value="30人以下">30人以下</option>
                        <option value="40人以下">40人以下</option>
                        <option value="50人以下">50人以下</option>
                        <option value="50人以上">50以上</option>
                    </select>
                </td>
                <td><input type="text" size="20" name="role" value="${empWorklist.role!""}" class="input_update"></td>

            </tr>
            <tr>
                <th colspan="2">開発担当フェーズ</th>
                <th colspan="2">使用言語</th>
            </tr>

            <tr>
                <td colspan="2">
                    <ul id="phase"  multiple size="3">
                        <#list dev_period_phasesLists as dppList>
                        <#assign x = "${dppList.name}">
                        <#assign y = "${empWorklist.dpp_name}">
                        <#if  y ?contains (x) >
                        <input type="checkbox"　value="${dppList.id}" checked >${dppList.name}
                        <#else>
                        <input type="checkbox"　value="${dppList.id}"  >${dppList.name}
                    </#if>
                </#list>
                </ul>
                </td>
                <td colspan="2"><input type="text" size="80" name="dev_environment" value="${empWorklist.dev_environment!""}" class="input_update"></td>
            </tr>

            <tr>
                <th colspan="4">システムの詳細</th>
            </tr>
            <tr>
                <td colspan="4"><input type="textarea" cols="120" name="system_details" value="${empWorklist.system_details!""}" class="input_update"></td>
            </tr>
        </table>

    </#list>
    </div>
</form>


<script>
    let add = document.getElementById("add");
    add.addEventListener("submit",function(){
        window.location.reload(false);
    })
</script>
</body>
</html>