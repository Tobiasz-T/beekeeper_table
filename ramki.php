<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="plik.css">
</head>
<body>
    <div id="zad">
                <div id="box"><img src="img/bee-box.png"class="i1"><br><br><br><br><h5><a href="przegląd.php">Przegląd</a></h5></div>
                <div id="box"><img src="img/bee.png"class="i2"><br><br><br><br><h5><a href="dokarmianie.php">Dokarmianie</a></h5></div>
                <div id="box"><img src="img/honeycomb.png"class="i3"><br><br><br><br><h5><a href="miodobranie.php">Miodobranie</a></h5></div>
                <div id="box"><img src="img/honey.png"class="i4"><br><br><br><br><h5><a href="ramki.php">Ramki</a></h5></div>
                <div id="box"><img src="img/hive.png"class="i5"><br><br><br><br><h5><a href="ul.php">Rójka/Ul</a></h5></div>
    </div>
    <div id="contener">
        <div id="lc">
                <div id="formularz-przeglad">
                    <h1>Tabela pszczelarska - ramki</h1>
                        <br>
                        <form method="post" action="">
                            <img src="img/bee-box.png">
                        <?php
                            $connect=mysqli_connect("localhost","root","","pszczelarstwo");
                            $sql="SELECT * FROM `ul`";
                            $wynik=mysqli_query($connect,$sql);
                                while($wiersz=mysqli_fetch_assoc($wynik))
                                {
                                    echo '<tr>';
                                    echo'<td><input type="radio" name="Ul"  value='.$wiersz['Ul'].'</td>';
                                    echo'<label>'.$wiersz['Ul'].'</label>';
                                    echo '</tr>';
                                }
                                mysqli_close($connect);
                        ?>
                            <label><br><br>Data: </label><input type="date" name="Data"><br><br>
                            <label>Rodzaj: </label><br><br>
                            <select name="Rodzaj">
                                    <option value="Weza" >Węza</option>
                                    <option value="Z czerwiem">Z czerwiem</option>
                                    <option value="Z pylkiem">Z pyłkiem</option>
                                </select><br><br>
                            <label>Ilość: </label><input type="number" name="Ilosc"><br><br>
                            <input type="submit" value="Zapisz">		
                        </form>
                </div>
                <?php
                    if (isset ($_POST['Ul'])&& isset ($_POST['Data'])){
                    $Ul=$_POST['Ul'];
			        $Data=$_POST['Data'];
                    $Rodzaj=$_POST['Rodzaj'];
                    $Ilosc=$_POST['Ilosc'];
                        $connect=mysqli_connect("localhost","root","","pszczelarstwo");
                        $sql="INSERT INTO `ramki`(`Ul`,`Data`,`Rodzaj`,`Ilosc`)VALUES('$Ul','$Data','$Rodzaj',$Ilosc)";
                        $wynik=mysqli_query($connect,$sql);	
                        mysqli_close($connect);
                    }
		        ?>    
        </div>    
        <div id="rc">
            <table>
            <tr>    
                <th>Ul</th> <th>Data</th> <th>Rodzaj</th> <th>Ilość</th>
            </tr> 
            <?php
                $connect=mysqli_connect("localhost","root","","pszczelarstwo");
                $sql="SELECT * FROM `ramki`";
                $wynik=mysqli_query($connect,$sql);
                    while($wiersz=mysqli_fetch_assoc($wynik))
                    {
                        echo '<tr>';
                        echo'<td>'.$wiersz['Ul'].' '.'</td><td>'.$wiersz['Data'].' '.'</td><td>'.$wiersz['Rodzaj'].'</td><td>'.' '.$wiersz['Ilosc'].'</td><br>';
                        echo '</tr>';
                    }
                    mysqli_close($connect);
            ?>
            </table>
        </div>
    </div>
    <div id="footer">
            <div class="cont">
                <div class="button">
                        <div class="icon">
                                <i class="fa fa-phone-square"></i></div> 
                                <span>tel:665-525-360</span>
                 </div>  
                 <div class="button">
                    <div class="icon">
                        <i class="fab fa-whatsapp"></i></div>
                            <span>tel:665-525-360</span>
                 </div>  
                 <div class="button">
                    <div class="icon">
                        <i class="fa fa-at"></i></div>
                            <span>tobi1997tobi@wp.pl</span>
                     </div>   
                <div class="button">
                <div class="icon">
                        <i class="fab fa-linkedin"></i></div>
                            <span><a href="https://www.linkedin.com/home">linkedin</a></span>
                 </div>                
            </div>
    </div>
</body>