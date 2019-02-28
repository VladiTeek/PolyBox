
<!DOCTYPE html>
<html>
<head>
	<title>PolyBox</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../style.css">
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
				<a href="../index.html" class="menu-text">Главная</a>
				<a href="story.html" class="menu-text">Магазин</a>
				<a href="about.html" class="menu-text">О нас</a>
			</nav>
			<div class="help-chat">
				<a href="#"><img src="../consultant.svg"></a>
			</div>
			<div class="Nav-sub-menu">
				<div class="image-profile-user">
					<a href="login.html"><img src="../user.svg"class="image-user"></a>
				</div>
				<div class="image-basket-bag">
					<a href="order.html"><img src="../bag_basket.svg" class="image-basket"></a>
				</div>
			</div>
		</header>
	</section>
	<section class="section-content-2">
		<aside class="left-filter-menu">
			<ul class="fold-filter"> Бренды
				<li></li>
				<li></li>
			</ul>
			<ul class="fold-filter">Вкусы
				<li></li>
				<li></li>
			</ul>
			<div>
				<span>
					<input type="" name="" value="0.00$">
				</span>
				<span>
					<input type="" name="" value="0.00$">
				</span>
			</div>
		</aside>
		<div class="box-product">
                <?php
                if (isset($content)) {
                    echo $content;
                }
            ?>
		</div>
	</section>
</body>
</html>

