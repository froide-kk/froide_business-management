<html>

<head>
    <link rel="stylesheet" href="../style_1.css">
    <title>業務経歴書</title>
</head>

<body>
    <!---------- ヘッダー部分　---------->
    <header class="career">
        <h2><a class ="header_title" href="">業務経歴管理サイト</a></h2>
        <nav>
            <ul class="header_right">
                <li><a href="">My Page</a></li>
                <li><a href="">管理者</a></li>
                <li><button class="logout">ログアウト</button></li>
            </ul>
        </nav>
    </header>
    <!---------- 戻るボタン ---------->
    <nav class="disp">
        <ul class="back">
            <button class="browseBack"><a href="">戻る</a></button>
        </ul>
    </nav>
    <!---------- 編集ボタンとPDF化ボタン ---------->
    <nav class="disp">
        <ul class="option">
            <li><button class="edit"><a href="">編集</a></button></li>
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
                <th>資格</th>
            </tr>

            <tr>
                <td></td>
                <td>1999-11-06</td>
                <td>
                    <script>
                    let Birtday = "1999-11-6"
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
                        document.write(getAge(birthday+"歳"));
                </script>

                </td>
                <td>福岡県</td>
                <td>北海道情報大学 卒業</td>
                <td>基本情報技術者試験</td>

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
                <th>データベース</th>
            </tr>

            <tr>
                <td>IBM 5100</td>
                <td>HTML/CSS,JavaScript,Java,Python</td>
                <td>MySQL</td>
            </tr>
        </table>

        <br>

        <table border=1 style="border-collapse: collapse">
            <tr>
                <th>業種</th>
                <th class="disp">プロジェクト</th>
                <th colspan="2" >期間</th>
            </tr>

            <tr>
                <td>IT企業</td>
                <td class="disp">例のアレ</td>
                <td>2022-04-01 〜 2022-06-01</td>
                <td>
                    <script>
                    var startday = new Date("2022-04-01");
                    var endday = new Date("2022-6-01");
                    //差日を求める（86,400,000ミリ秒＝１日）
                    var termDay = (endday - startday) / 86400000;
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
                    }



                 </script>
                </td>
            </tr>
        </table>
        <table border=1 style="border-collapse: collapse">
            <tr>
                <th>【システムの概要】</th>
                <th>【役割】</th>
            </tr>
            <tr>
                <td>社内業務履歴管理システム</td>
                <td>PG</td>
            </tr>
        </table>
        <table border=1 style="border-collapse: collapse">
            <tr>
                <th>開発規模</th>
                <th>開発担当フェーズ</th>
            </tr>
            <tr>
                <td>5人以下</td>
                <td>要件分析 DB設計</td>
            </tr>
        </table>
    </div>
    <script>
    const display = (flag) => {
    const target =  document.querySelectorAll(".disp,.career")
    if(flag === true){
     target.forEach((element) =>{
    element.style.display = "block"
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