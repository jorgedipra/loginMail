<?php
#@header
define("Titulo", "Page");
include 'partials/header_partials.php';
#@END::header

#@END::header
echo Console::log('_variable', ['Landing_home' => $Landing_home["datos"]], 'table', $debug);

#@header-html
include 'partials/Landing__header_partials.php';
?>
<div   class="container">

<img src="https://cdn.pixabay.com/photo/2015/11/03/08/58/post-1019869_960_720.jpg" alt="">

</div>
<?php
#@footer-html
include 'partials/Landing__footer_partials.php';
#@END::footer
#
#footer/Scripts
include 'partials/footer_partials.php';
#@END::footer
?>