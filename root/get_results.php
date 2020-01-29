<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, intial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <title>Show Image in PHP - Campuslife</title>

</head>

<body>
    <!-------------------Main Content------------------------------>

    <?php
    if (isset($_POST['search'])) {
        $host = "localhost";
        $uname = "root";
        $pwd = '';
        $db_name = "phy";
        $search_val = $_POST['search_term'];
        $file_path = 'photo/';
        $result = mysqli_connect($host, $uname, $pwd) or die("Could not connect to database." . mysqli_error());
        mysqli_set_charset($result, 'utf8');
        mysqli_select_db($result, $db_name) or die("Could not select the databse." . mysqli_error());
        $image_query = mysqli_query($result, "select a from qa where q='$search_val'");
        while ($rows = mysqli_fetch_array($image_query)) {

            $img_src = $rows['a'];
            echo ' <div style="width: 100vw; height: 100vh;">
            <embed src="' . $img_src . '" type="application/pdf" width="100%" height="100%">
        </div>';


    ?>



    <?php
        }
    }
    ?>
</body>




</html>