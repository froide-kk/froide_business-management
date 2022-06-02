<html>
<head>
    <link rel="stylesheet" href="../style_1.css">
</head>
<body>
    <header class="disp">
            <h2 class="header_title">業務管理サイト</h2>
    </header>


    <form class="disp">
        <input class="disp_off" type="button" value="PDF化">
    </form>

        <h1 align="center">業務経歴書</h1>
        <table border="1" >
            <tr>
                <th width=200>氏名</th>
                <th width=200></th>
                <th width=200>生年月日</th>
                <th width=200>1999-11-06</th>
                <th width=200>資格</th>
            </tr>
            <tr>
                <th>住所</th>
                <td></td>
                <th>年齢</th>
                <th>
                    <script>
                    let Birtday = "1999-6-02"
                    let birtdayAry = Birtday.split('-')
                    const birthday = {
                         year: birtdayAry[0],
                         month: birtdayAry[1],
                         date: birtdayAry[2]
                         };
                    function getAge(birthday){
                       var today = new Date();
                        var thisYearsBirthday = new Date(today.getFullYear(), birthday.month-1, birthday.date);
                         var age = today.getFullYear() - birthday.year;
                        if(today < thisYearsBirthday){
                          age--;
                               }
                            return age;
                            }
                        document.write(getAge(birthday));
                </script>
                </th>
                <td rowspan ="2"></td>
            </tr>
            <tr>
                <th class="disp">最終学歴</th>
                <td class="disp"></td>
                <th>作業期間</th>
                <td>2022-4-1 ~ 2023-6-1</td>
                <th>作業期間</th>
                <td>2022-4-1 ~ 2023-4-21</td>
            </tr>
        </table>
        <p>業種</p>
        <div class="disp">
            <p1>企業名　※非表示にしたい</p1>
        </div>
        <div class="disp">
            <p1>企業名　※非表示にしたい</p1>
        </div>


    <script>
    const display = (flag) => {
    const target =  document.querySelectorAll(".disp")
    if(flag === true){
     target.forEach((element) =>{
    element.style.display = "block"
    })
    }else{
     target.forEach((element) =>{
    element.style.display = "none"
    })
    }
  }
    document.querySelector(".disp_off").addEventListener("click",() => {
    display(false)
    window.print();
    display(true)
    })
    </script>



</body>
</html>