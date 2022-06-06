<html>

<head>
    <link rel="stylesheet" href="../style.css">
    <title>経歴書編集画面</title>

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


<div class="list_wrapper">

    <div class="list_wrapper_search">
        <div class="list_wrapper_empty">
        <h2 class="list_wrapper_title">
         プロジェクト(追加・編集・削除)　ページ
        </h2></div>

        <form>
            <div class="list_wrapper_header">
                <!--企業名の記入-->
                <div   class="list_header_items">
                    <input type="text" placeholder="企業名を入力してください" class="project_name_add">
                </div>
                <div   class="list_header_items">
                    <input type="text" placeholder="プロジェクト名を入力してください" class="project_name_add">
                </div>
                <div   class="list_header_items">
                    <button class="add_button" onclick="">追加</button>
                </div>



            </div>

            </form>

        <table>
</body>
</html>