<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style_1.css">
    <title>業務経歴書</title>
</head>
<body>
<!---------- ヘッダー部分　---------->
<header class="career">
    <h2 class ="header_title"> 業務経歴管理サイト</h2>
</header>


<form name="login_form">
      <div class="login_form_top">
        <h1>LOGIN</h1>
        <p>ゲスト用アカウント　ID[guest]　PASS[guest]</p>
        <p>ゲスト用アカウント　ID[1]　PASS[p1k@tyu]</p>
      </div>
      <div class="login_form">
        <input type="id" name="user_id" placeholder="UserID">
        <input type="password" name="password" placeholder="Password" onchange="nextPage()">
        <input type="button" name="botton" value="LOGIN" onClick= "nextPage();">
      </div>
    </form>
     <!--ログイン処理-->
            <script>
                console.log("スクリプト実行可能");
                function nextPage() {
                console.log("ログインボタン選択され、nextPageが実行しました");
                    id = document.login_form.user_id.value
                    pwd = document.login_form.password.value;
                    console.log("画面遷移の直前まできました");
                    console.log(id);
                    console.log(pwd);
                    if (id === "guest" && pwd === "guest") {
                    window.location.href = 'http://localhost:4567/career';
                    }else if(id === "1" && pwd === "p1k@tyu"){
                     window.location.href = 'http://localhost:4567/career';
                    }else{
                    alert("IDもしくはパスワードが間違っています")
                    }
                   }
            </script>
</body>
</html>