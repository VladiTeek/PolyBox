<?php
ob_start();
?>

<section class="section-content-1">
		<div class="news-block">
<?php
    echo '<div class="news-block">';
    foreach ($rows as $row){
        echo '<div class="card">';
        echo '<div class="card-1">';
        echo '<h1>'.$row['HeadNews'].'</h1>';
        echo '<p>'.$row['TextNews'].'</p>';
        echo ''.$row['Date'].'</h5>';
        echo ''.'<a href="detail?id='.$row['ID_News'].'">More..</a>';
        echo '</div>';
        echo '</div>';
    }
    echo '</div>'; 
?>
		</div>
		<div class="new-product" id="style-4">
                    <?php
                        foreach ($rowsC as $row) {
                            echo '<img>'.$row['Image'].'</img>';
                            echo '<p>'.$row['HeadProduct'].'</p>';
                        }
                    ?>
		</div>
	</section>
	<?php
$content= ob_get_clean();
include 'view/templates/layout.php';

			//<div class="new-product-block-gl">
				//<img src="kitkat-png-9.png" class="photo-new-product">
				//<p>New kit</p>
			//</div>
			//<div class="new-product-block-gl">
				//<img src="kitkat-png-9.png" class="photo-new-product">
				//<p>New kit</p>
			//</div>