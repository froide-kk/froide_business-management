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
        <button class="browseBack" onclick="location.href='/career/management'"><a href="#" >戻る</a></button>
    </ul>
</nav>
<!---------- 戻るボタン ここまで---------->

<div class="emp_update_wrapper">
    <h2 class="emp_update_title">
        従業員(追加・削除)　ページ
    </h2>
    <p color="red">${error}</p>
<!--従業員追加のテーブル-->
    <table class="emp_add_table">
        <tr class="emp_add_list">
            <th class="emp_add_row">名前</th>
            <th class="emp_add_row">所属部署</th>
            <th class="emp_add_row">入社年月</th>
            <th class="emp_add_row">メールアドレス</th>
        </tr>

        <div class="emp_add_form">
            <form method="post" action="/career/empUpdate/add">
                <tr>
                    <td class="emp_add_item"><input type="text" placeholder="Yamada.T" name="name" class="add_name"></td>
                    <td class="emp_add_item">
                        <select name="department_id">
                            <option value="">所属部署</option>
                            <#list departmentLists as depList>
                            <option value="${depList.id}" class="add_department_id">${depList.name}</option>
                        </#list>
                        </select>
                    </td>
                    <td class="emp_add_item"><input type="text" placeholder="yyyy-mm-dd" name="join_date" class="add_join_date"></td>
                    <td class="emp_add_item"><input type="text" placeholder="tarou-yamada@xxxxxx@co.jp" name="email" class="add_email">
                    </td>
                    <td class="emp_add_item2"><input type="submit" class="emp_add_button" value="追加" onClick="errorSentence()"></td>
                </tr>
            </form>
            <script>
    console.log("errorSentence()まで来ました")
    function errorSentence() {
    const name = document.getElementsByClassName("add_name")
    const department_id = document.getElementsByClassName("add_department_id")
    const join_date = document.getElementsByClassName("add_join_date")
    const email  = document.getElementsByClassName("add_email")
    if(name == "") {
    alert("全て入力してください")
    }else if(department_id == null) {
    alert("全て入力してください")
    }else if(join_date == "") {
    alert("全て入力してください")
    }else if(email == ""){
    alert("全て入力してください")
    }else{
    }
    }
    </script>
        </div>
    </table>



<!-- 従業員削除の検索フォーム-->
    <form method="get" action="/career/empUpdate">
        <div class="emp_delete_form">
            <input type="text" placeholder="従業員名を入力してください" class="emp_delete_search" name="searchName">
            <button class="emp_delete_search_button">検索</button>
        </div>
    </form>

<!--    従業員削除のテーブル-->
    <table class="emp_delete_table">
        <tr class="emp_delete_list">
            <th class="emp_delete_row">ID</th>
            <th class="emp_delete_row">名前</th>
            <th class="emp_delete_row">所属部署</th>
            <th class="emp_delete_row">入社年月</th>
            <th class="emp_delete_row">メールアドレス</th>
        </tr>

        <tr class="emp_delete_item">
            <#list EmpDeleteLists as EmpList>
            <td class="emp_delete_col">${EmpList.id}</td>
            <td class="emp_delete_col">${EmpList.emp_name}</td>
            <td class="emp_delete_col">${EmpList.dep_name}</td>
            <td class="emp_delete_col">${EmpList.join_date}</td>
            <td class="emp_delete_col">${EmpList.email}</td>
            <form method="post" action="/career/empUpdate/delete">
                <td class="emp_delete_col2">
                    <input type="hidden" value="${EmpList.id}" name="id">
                    <input type="submit" class="emp_delete_button" value="削除" onClick="confirmationDelete()">
                </td>
            </form>
        </tr>
    </#list>
    </table>

    <script>
        console.log("スクリプトまで成功です！")
        function confirmationDelete() {
        console.log("confirmationDelete()まで来ました")
        alert("削除しますか？")
        }
    </script>

<!--従業員再追加のテーブル-->
    <table class="emp_delete_table">
        <tr class="emp_delete_list">
            <th class="emp_delete_row">ID</th>
            <th class="emp_delete_row">名前</th>
            <th class="emp_delete_row">所属部署</th>
            <th class="emp_delete_row">入社年月</th>
            <th class="emp_delete_row">メールアドレス</th>
        </tr>

        <tr class="emp_delete_item">
            <#list DeleteEmpLists as DeleteList>
            <td class="emp_delete_col">${DeleteList.id}</td>
            <td class="emp_delete_col">${DeleteList.emp_name}</td>
            <td class="emp_delete_col">${DeleteList.dep_name}</td>
            <td class="emp_delete_col">${DeleteList.join_date}</td>
            <td class="emp_delete_col">${DeleteList.email}</td>
            <form method="post" action="/career/empUpdate/reAdd">
                <td class="emp_delete_col2">
                    <input type="hidden" value="${DeleteList.id}" name="id">
                    <input type="submit" class="emp_delete_button" value="再追加" onClick="confirmationReAdd()">
                </td>
            </form>
        </tr>
    </#list>
    </table>

    <script>
         console.log("スクリプトまで成功です！")
        function confirmationReAdd() {
        console.log("confirmationReAdd()まで来ました")
        alert("再追加しますか？")
        }
    </script>

</div>
</body>
</html>