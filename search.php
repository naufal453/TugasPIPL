<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./style/home.css"> 
</head>
<body style="background-color:#E3FEF7;">
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="padding-top:0;">
        <div style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"class="container-fluid">
        <img style="width:68px;height:68px;"class=navbar-brand src="image\Blue Wood (2).png">
            <form class="d-flex navbar-search" method="GET" action="search.php"> 
                <input style="border-radius:15px;box-shadow: inset 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success"style="" id="search"type="submit">
                    <img style="width:36px;height:36px;"src="image\search.png" alt="">
                </button>
            </form>
                <ul class="navbar-nav ms-auto"> 
                    <li class="nav-item">
                        <button class="nav-link active" style="background-color:#E3FEF7;border:transparent;border-radius:35px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" aria-current="page" href="#">
                            <img style="width:36px;height:36px;" src="image\icons8-home-480.png" href="#">
                            <div style="position: absolute; background-color: #E3FEF7; width: 10px; height: 10px; border-radius: 50%;margin-left:13px;margin-top:10px;"></div>
                        </button>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./write/input.php" >
                            <img style="width:36px;height:36px;" src="image\bookshelf (1).png" href="">
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="" href="./profile/profileset.php">
                            <img style="width:36px;height:36px;" src="image\user_1077012.png" href="#">
                        </a>
                    </li>
                </ul>
        </div>
    </nav>
    <?php
        include 'config/config.php';
        if (isset($_GET['query'])) {
            $search_query = $_GET['query'];
            $search_results = searchStories($search_query);

            if (!empty($search_results)) {
                echo '<div class="container mt-5 pt-3">';
                echo '<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">';
                foreach ($search_results as $row) {
                    echo '<div class="col">';
                    echo '<a href="./read/story.php?id=' . $row["id"] . '" class="card-link">';
                    echo '<div class="story card">';
                    echo '<div class="card-body" >';
                    echo '<h5 class="card-title">' . $row["title"] . '</h5>';
                    echo '<img src="image\book_3145755.png" style="display: block; margin: auto;width:72px;height:72px;margin-top:70px;">';
                    echo '<h6 class="card-subtitle mb-2 text-muted" style="text-align:center;position: absolute; bottom: 10px; left: 10px; right: 10px;">Author: ' . $row["author"] . '</h6>';
                    echo '</div>'; 
                    echo '</div>'; 
                    echo '</a>'; 
                    echo '</div>'; 
                }
                echo '</div>'; 
                echo '</div>'; 
            } else {
                echo "No results found.";
            }
        } else {
            header("Location: ./home.php");
            exit;
        }
        ?>
    <a style="margin-left:25px; "href="./home.php">Kembail ke Home</a>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>