<html xmlns="http://www.w3.org/1999/html">

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
            <!------<li><a href="http://localhost:4567/career/show(id)">My Page</a></li>----->
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
        <#list pj_lists as pj>
        <tr>
            <td class="company_and_project_name">${pj.companyName}</td>
            <td class="company_and_project_name">${pj.projectName}</td>
            <td class="company_project_edit_delete">
                <button class="company_project_edit_button">編集</button>
            </td>
            <form method="post" action="/career/projectsDelete" onSubmit="return confirmDelete()">
                <input type="hidden" value="${pj.id}" name="id">
                <td class="company_project_edit_delete">
                    <button type="submit" class="company_project_delete_button">削除</button>
                </td>
            </form>
        </tr>
    </#list>
    </table>
    <div class="project_update_empty"></div>

    <form method="post" action="/career/CompaniesAdd" onSubmit="return confirmCompanyAdd()">
        <div class="input_companyName_and_addButton">
            <!--企業名の記入-->
            <div class="company_project_addButton_margin">
                <input type="text"  placeholder="企業名を入力" class="input_company_name" name="company_name">
            </div>

            <div class="company_project_addButton_margin">
                <input type="submit" name="add_button" class="company_addButton" value="追加">
            </div>
        </div>
    </form>

    <form method="post" action="/career/projectAdd" onSubmit="return confirmProjectAdd()">
        <div class="selectCompanyName_and_inputProjectName_and_addButton">

            <div class="company_project_addButton_margin">
                <select name="company_id" class="selectCompanyName">
                    <option value="0">企業選択</option>
                    <#list companiesList as comList>
                    <option  value="${comList.id}">${comList.name}</option>
                    </#list>
                </select>
            </div>

            <div class="company_project_addButton_margin">
                <input type="text" name="project_name" placeholder="プロジェクト名を入力" class="input_project_name">
            </div>

            <div class="company_project_addButton_margin">
                <input type="submit" name="add_button" class="project_addButton" value="追加">
            </div>
        </div>
    </form>
    <div class="project_update_empty"></div>
</div>

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

<script>
    function confirmCompanyAdd() {
        let result = confirm('追加しますか?');
        if(result){
            alert('追加しました');
            return true;
        }else{
            return false;
        }
    }
</script>

<script>
    function confirmProjectAdd() {
        let result = confirm('追加しますか?');
        if(result){
            alert('追加しました');
            return true;
        }else{
            return false;
        }
    }
</script>
</body>
</html>