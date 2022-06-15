<html lang="ja" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>プロジェクト管理画面</title>
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
    <h2 class="project_update_title">プロジェクトの管理</h2>
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
            <form method="post" action="/career/projectsEdit" onSubmit="return confirmEdit()">
                <td class="company_and_project_name">
                    <input type="text" name="input_company" class="td_company" value="${pj.companyName}">
                </td>

                <td class="company_and_project_name">
                    <input type="text" name="input_project" class="td_project" value="${pj.projectName}">
                </td>

                <input type="hidden" value="${pj.id}" name="id">
                <td class="company_project_edit_delete">
                    <button type="submit" class="company_project_edit_button">編集</button>
                </td>
            </form>

            <form method="post" action="/career/projectsDelete" onSubmit="return confirmDelete()">
                <input type="hidden" value="${pj.id}" name="id">
                <td class="company_project_edit_delete">
                    <button type="submit" class="company_project_delete_button">削除</button>
                </td>
            </form>
        </tr>
    </#list>
    </table>
    <p class="statement">※企業名、またはプロジェクト名の修正・変更をしたい場合は対象の名称をクリックして入力した後に編集ボタンを押すと、変更が反映されます</p>
    <p class="statement">※削除ボタンを押すと、対象のプロジェクトを削除することができます(企業名の削除はできません)</p>

    <form method="post" id ="addPro" action="/career/projectAdd" onSubmit="return projectAdd()">
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
    <p class="statement">※[企業選択]から企業を選択し、プロジェクト名を入力してから追加ボタンを押すとプロジェクトが追加されます</p>

    <form method="post" id="addCom" action="/career/CompaniesAdd" onSubmit="return companyAdd()">
        <div class="input_companyName_and_addButton">
            <!--企業名の記入-->
            <div class="company_project_addButton_margin">
                <input type="text" name="company_name" placeholder="企業名を入力" class="input_company_name">
            </div>

            <div class="company_project_addButton_margin">
                <input type="submit" name="add_button" class="company_addButton" value="追加">
            </div>
        </div>
    </form>

    <p class="statement">※[企業選択]に対象の企業がない場合は下記のテキストボックスに企業名を入力して追加ボタンを押して企業を追加してください</p>

    <div class="project_update_empty"></div>
</div>

<script>
    function confirmEdit() {
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
    function companyAdd() {
        alert('[企業選択]に追加しました');
    }
</script>

<script>
    function projectAdd() {
        alert('追加しました');
    }
</script>

</body>
</html>