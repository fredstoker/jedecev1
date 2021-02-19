<?php  
 $connect = mysqli_connect("localhost", "root", "", "seguridad");  
 $query = "SELECT sexo, count(*) as number FROM personal GROUP BY sexo";  
 $result = mysqli_query($connect, $query); 
 $query1 = "SELECT empresa, count(*) as number FROM personal group by empresa";
 $res1 = mysqli_query($connect, $query1); 
 $query2 = "SELECT rol, count(*) as number FROM usuarios group by rol";
 $res2 = mysqli_query($connect, $query2);
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Personal Femenino/Masculino</title>  
           <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
           <script type="text/javascript">  
           google.charts.load('current', {'packages':['corechart']});  
           google.charts.setOnLoadCallback(drawChart);  
           function drawChart()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Sexo', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo "['".$row["sexo"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {  
                      title: 'Porcentaje de personal masculino y femenino',  
                      //is3D:true,  
                      pieHole: 0.4  
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));  
                chart.draw(data, options);  
           }  
           google.charts.setOnLoadCallback(drawChart1); 
           function drawChart1()  
           {  
                var data1 = google.visualization.arrayToDataTable([  
                          ['Empresa', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($res1))  
                          {  
                               echo "['".$row["empresa"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options1 = {  
                      title: 'Cantidad de personal por empresa',  
                      //is3D:true,  
                      pieHole: 0.4  
                     };  
                var chart1 = new google.visualization.PieChart(document.getElementById('torta'));  
                chart1.draw(data1, options1);  
           } 
           google.charts.setOnLoadCallback(drawChart2); 
           function drawChart2()  
           {  
                var data2 = google.visualization.arrayToDataTable([  
                          ['Rol', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($res2))  
                          {  
                               echo "['".$row["rol"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options2 = {  
                      title: 'Cantidad de usuarios y roles',  
                      //is3D:true,  
                      pieHole: 0.4  
                     };  
                var chart2 = new google.visualization.PieChart(document.getElementById('torta1'));  
                chart2.draw(data2, options2);  
           }
           </script>  
      </head>  
      <body>  
           <br /><br />  
           <div style="width:auto;">  
                <h3 align="center">Tabla de datos personal</h3>  
                <br />  
                <div id="piechart" style="width: 700px; height: 400px;"></div>  
                <div id="torta" style="width: 700px; height: 400px;"></div>
                <div id="torta1" style="width: 700px; height: 400px;"></div>
           </div>  
      </body>  
 </html>  