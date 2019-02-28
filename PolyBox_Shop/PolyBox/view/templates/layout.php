
<!DOCTYPE html>
<html>
<head>
	<title>PolyBox</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="public/css/style.css">
</head>
<body>
	<section class="section-header-1">
		<section class="sub-menu">
			
		</section>
		<header class="menu-1">
			<div class="Logo">
				<img src="">
			</div>
			<nav class="Nav-menu">
				<a href="./" class="menu-text">Главная</a>
				<a href="story" class="menu-text">Магазин</a>
				<a href="about" class="menu-text">О нас</a>
			</nav>
			<div class="help-chat">
				<a href="#"><img src="consultant.svg"></a>
			</div>
			<div class="Nav-sub-menu">
                           
				<div class="image-profile-user">
                                    <a href="pages/login.html"><img src="user.svg"class="image-user"></a>
				</div>
				<div class="image-basket-bag">
					<a href="pages/order.html"><img src="bag_basket.svg" class="image-basket"></a>
				</div>

			</div>
		</header>
	</section>
	<section class="section-footer-1">
            <?php
                if (isset($title)) {
                    echo $title;
                }
                ?>
	</section>
            <?php
                if (isset($content)) {
                    echo $content;
                }
            ?>
</body>
</html>

