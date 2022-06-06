<html>
<head>
    <link rel="stylesheet" href="../style_2.css">
    <title>業務経歴書</title>
</head>
<body>
<!---------- ヘッダー部分　---------->
<header class="career">
    <h2><a class ="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
    <nav>
        <ul class="header_right">
            <li><a href="http://localhost:4567/career/show(id)">My Page</a></li>
            <li><a href="http://localhost:4567/career/management">管理者</a></li>
            <li><button class="logout">ログアウト</button></li>
        </ul>
    </nav>
</header>
<!---------- 戻るボタン ---------->
<nav>
    <ul class="back">
        <button class="browseBack" onclick="history.back(-1);return false;"><a href="#" >戻る</a></button>
    </ul>
</nav>
<!---------- 編集ボタンとPDF化ボタン ---------->
<nav class="disp">
    <ul class="option">
        <li><button class="edit" onclick="location.href='http://localhost:4567/career/update(id)'"><a>編集</a></button></li>
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
            <td></td>
            <td>1999-11-06</td>
            <!---------- 年齢表示 ---------->
            <td>
                <script>
                    let Birtday = "1999-6-02"
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
            <td>福岡県</td>
            <td>北海道情報大学</td>
        </tr>
        <tr>
            <th colspan="5">資格</th>
        </tr>
        <tr>
            <td colspan="5">基本情報技術者試験</td>
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
            <td>あ</td>
            <td>あ</td>
            <td>あ</td>
        </tr>
    </table>

    <br>

    <table border=1 style="border-collapse: collapse">
        <tr>
            <th>業種</th>
            <th class="disp">プロジェクト</th>
            <th colspan="2">期間</th>
        </tr>

        <tr>
            <td>業種表示</td>
            <td><a href="http://localhost:4567/career/projectEmp/(id)">プロジェクト表示</a></td>
            <td>2022-04-01 〜 2022-04-21</td>
            <td>
                <script>

                    var startday = new Date("2022-04-01");
                    var endday = new Date("2022-4-21");
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

        <tr>
            <th colspan="2">システムの概要</th>
            <th>開発規模</th>
            <th>役割</th>
        </tr>
        <tr>
            <td colspan="2">社内業務管理システム</td>
            <td>開発規模表示</td>
            <td>役割表示</td>

        </tr>
        <tr>
            <th colspan="2">開発担当フェーズ</th>
            <th colspan="2">使用言語</th>
        </tr>
        <tr>
            <td colspan="2">要件分析、DB設計</td>
            <td colspan="2">Java,HTML/CSS,JavaScript</td>
        </tr>

        <tr>
            <th colspan="4">システムの詳細</th>
        </tr>
        <tr>
            <td colspan="4">詳細をここにいーーーーーっぱい書きます、書きまくります、かきかきかきかきかきかきそれが概要でーーーーす</td>
        </tr>
    </table>

    <br>

    <table border=1 style="border-collapse: collapse">
        <tr>
            <th>業種</th>
            <th class="disp">プロジェクト</th>
            <th colspan="2">期間</th>
        </tr>

        <tr>
            <td>業種表示</td>
            <td><a href="http://localhost:4567/career/projectEmp/(id)">プロジェクト表示</a></td>
            <td>2022-04-01 〜 2022-04-21</td>
            <td>
                <script>

                    var startday = new Date("2022-04-01");
                    var endday = new Date("2022-4-21");
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

        <tr>
            <th colspan="2">システムの概要</th>
            <th>開発規模</th>
            <th>役割</th>
        </tr>
        <tr>
            <td colspan="2">社内業務管理システム</td>
            <td>開発規模表示</td>
            <td>役割表示</td>

        </tr>
        <tr>
            <th colspan="2">開発担当フェーズ</th>
            <th colspan="2">使用言語</th>
        </tr>
        <tr>
            <td colspan="2">要件分析、DB設計</td>
            <td colspan="2">Java,HTML/CSS,JavaScript</td>
        </tr>

        <tr>
            <th colspan="4">システムの詳細</th>
        </tr>
        <tr>
            <td colspan="4">詳細をここにいーーーーーっぱい書きます、書きまくります、かきかきかきかきかきかきそれが概要でーーーーす</td>
        </tr>
    </table>

    <br>


</div>
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



