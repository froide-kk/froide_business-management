<html>
<head>
    <link rel="stylesheet" href="../style.css">
    <title>技術チェック編集</title>
</head>
<body>
<!---------- ヘッダー部分　---------->
<header class="career">
    <h2><a class ="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
    <nav>
        <ul class="header_right">
            <li><a href="http://localhost:4567/career/show(id)">My Page</a></li>
            <li><a href="http://localhost:4567/career/management">管理者</a></li>
            <li><input type="button" class="logout" onclick="location.href='/career/login'" value="ログアウト"></li>
        </ul>
    </nav>
</header>
<!---------- 戻るボタン ---------->
<nav>
    <ul class="back">
        <button class="browseBack" onclick="history.back(-1);return false;"><a href="#" >戻る</a></button>
    </ul>
</nav>
<div class="skillCheck_wrapper">
    <h2 class="skillCheck_title">技術チェック項目 編集ページ</h2>
    <table border="1" style="border-collapse: collapse">
        <tr>
            <th>OS</th>
            <th>スクリプト・ツール</th>
            <th>データベース</th>
        </tr>

        <tr>
            <td></td>
            <td>Java</td>
            <td>MySQL</td>
        </tr>

        <tr>
            <td></td>
            <td>JavaScript</td>
            <td></td>
        </tr>

        <tr>
            <td></td>
            <td>Python</td>
            <td></td>
        </tr>
    </table>
</div>
</body>
</html>
