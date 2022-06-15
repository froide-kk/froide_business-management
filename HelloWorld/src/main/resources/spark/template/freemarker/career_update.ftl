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
    <h2><a class="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
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
        <button class="browseBack" onclick="history.back(-1);return false;"><a href="#">戻る</a></button>
    </ul>
</nav>
<!---------- 保存ボタン ---------->
<form method="post" action="/career/update">
    <button type="submit" value="${id}" name="id" class="keep"
            onclick="location.href='http://localhost:4567/career/show'">保存
    </button>

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
                    <input type="text" size="42" value="${name!""}" name="name">
                </td>
                <td>
                    <input type="text" value="${birthday!""}" name="birthday">
                </td>
                <td>
                    <script>
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
                <td><input type="text" value="${address!""}" name="address"></td>
                <td><input type="text" value="${final_education!""}" name="final_education"></td>
            </tr>

            <tr>
                <th colspan="5">資格</th>
            </tr>
            <tr>
                <td colspan="5"><input type="text" size="120" value="${license!""}" name="license"></td>
            </tr>
        </table>

        <br>

        <div class="Level">
            <p>○　業務で使用経験あり △　個人レベルで対応可能</p>
        </div>

        <table border=1 style="border-collapse: collapse" id="skill">
            <tr>
                <th>OS</th>
                <th>対応可能スクリプト・ツール</th>
                <th>DB</th>
            </tr>

            <tr>
                <td>
                    <ul>
                        <#list OSLists as osList>
                            <li>${osList.name!""}
                                <select>
                                    <option>-</option>
                                    <option value="${osList.id!""}">◯</option>
                                    <option value="${osList.id!""}">△</option>
                                </select>
                            </li>
                        </#list>
                    </ul>
                </td>
                <td>
                    <ul>
                        <#list ScriptLists as sList>
                            <li>${sList.name!""}
                                <select>
                                     <option>-</option>
                                     <option value="${sList.id!""}">◯</option>
                                     <option value="${sList.id!""}">△</option>
                                </select>
                            </li>
                        </#list>
                    </ul>

                </td>
                <td>
                    <ul>
                        <#list DBLists as dbList>
                            <li>${dbList.name!""}
                                <select>
                                    <option>-</option>
                                    <option value="${dbList.id!""}">◯</option>
                                    <option value="${dbList.id!""}">△</option>
                                </select>
                             </li>
                        </#list>
                    </ul>
                </td>
            </tr>
        </table>

        <br>

        <input type="button" value="追加" id="add" class="add_work">

        <br>

        <table id="clone" border="1"></table>
        <div id="work_table">
            <table border=1 style="border-collapse: collapse" id="work">
                <tr>
                    <th>業種</th>
                    <th class="disp">プロジェクト</th>
                    <th class="period_change" colspan="2">期間</th>
                </tr>

                <tr>
                    <td>
                        <input type="text" value="${industry!""}">
                    </td>
                    <td>
                        <select>
                            <option>${projects_name!""}</option>
                            <#list ProLists as proList>
                            <option value="${proList.id!""}">${proList.name!""}</option>
                            </#list>
                        </select>
                    </td>
                    <td>
                        <input type="text" size="10" value="${work_start!""}">〜<input type="text" size="10" value="${work_end!""}">
                    </td>
                    <td>
                        <script>
                    let sday = "${work_start!""}";
                    let eday = "${work_end!""}";
                    console.log(sday);
                    console.log(eday);
                    if(sday === "null" || eday === "null"){
                    document.write("NULL表示成功");
                    };
                    let sdayAry = sday.split('/');
                    let edayAry = eday.split('/');
                    const Syear = sdayAry[0];
                    const Smonth = sdayAry[1];
                    const Sday = sdayAry[2];
                    const Eyear = edayAry[0];
                    const Emonth = edayAry[1];
                    const Eday = edayAry[2];
                    var startday = new Date(Syear,Smonth,Sday);
                    var endday = new Date(Eyear,Emonth,Eday);
                    //差日を求める（86,400,000ミリ秒＝１日）
                    let termDay = (endday - startday) / 86400000;
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


                        </script>
                    </td>
                </tr>

                <tr>
                    <th colspan="2">システムの概要</th>
                    <th>開発規模</th>
                    <th>役割</th>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" value="${system_sum!""}">
                    </td>
                    <td>
                        <select>
                            <option>${dev_scale!""}</option>
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
                    <td>
                        <input type="text" size="20" value="${role!""}">
                    </td>

                </tr>
                <tr>
                    <th colspan="2">開発担当フェーズ</th>
                    <th colspan="2">使用言語</th>
                </tr>
                <tr>
                    <td colspan="2">
                        <ul id="phase" multiple size="3">
                            <#list dev_period_phasesLists as dppList>
                            <li>
                                <input type="checkbox" value="${dppList.id!""}">${dppList.name!""}
                            </li>
                        </#list>
                        </ul>
                    </td>
                    <td colspan="2">
                        <input type="text" size="80" value="${dev_environment!""}">
                    </td>
                </tr>

                <tr>
                    <th colspan="4">システムの詳細</th>
                </tr>
                <tr>
                    <td colspan="4">
                        <input type="textarea" cols="120" value="${system_details!""}">
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>

<script>
    let add = document.getElementById("add")
    add.addEventListener("click", function(){
        var table = document.getElementById("work");
        let clone_table = table.firstElementChild.cloneNode(true);
        var parent = document.querySelector("#clone");
        parent.appendChild(clone_table);
    });

</script>
</body>
</html>