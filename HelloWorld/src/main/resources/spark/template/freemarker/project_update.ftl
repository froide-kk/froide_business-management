<html>

<head>
    <link rel="stylesheet" href="../style.css">
    <title>プロジェクト編集画面</title>
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
<!--------- プロジェクトページ ---------->
<div class="project_update_wrapper">
    <h2 class="project_update_title">プロジェクト(追加・編集・削除)　ページ</h2>
    <div class="project_update_empty"></div>
    <table class="company_project_name_and_edit_and_delete_button_table">
        <tr>
            <th class="company_name">企業名</th>
            <th class="project_name">プロジェクト名</th>
            <th class="stealth">文字</th>
            <th class="stealth">文字</th>
        </tr>

        <tr>
            <td class="company_and_project_name">フロイデ株式会社</td>
            <td class="company_and_project_name">かまぼこかまぼこ</td>
            <td class="company_project_edit_delete"><button class="company_project_edit_button">編集</button></td>
            <td class="company_project_edit_delete"><button class="company_project_delete_button">削除</button></td>
        </tr>

        </table>
    <div class="project_update_empty"></div>

    <div class="input_name_and_addButton">
            <!--企業名の記入-->
        <div class="company_project_addButton_margin">
            <input type="text" placeholder="企業名を入力" class="input_company_name">
        </div>

        <div class="company_project_addButton_margin">
            <input type="text" placeholder="プロジェクト名を入力" class="input_project_name">
        </div>

        <div class="company_project_addButton_margin">
            <button class="company_and_project_addButton" onclick="">追加</button>
        </div>
    </div>
    <div class="project_update_empty"></div>
</div>
</body>
</html>
