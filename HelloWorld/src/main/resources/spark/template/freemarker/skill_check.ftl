<html xmlns="http://www.w3.org/1999/html">
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
<!--            <li><a href="http://localhost:4567/career/show(id)">My Page</a></li>-->
            <li><a href="http://localhost:4567/career/management">管理者</a></li>
<!--            <li><button class="logout">ログアウト</button></li>-->
        </ul>
    </nav>
</header>
<!---------- 戻るボタン ---------->
<nav>
    <ul class="back">
        <button class="browseBack" onclick="location.href='/career/management'"><a href="#" >戻る</a></button>
    </ul>
</nav>
<div class="skillCheck_wrapper">
    <h2 class="skillCheck_title">技術チェック項目 編集ページ</h2>
    <div class="skill_wrapper_empty"></div>
    <div class="os_script_db">
        <table border="1" style="border-collapse: collapse" class="skill_table">
            <tr>
                <th class="skill_name" colspan="3">OS</th>
            </tr>

            <#list os_lists as os>
            <tr>
                <td class="skill_data">${os.name}</td>
                <td class="skill_edit_delete"><button class="skill_edit_button">編集</button></td>
                <form method="post" action="/career/skillCheck/delete" onSubmit="return confirmDelete()">
                    <input type="hidden" value="${os.id}" name="id">
                    <td class="skill_edit_delete">
                        <button type="submit" class="skill_delete_button" onclick="skill_delete()">削除</button>
                    </td>
                </form>
            </tr>
        </#list>
        </table>

        <table border="1" style="border-collapse: collapse" class="skill_table">
            <tr>
                <th class="skill_name" colspan="3">スクリプト・ツール</th>
            </tr>

            <#list script_lists as script>
            <tr>
                <td class="skill_data">${script.name}</td>
                <td class="skill_edit_delete"><button class="skill_edit_button">編集</button></td>
                <form method="post" action="/career/skillCheck/delete" onSubmit="return confirmDelete()">
                    <input type="hidden" value="${script.id}" name="id">
                    <td class="skill_edit_delete">
                        <button type="submit" class="skill_delete_button" onclick="skill_delete()">削除</button>
                    </td>
                </form>
            </tr>
        </#list>
        </table>

        <table border="1" style="border-collapse: collapse" class="skill_table">
            <tr>
                <th class="skill_name" colspan="3">データベース</th>
            </tr>
            <#list db_lists as db>
            <tr>
                <td class="skill_data">${db.name}</td>
                <td class="skill_edit_delete"><button class="skill_edit_button">編集</button></td>
                <form method="post" action="/career/skillCheck/delete" onSubmit="return confirmDelete()">
                    <input type="hidden" value="${db.id}" name="id">
                    <td class="skill_edit_delete">
                        <button type="submit" class="skill_delete_button" onclick="skill_delete()">削除</button>
                    </td>
                </form>
            </tr>
        </#list>
        </table>

        <script>
            function confirmDelete() {
                let result = confirm('本当に削除しますか?');
                if(result){
                    alert('削除しました');
                    return true;
                }else{
                    return false;
                }
            }
        </script>
    </div>

    <div class="skill_wrapper_empty"></div>
    <form method="post" action="/career/skillCheck/add">
        <div class="skill_add">
            <div class="skill_add_item">
                <input type="text" id="name" class="skill_add_name" name="name"/>
            </div>

            <div class="skill_add_item">
                <select name="skill_attribute_id" class="skill_select">
                    <option>技術を選択</option>
                    <#list skill_attributesList as attList>
                    <option value="${attList.id}">${attList.name}</option>
                </#list>
                </select>
            </div>

            <div class="skill_add_item">
                <input type="submit" name="add_button" class="skill_add_button" value="追加" onclick="skill_add()">
            </div>
        </div>

        <script>
            function skill_add(){
                let result = confirm('追加しますか?');
                if(result){
                    alert('追加しました');
                    return true;
                }else{
                    return false;
                }
            }
        </script>
    </form>
    <div class="skill_wrapper_empty"></div>
</div>
</body>
</html>

