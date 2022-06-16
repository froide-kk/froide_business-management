<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>業務経歴書</title>
</head>
<body>
<!---------- ヘッダー部分　---------->
<header class="career">
    <h2><a class="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
    <nav>
        <ul class="header_right">
<!--            <li><a href="http://localhost:4567/career/show(id)">My Page</a></li>-->
            <li><a href="http://localhost:4567/career/management">管理者</a></li>
<!--            <li><input type="button" class="logout" onclick="location.href='/career/login'" value="ログアウト"></li>-->
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
    <h2 class="emp_update_title">従業員(追加・削除)　ページ</h2>
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
            <form method="post" action="/career/empUpdate/add" class="empAddForm">
                <tr>
                    <td class="emp_add_item">
                        <input type="text" placeholder="Yamada.T" name="name" class="add_name">
                    </td>

                    <td class="emp_add_item">
                        <select name="department_id" class="add_department_id">
                            <option>所属部署</option>
                            <#list departmentLists as depList>
                            <option value="${depList.id}" >${depList.name}</option>
                            </#list>
                        </select>
                    </td>

                    <td class="emp_add_item">
                        <input type="text" placeholder="yyyy-mm-dd" name="join_date" class="add_join_date">
                    </td>

                    <td class="emp_add_item">
                        <input type="text" placeholder="tarou-yamada@xxxxxx@co.jp" name="email" class="add_email">
                    </td>

                    <td class="emp_add_item2">
                        <input type="submit" class="emp_add_button" value="追加">
                    </td>
                </tr>
            </form>

            <script>
                const empAddForm = document.querySelector(".empAddForm")
                empAddForm.addEventListener("submit",(event) => {
                    event.preventDefault()
                    const name = document.querySelector(".add_name").value
                    const department_id = document.querySelector(".add_department_id").value
                    const join_date = document.querySelector(".add_join_date").value
                    const email = document.querySelector(".add_email").value
                    if(name === "" || department_id === "" || join_date === "" || email === ""){
                        alert("全て入力してください")
                    }else{
                        empAddForm.submit()
                    }
                })
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

        <#list EmpDeleteLists as EmpList>

        <tr class="emp_delete_item">
            <td class="emp_delete_col">${EmpList.id}</td>
            <td class="emp_delete_col">${EmpList.emp_name}</td>

            <form method="post" action="/career/empUpdate/keep" onSubmit="return confirmKeep()">
                <td class="emp_delete_col">
                    <select name="input_dep_id" class="depName">
                        <option value="0">${EmpList.dep_name}</option>
                        <option value="0">部署を変更する場合は下記から選択してください</option>
                        <#list departmentLists as depList>
                        <option value="${depList.id}">${depList.name}</option>
                    </#list>
                    </select>
                </td>

                <td class="emp_delete_col">
                    <input type="text" name="input_joinDate" class="joinDate" value="${EmpList.join_date}">
                </td>

                <td class="emp_delete_col">
                    <input type="text" name="input_email" class="email" value="${EmpList.email}">
                </td>

                <input type="hidden" value="${EmpList.id}" name="id">
                <td class="emp_keep_col2">
                    <button type="submit" class="emp_keep_button">保存</button>
                </td>
            </form>

            <form method="post" action="/career/empUpdate/delete" class="emp_delete" onsubmit="return confirmDelete()">
                <input type="hidden" value="${EmpList.id}" name="id">
                <td class="emp_delete_col2">
                    <button type="submit" class="emp_delete_button">削除</button>
                </td>
            </form>
        </tr>
        </#list>
    </table>
    <p class="statement">※情報の修正・変更をしたい場合は対象の名称をクリックしてテキストボックスに入力して保存ボタンを押すと、変更を保存できます</p>
    <p class="statement">※IDと名前の変更はできません</p>
    <p class="statement">※削除ボタンを押すと、対象のプロジェクトを削除することができます(企業名の削除はできません)</p>

    <script>
    function confirmKeep() {
        let result = confirm('変更した内容をデータベースへ反映しますか?');
        if(result){
            alert('変更しました');
            return true;
        }else{
            alert('変更を中止しました');
            return false;
        }
    }
    </script>

    <script>
        function confirmDelete() {
            let result = confirm('このプロジェクトを削除します。よろしいですか?');
            if(result){
                alert('削除しました');
                return true;
            }else{
                return false;
            }
        }
    </script>

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