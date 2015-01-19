<?php
if (empty($_GET)) {
	echo "Curiosity killed the cat";
	exit();
}
header('Location: https://translate.google.com/#auto/'.$_GET['to'].'/'.urlencode($_GET['what']));
exit();