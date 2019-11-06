<?php
/**
 * Created by PhpStorm.
 * User: nemzag
 * Date: 2018-03-29
 * Time: 14:19
 * Updated: 2019-11-06 - 21:58
 */

    // declare(strict_types=1)
    $todayDate = '2018-03-29';
    $todayHour = '14:19';
    $title = 'PDO - Application';
    $pathProject = '';

    $css = 'assets/css/styles.css';

    require 'inc/header.inc.php';
    require 'library/connection.php';
    ?>
<h2>Fonction pour la connexion :</h2>
<?php
$dbh = connect();

$sql = 'SELECT * 
          FROM 2018_scripts_serveurs_blog.posts
     LEFT JOIN 2018_scripts_serveurs_blog.categories
	        ON 2018_scripts_serveurs_blog.categories.id = 2018_scripts_serveurs_blog.posts.idCategory
     LEFT JOIN 2018_scripts_serveurs_blog.users
            ON 2018_scripts_serveurs_blog.users.id = 2018_scripts_serveurs_blog.posts.idUser
      ORDER BY 2018_scripts_serveurs_blog.posts.created
          DESC;';

$result = $dbh->query($sql);
?>
<h2>Affichage du blog :</h2>
    <table>
        <tr>
            <th><?='User'?></th>
            <th><?='Title'?></th>
            <th><?='Content'?></th>
            <th><?='Created'?></th>
            <th><?='Category'?></th>
        </tr>
        <tr>
            <?php
            while($row = $result->fetchObject())
            {
                echo
                    '<td style="white-space: nowrap;">'.$row->lastName." ".$row->firstName.'</td>
                     <td style="white-space: nowrap;">'.$row->title.'</td>
                     <td>'.nl2br($row->content).'</a></td>
                     <td style="white-space: nowrap;">'.$row->created.'</td>
                     <td style="white-space: nowrap;">'.$row->category.'</td></tr>';
            }
            ?>
    </table>

<!--Nombre d'Articles-->
<h2>Nombre d'articles :</h2>
    <ul>
        <li><?= $result->rowCount(); ?></li> <!--PDOStatement::rowCount();-->
    </ul>
<!--End Nombre d'Articles-->

<!--Affichage des Images-->
<h2>Affichage des images :</h2>
<ol>
<?php

$sql = 'SELECT * 
          FROM 2018_scripts_serveurs_blog.posts
     LEFT JOIN 2018_scripts_serveurs_blog.categories
            ON 2018_scripts_serveurs_blog.categories.id = 2018_scripts_serveurs_blog.posts.idCategory 
     LEFT JOIN 2018_scripts_serveurs_blog.users
            ON 2018_scripts_serveurs_blog.users.id = 2018_scripts_serveurs_blog.posts.idUser
      ORDER BY 2018_scripts_serveurs_blog.posts.created
          DESC
         LIMIT 5;';

$result = $dbh->query($sql);

while($row = $result->fetchObject())
{
    echo '<li><img src="assets/img/' . $row->image . '" style="width: 300px; vertical-align: top;" alt="' . $row->image . '"></li><br>';
}
?>
</ol>
<!--End Affichage des Images-->

<?php
require 'inc/footer.inc.php';
?>