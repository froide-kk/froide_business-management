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
    <nav>
        <ul class="back">
            <button class="browseBack"><a href="">戻る</a></button>
        </ul>
    </nav>
    <!---------- 編集ボタンとPDF化ボタン ---------->
    <nav>
        <ul class="option">
            <li><button class="edit"><a href="">編集</a></button></li>
            <li><button class="pdf">PDF化</button></li>
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
                <td>あああああ</td>
                <td>0000/00/00</td>
                <td>0歳</td>
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
                <th>プロジェクト</th>
                <th colspan="2" >期間</th>
            </tr>

            <tr>
                <td>IT企業</td>
                <td>例のアレ</td>
                <td>2022.4 〜 2022.6</td>
                <td>3ヶ月</td>
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
</body>
</html>