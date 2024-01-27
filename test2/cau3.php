<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cau2</title>
</head>
<style>
   form{
    margin-left: 40%;
    font-size: 20px;
   }
   table{
    padding : 10px;
   }
#tinh{
    background-color: #3333FF;
    border-radius: 5px;
    font-size: 15px;
    border: none;
    padding: 5px;

}
#nhapso{
    font-size: 18px
}

</style>
<body>
    
    
<?php
    $result = null;
    
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $num1 = isset($_POST['num1']) ? floatval($_POST['num1']) : 0;
        $num2 = isset($_POST['num2']) ? floatval($_POST['num2']) : 0;
        $result = $num1 * $num2;
        if(isset($_POST['num1']) && isset($_POST['num2'])) {
            $num1 = $_POST['num1'];
            $num2 = $_POST['num2'];
            if(is_numeric($num1) && is_numeric($num2)) {
              $result = $num1 * $num2;
            } else {
              print "<p>Vui lòng nhập giá trị số hợp lệ</p>";
            }
          } else {
            print "<p>Vui lòng nhập đủ thông tin</p>";
          }
}

    ?>

    <form method="post">
    <table>
        <caption>Tính tích hai số</caption>
        <tr>
            <td>Số a</td>
            <td><input type="text" name="num1" id="nhapso" required></td>
        </tr>
        <tr>
            <td>Số b</td>
            <td><input type="text" name="num2" id="nhapso" required></td>
        </tr>
        <tr>
            <td><input id="tinh" type="submit" value="Tính Tích"></td>
            <td><input  id="nhapso" type="text" name="tinhich" value="<?php echo $result; ?>">
                
        </tr>
    </table>
      
    </form>
</body>