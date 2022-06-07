<html>
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
            <li><a href="http://localhost:4567/career/show(id)">My Page</a></li>
            <li><a href="http://localhost:4567/career/management">管理者</a></li>
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
<div class="skillCheck_wrapper">
    <h2 class="skillCheck_title">技術チェック項目 編集ページ</h2>
    <div class="skill_wrapper_empty"></div>
    <table border="1" style="border-collapse: collapse" class="skill_table">
        <tr>
            <th class="skill_name">OS</th>
            <th class="skill_name">スクリプト・ツール</th>
            <th class="skill_name">データベース</th>
        </tr>

        <tr>
            <td class="skill_data"></td>
            <td class="skill_data">Java</td>
            <td class="skill_data">MySQL</td>
        </tr>

        <tr>
            <td class="skill_data"></td>
            <td class="skill_data">JavaScript</td>
            <td class="skill_data"></td>
        </tr>

        <tr>
            <td class="skill_data"></td>
            <td class="skill_data">Python</td>
            <td class="skill_data"></td>
        </tr>
    </table>

    <div class="skill_wrapper_empty"></div>

    <div class="skill_add">
        <div class="skill_add_item">
            <input type="text" id="name" class="skill_add_name">
        </div>

        <div class="skill_add_item">
            <form action="post" action="/carrer/skill_check">
                <select class="skill_select">
                    <option>技術を選択</option>
                    <option>OS</option>
                    <option>スクリプト・ツール</option>
                    <option>DB</option>
                </select>
            </form>
        </div>

        <div class="skill_add_item">
            <input type="button" name="add_button" class="skill_add_button" value="追加">
        </div>
    </div>
    <div class="skill_wrapper_empty"></div>
</div>
</body>
</html>
