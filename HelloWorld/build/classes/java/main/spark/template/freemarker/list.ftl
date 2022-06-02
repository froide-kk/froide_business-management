<html>

<head>
    <link rel="stylesheet" href="style.css">
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
            <div class="list_wrapper_header">
                <div class="list_header_items">
                    <input type="textbox" placeholder="社員名で検索">
                    <img src="" alt="虫">
                </div>
                <div class="list_header_items">
                    <select name="departments"　class="department_list">
                        <option value selected>所属部署</option>
                    </select>
                </div>
                <div class="list_header_items">
                    <select name="join_date" class="join_list">
                        <option value="">入社年月</option>
                    </select>
                </div>
                <div class="list_header_items">

                    <div class="subBody">
                        <input type="checkbox">Java
                    </div>

                </div>
                <div class="list_header_items">
                    <input type="textbox" placeholder="社員名で検索">
                    <img src="" alt="虫">
                </div>
            </div>

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