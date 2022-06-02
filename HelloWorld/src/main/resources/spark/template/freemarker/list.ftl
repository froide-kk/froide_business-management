<html>

<head>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
</head>

<body>
    <header>
            <h2 class="header_title">業務管理サイト</h2>
        <div class="header_right">
            <a><p>My Page</p></a>
            <a><p>管理者</p></a>
            <button>ログアウト</button>
        </div>
    </header>

    <h2 class="list_wrapper_title">
        一覧画面
    </h2>



    <div class="list_wrapper">
        <div class="list_wrapper_search">
            <div class="list_wrapper_empty"></div>
            <form>
            <div class="list_wrapper_header">
<!--                社員名の検索-->
                <div class="list_header_items">
                    <input type="textbox" placeholder="社員名で検索">
                </div>
<!--                所属部署の検索-->
                <div class="list_header_items" class="department_list">
                    <select name="departments">
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
                    <input type="textbox" placeholder="生年月日で検索">
                    <button class="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </div>
            </form>

            <div class="list_wrapper_band">
                <ul class="list_wrapper_label">
                    <li>番号</li>
                    <li>名前</li>
                    <li>所属部署</li>
                    <li>入社年月</li>
                    <li>技術</li>
                </ul>
            </div>

            <div class="list_wrapper_band">
                <#list Emplists as Emplist>
                <ul class="list_wrapper_items">
                    <li>${Emplist_index+1}</li>
                    <li>${Emplist.name}</li>
                    <li>${Emplist.department_id}</li>
                    <li>${Emplist.join_date}</li>
                    <li>DB技術</li>
                </ul>
            </#list>
            </div>

        </div>

        <div class="list_wrapper_numbers">
            <p>1 2 3 4 5 6</p>
        </div>

        <div class="page-nation_button">
            <div class="left_button">
              ⇦  前へ
            </div>
            <div class="right_button">
                次へ　⇨
            </div>
        </div>

    </div>
</body>
</html>