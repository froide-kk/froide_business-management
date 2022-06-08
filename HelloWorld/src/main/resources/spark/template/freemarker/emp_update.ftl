<html>
<head>
    <link rel="stylesheet" href="../style.css">
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
<!---------- 戻るボタン ここまで---------->

<div class="emp_update_wrapper">
    <h2 class="emp_update_title">
        従業員(追加・削除)　ページ
    </h2>

    <table class="emp_add_table">
        <tr class="emp_add_list">
            <th class="emp_add_row">ID</th>
            <th class="emp_add_row">名前</th>
            <th class="emp_add_row">所属部署</th>
            <th class="emp_add_row">入社年月</th>
            <th class="emp_add_row">メールアドレス</th>
        </tr>

        <tr>
            <td class="emp_add_item"><input type="text" value="ID"></td>
            <td class="emp_add_item"><input type="text" value="Yamada.T"></td>
            <td class="emp_add_item">
                <select name="departments">
                    <option value="">所属部署</option>
                </select>
            </td>
            <td class="emp_add_item"><input type="text" value="yyyy-mm-dd"></td>
            <td class="emp_add_item"><input type="text" value="tarou-yamada@xxxxxx@co.jp"></td>
            <td class="emp_add_item"><input type="submit" class="emp_add_button" value="追加"></td>
        </tr>
    </table>

    <form method="get" action="/career/empUpdate">
    <div class="emp_delete_form">
        <input type="text" placeholder="従業員名を入力してください" class="emp_delete_search" name="searchName"><button class="emp_delete_search_button">検索</button>
    </div>
    </form>

    <table class="emp_delete_table">
        <tr class="emp_delete_list">
            <th class="emp_delete_row">ID</th>
            <th class="emp_delete_row">名前</th>
            <th class="emp_delete_row">所属部署</th>
            <th class="emp_delete_row">入社年月</th>
            <th class="emp_delete_row">メールアドレス</th>
        </tr>

        <tr class="emp_delete_item">
            <#list Emplists as Emplist>
            <td class="emp_delete_col">${Emplist.id}</td>
            <td class="emp_delete_col">${Emplist.name}</td>
            <td class="emp_delete_col">${Emplist.department_id}</td>
            <td class="emp_delete_col">${Emplist.join_date}</td>
            <td class="emp_delete_col">${Emplist.email}</td>
            <td class="emp_delete_col">
                <input type="submit" class="emp_delete_button" value="削除">
            </td>
        </tr>
    </#list>
    </table>

</div>
</body>
</html>