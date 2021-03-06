<?php
	session_start();
	$nom = $_SESSION['user'];
	$id_user = $_SESSION['id'];
	if ($nom == null) {
		header('Location:index.php');
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>French Trips</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
</head>
<body>
<div class="super_container">
	
	<!-- Header -->

	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_container d-flex flex-row align-items-center justify-content-start">

						<!-- Logo -->
						<div class="logo_container">
							<div class="logo">
								<div>French</div>
								<div>Trips</div>
							</div>
						</div>

						<!-- Main Navigation -->
						<nav class="">
							<ul class="main_nav_list">
								<li class="main_nav_item"><a href="acceuil.php">Acceuil</a></li>
								<li class="main_nav_item"><a href="nos_destinations.php">nos destinations</a></li>
								<li class="main_nav_item"><a href="decouvrez_nous.php">decouvrez nous</a></li>
								<li class="main_nav_item"><a href="promo.php">Promo</a></li>
								<li class="main_nav_item active"><a href="contactez_nous.php">Contactez nous</a></li>
								<li class="main_nav_item" style="color: white;">Bonjour <?php echo"$nom"; ?>! </li>
								<li class="main_nav_item"><a href="Deconnection.php">Deco</a></li>
							</ul>
						</nav>

						<!-- Hamburger -->
						<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>

					</div>
				</div>
			</div>
		</div>
	</header>


	<!-- Menu -->

	<div class="menu_container menu_mm">

		<!-- Menu Close Button -->
		<div class="menu_close_container">
			<div class="menu_close"></div>
		</div>

		<!-- Menu Items -->
		<div class="menu_inner menu_mm">
			<div class="menu menu_mm">
				<div class="menu_search_form_container">
					<form action="#" id="menu_search_form">
						<input type="search" class="menu_search_input menu_mm">
						<button id="menu_search_submit" class="menu_search_submit" type="submit"><img src="images/search_2.png" alt=""></button>
					</form>
				</div>
				<ul class="menu_list menu_mm">
					<li class="menu_item menu_mm"><a href="acceuil.php">Acceuil</a></li>
					<li class="menu_item menu_mm"><a href="nos_destinations.php">nos destinations</a></li>
					<li class="menu_item menu_mm"><a href="decouvrez_nous.php">decouvrez nous</a></li>
					<li class="menu_item menu_mm"><a href="promo.php">Promo</a></li>
					<li class="menu_item menu_mm"><a href="contactez_nous.php">Contact</a></li>
				</ul>

				<!-- Menu Social -->
				
				<div class="menu_social_container menu_mm">
					<ul class="menu_social menu_mm">
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					</ul>
				</div>

				<div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
			</div>
		</div>
	</div>
	
	<!-- Home -->

	<div class="home1">
		<div class="home_background" style=" background-image:url(images/home.jpg)"></div>

		<div class="find">
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

		</div>
	</div>


	<!-- Contact -->

	<div class="contact">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="contact_title">Contactez nous</div>
					<div class="contact_subtitle">dis bonjour</div>
				</div>
			</div>
			<div class="row contact_content">
				<div class="col-lg-5">
					<div class="contact_text">
						<p>L'agence de voyages remplit le rôle de conseil en s'assurant ou en avertissant des formalités nécessaires à l'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste..</p>
					</div>
					<div class="contact_info">
						<div class="contact_info_box">i</div>
						<div class="contact_info_container">
							<div class="contact_info_content">
								<ul>
									<li>Adresse: Route de Mende, 34090 Montpellier</li>
									<li>Tél: +33 661420483  </li>
									<li>Email: trips.french@gmail.com</li>
								</ul>
							</div>
							<div class="contact_info_social">
								<ul>
									<li><a href="trips.french@gmail.com"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-7">
					<div class="contact_form_container">
						<form action="Traitement/model.php" method="POST" id="contact_form" class="clearfix">
							<input type="hidden" name="iduser" id="iduser" value="<?php echo($id_user); ?>">
							
							<input id="nom" name="nom" class="contact_input" type="text" placeholder="Nom" required="required" >
							
							<input id="email" name="email" class="contact_input" type="text" placeholder="E-mail" required="required">
							
							<input id="sujet" name="sujet" class="contact_input" type="text" placeholder="Sujet" required="required">
							
							<textarea id="message" name="message" class="contact_message_input contact_input_message" placeholder="Message" required="required">
							</textarea>
							<input type="submit" name="Envoyer" value="Envoyer" class="contact_send_btn trans_200" id="contact_send_btn">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>





	<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<div class="logo">
				<div>French</div>
				<div>Trips</div>
				<div class="copyright">Copyright &copy;
					<script>document.write(new Date().getFullYear());</script>
					TOUS DROITS RESERVES | CE SITE EST FABRIQUÉ  
					<i class="fa fa-heart-o" aria-hidden="true"></i> PAR 
					<a href="" target="_blank">French Trips</a>
				</div>
			</div>
		</div>
	</footer>

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>