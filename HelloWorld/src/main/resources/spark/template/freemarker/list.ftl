<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
    <title>一覧画面</title>
</head>

<body>

<!---------- ヘッダー部分　---------->
<header class="career">
    <h2><a class ="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
    <nav>
        <ul class="header_right">
<!--            <li><a href="http://localhost:4567/career/show">My Page</a></li>-->
            <li><a href="http://localhost:4567/career/management">管理者</a></li>
<!--            <li><input type="button" class="logout" onclick="location.href='/career/login'" value="ログアウト"></li>-->
        </ul>
    </nav>
</header>
<!---------- 戻るボタン ---------->
<!--<nav>-->
<!--    <ul class="back">-->
<!--        <button class="browseBack" onclick="history.back(-1);return false;"><a href="#" >戻る</a></button>-->
<!--    </ul>-->
<!--</nav>-->
<h2 class="list_wrapper_title">
    一覧画面
</h2>
<div class="list_wrapper">
    <div class="list_wrapper_search">
        <div class="list_wrapper_empty"></div>

            <div class="list_wrapper_header">
                <input type="hidden" name="search" value="search" id="name">
                <!--                社員名の検索-->
                <form method="get" action="/career">
                    <div   class="list_header_items">
                        <input type="text" placeholder="社員名で検索" class="emp_name_search" name="searchName" maxlength="256">
                        <button class="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </div>
                </form>
                    <!--                所属部署の検索-->
                <form method="get" action="/career">
                    <div  class="list_header_items">
                        <select class="department_list" name="searchDepartment">
                            <option value="0">所属部署</option>
                            <#list departmentLists as depList>
                            <option value="${depList.id}">${depList.name}</option>
                        </#list>
                        </select>
                        <button class="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </div>
                </form>
                    <!--                入社年月の検索-->
                <form method="get" action="/career">
                    <div class="list_header_items">
                        <select name="join_date" class="join_list">
                            <option>入社年月</option>
                            <option value="0">昇順</option>
                            <option value="1">降順</option>
                        </select>
                        <button class="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </div>
                </form>
                    <!--                技術チェックのチェックボックス-->
<!--                <form method="get" action="/career">-->
<!--                    <div class="list_header_items">-->
<!--                        <div class="skillCheck">-->
<!--                            <label class="skillLabel" for="skillCheckLabel">技術</label>&lt;!&ndash;技術ボタンの設定&ndash;&gt;-->
<!--                            <input type="checkbox" class="skillCheckbox" id="skillCheckLabel">-->
<!--                            <ul class="skillList">-->
<!--                                <li><input type="checkbox" name="searchSkillList" value="Java">Java</li>-->
<!--                                <li><input type="checkbox" name="searchSkillList" value="Spark">Spark</li>-->
<!--                                <li><input type="checkbox" name="searchSkillList" value="JS">JavaScript</li>-->
<!--                                <li><input type="checkbox" name="searchSkillList" value="MySQL">MySQL</li>-->
<!--                                <li><input type="checkbox" name="searchSkillList" value="macOS">macOS</li>-->
<!--                            </ul>-->
<!--                        </div>-->
<!--                        <button>技術検索</button>-->
<!--                </form>-->
                        <!--                    生年月日の検索-->
                <form method="get" action="/career">
                    <div class="list_header_items">
                        <input type="text" placeholder="誕生月で検索" class="birthday_search" name="searchBirthDay">
                        <button class="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </div>
                </form>
            </div>

        <table>
        <div class="list_wrapper_band">
                <tr class="list_wrapper_label">
                    <th class="list_row">番号</th>
                    <th class="list_row">名前</th>
                    <th class="list_row">所属部署</th>
                    <th class="list_row">入社年月</th>
                </tr>
        </div>

        <div class="list_wrapper_band">
            <#list Emplists as Emplist>
            <tr class="list_wrapper_items">
                <td class="list_col">${Emplist_index+1}</td>
                <form method="get" action="/career/show">
                    <td class="list_col">
                        <input type="hidden" value=${Emplist.id} name="id">
                       <!--作業終わったら削除して                        -->
                        <input type="submit" value="${Emplist.emp_name}">
                    </td>
                </form>
                <td class="list_col">${Emplist.dep_name}</td>
                <td class="list_col">${Emplist.join_date}</td>
            </tr>
        </#list>
    </div>
    </table>

</div>

</div>
</body>
</html>
