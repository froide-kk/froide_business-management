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
    <div class="table_and_button">
        <table border="1" style="border-collapse: collapse" class="company_project_table">
            <tr>
                <th class="company_project_name">企業名</th>
                <th class="company_project_name">プロジェクト名</th>
            </tr>
            <tr>
                <td>フロイデ株式会社</td>
                <td>か　ま　ぼ　こ</td>
            </tr>
            <tr>
                <td>フロイデ株式会社</td>
                <td>か　ま　ぼ　こ</td>
            </tr>
            <tr>
                <td>フロイデ株式会社</td>
                <td>か　ま　ぼ　こ</td>
            </tr>
            <tr>
                <td>フロイデ株式会社</td>
                <td>か　ま　ぼ　こ</td>
            </tr>
            <tr>
                <td>フロイデ株式会社</td>
                <td>か　ま　ぼ　こ</td>
            </tr>
            <tr>
                <td>フロイデ株式会社</td>
                <td>か　ま　ぼ　こ</td>
            </tr>
        </table>

        <table class="edit_and_delete_table">
            <tr>
                <th class="stealth">文字</th>
                <th class="stealth">文字</th>
            </tr>
            <tr>
                <td class="company_project_edit"><button class="company_project_edit_button">編集</button></td>
                <td class="company_project_edit"><button class="company_project_delete_button">削除</button></td>
            </tr>
            <tr>
                <td class="company_project_edit"><button class="company_project_edit_button">編集</button></td>
                <td class="company_project_edit"><button class="company_project_delete_button">削除</button></td>
            </tr>
            <tr>
                <td class="company_project_edit"><button class="company_project_edit_button">編集</button></td>
                <td class="company_project_edit"><button class="company_project_delete_button">削除</button></td>
            </tr>
            <tr>
                <td class="company_project_edit"><button class="company_project_edit_button">編集</button></td>
                <td class="company_project_edit"><button class="company_project_delete_button">削除</button></td>
            </tr>
            <tr>
                <td class="company_project_edit"><button class="company_project_edit_button">編集</button></td>
                <td class="company_project_edit"><button class="company_project_delete_button">削除</button></td>
            </tr>
            <tr>
                <td class="company_project_edit"><button class="company_project_edit_button">編集</button></td>
                <td class="company_project_edit"><button class="company_project_delete_button">削除</button></td>
            </tr>

        </table>
    </div>
    <div class="project_update_empty"></div>
    <div class="">
        <form>
            <!--企業名の記入-->
            <div class="">
                <input type="text" placeholder="企業名を入力してください" class="company_name_add">
            </div>
            <div class="">
                <input type="text" placeholder="プロジェクト名を入力してください" class="">
            </div>
            <div class="">
                <button class="" onclick="">追加</button>
            </div>
        </form>
    </div>
    <div class="project_update_empty"></div>
</div>
</body>
</html>
