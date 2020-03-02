<?php
#@header
define("Titulo", "");
include 'partials/header_partials.php';
#@END::header

#@END::header
echo Console::log('_variable', ['Landing_home' => $Landing_home["datos"]], 'table', $debug);

#@header-html
include 'partials/Landing__header_partials.php';
?>
<section id="app">
    <main id="body">     
           
    </main>
</section>
<?php
#@footer-html
include 'partials/Landing__footer_partials.php';
#@END::footer
#
#footer/Scripts
include 'partials/footer_partials.php';
#@END::footer
?>