<html xmlns="http://www.w3.org/1999/html">
<head>
    <link rel="stylesheet" href="../style.css">
    <title>管理者画面</title>
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
        <button class="browseBack" onclick="history.back(-1);return false;"><a href="#">戻る</a></button>
    </ul>
</nav>
<!---------- 戻るボタン ここまで ---------->
<div class="admin_wrapper">
    <h2 class="admin_title">
         管理者画面
    </h2>

    <div class="admin_button">
        <a href="http://localhost:4567/career/skillCheck"><button class="admin_item">技術チェック項目の編集</button></a>
        <a href="http://localhost:4567/career/empUpdate"><button class="admin_item">従業員の追加・削除</button></a>
        <a href="http://localhost:4567/career/managementUpdate"><button class="admin_item">管理者の権限設定</button></a>
        <a href="http://localhost:4567/career/projectsUpdate"><button class="admin_item">プロジェクトの管理</button></a>
    </div>
</div>
</body>
</html>