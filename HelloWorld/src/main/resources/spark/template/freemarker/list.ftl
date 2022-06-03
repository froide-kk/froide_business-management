<html>

<head>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
</head>

<body>

<!---------- ヘッダー部分　---------->
<header class="career">
    <h2><a class ="header_title" href="http://localhost:4567/career">業務経歴管理サイト</a></h2>
    <nav>
        <ul class="header_right">
            <li><a href="http://localhost:4567/career/show(id)">My Page</a></li>
            <li><a href="http://localhost:4567/career/admin">管理者</a></li>
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
<h2 class="list_wrapper_title">
    一覧画面
</h2>


<div class="list_wrapper">
    <div class="list_wrapper_search">
        <div class="list_wrapper_empty"></div>
        <form>
            <div class="list_wrapper_header">
                <!--                社員名の検索-->
                <div   class="list_header_items">
                    <input type="text" placeholder="社員名で検索" class="emp_name_search">
                </div>
                <!--                所属部署の検索-->
                <div  class="list_header_items">
                    <select name="departments" class="department_list">
                        <option value="">所属部署</option>
                    </select>
                </div>
                <!--                入社年月の検索-->
                <div class="list_header_items">
                    <select name="join_date" class="join_list">
                        <option value="">入社年月</option>
                        <option value="">降順</option>
                        <option value="">昇順</option>
                    </select>
                </div>
                <!--                技術チェックのチェックボックス-->
                <div class="list_header_items">
                    <div class="skillCheck">
                        <label class="skillLabel" for="skillCheckLabel">技術</label><!--技術ボタンの設定-->
                        <input type="checkbox" class="skillCheckbox" id="skillCheckLabel">
                        <ul class="skillList">
                            <li><input type="checkbox">Java</li>
                            <li><input type="checkbox">Spark</li>
                            <li><input type="checkbox">JavaScript</li>
                            <li><input type="checkbox">MySQL</li>
                            <li><input type="checkbox">macOS</li>
                        </ul>
                    </div>
                    <!--                    生年月日の検索-->
                </div>
                <div class="list_header_items">
                    <input type="text" placeholder="生年月日で検索" class="birthday_search">
                </div>
                <button class="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>

            </form>

        <table>
        <div class="list_wrapper_band">
<!--            ラベルの白線消したい-->
                <tr class="list_wrapper_label">
                    <th>番号</th>
                    <th>名前</th>
                    <th>所属部署</th>
                    <th>入社年月</th>
                    <th>技術</th>
                </tr>
        </div>

        <div class="list_wrapper_band">
            <#list Emplists as Emplist>
            <tr class="list_wrapper_items">
                <td>${Emplist_index+1}</td>
                <td>${Emplist.name}</td>
                <td>${Emplist.department_id}</td>
                <td>${Emplist.join_date}</td>
                <td>DB技術</td>
            </tr>
        </#list>
    </div>
    </table>

</div>

    <div class="list_wrapper_numbers">
        <p>1 2 3 4 5 6</p>
    </div>

    <div class="page-nation_button">
        <div class="left_button">
            ⇦ 前へ
        </div>
        <div class="right_button">
            次へ　⇨
        </div>
    </div>

</div>
</body>
</html>