<?php
#@header
define("Titulo", "Login");
include 'partials/header_partials.php';
#@END::header

#@END::header
echo Console::log('_variable', ['Landing_home' => $Landing_home["datos"]], 'table', $debug);

#@header-html
include 'partials/Landing__header_partials.php';
?>
<div  id="Login__body" class="container">

<div class="leftcontent">
  <span class="ltitle">Acceso</span>
  <span class="lcontent">
   A pagina
  </span>
</div>

<div class="sidebar">
  <span class="rtitle">Login</span>
 
  <form action="page" method="POST">
    <input class="textinput" type="text" name="username" autofocus="autofocus" placeholder="Usuario">
    <br>
    <br>
    <input class="textinput" type="password" name="password" placeholder="Contraseña">
    <input type="hidden" name="_token" value="<?=NoCSRF::generate('_token')?>">
    <button class="submit" type="submit">
      Entrar
    </button>
  </form>

</div>

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