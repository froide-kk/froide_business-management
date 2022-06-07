<html>
<head>
    <link rel="stylesheet" href="../style.css">
    <title>業務経歴書</title>
</head>
<body>
<!---------- ヘッダー部分　---------->
<header class="career">
    <h2><a class="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
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
<!--------------ここまで----------------->

<!--  管理画面部分  -->
<div class="admin_authorize_wrapper">
    <h2 class="admin_authorize_title">
        管理者権限（付与・削除）　ページ
    </h2>

    <table class="admin_authorize_delete_table">
        <tr class="admin_authorize_delete_list">
            <th class="admin_authorize_delete_row">ID</th>
            <th class="admin_authorize_delete_row">名前</th>
            <th class="admin_authorize_delete_row">所属部署</th>
            <th class="admin_authorize_delete_row">入社年月</th>
        </tr>

        <tr class="admin_authorize_delete_item">
            <#list Emplists as Emplist>
            <td class="admin_authorize_delete_col">${Emplist.id}</td>
            <td class="admin_authorize_delete_col">${Emplist.name}</td>
            <td class="admin_authorize_delete_col">${Emplist.department_id}</td>
            <td class="admin_authorize_delete_col">${Emplist.join_date}</td>
            <form method="post" action="/career/managementUpdate">
            <td class="admin_authorize_delete_col"><button class="admin_authorize_delete_button">削除</button></td>
            </form>
        </tr>
        </#list>
    </table>

    <div class="admin_authorize_search_form">
        <input type="text" placeholder="従業員名を入力してください" class="admin_authorize_search"><button class="admin_authorize_search_button">検索</button>
    </div>

    <table class="admin_authorize_search_table" >
        <tr class="admin_authorize_search_list">
            <th class="admin_authorize_search_row">ID</th>
            <th class="admin_authorize_search_row">名前</th>
            <th class="admin_authorize_search_row">所属部署</th>
            <th class="admin_authorize_search_row">入社年月</th>
        </tr>

        <tr class="admin_authorize_search_item">
            <td class="admin_authorize_search_col"></td>
            <td class="admin_authorize_search_col"></td>
            <td class="admin_authorize_search_col"></td>
            <td class="admin_authorize_search_col"></td>
        </tr>
    </table>

</div>
</body>
</html>