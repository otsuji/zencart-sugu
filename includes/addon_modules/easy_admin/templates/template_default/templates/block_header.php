<div id="header">

<p id="logo"><a href="./"><img src="images/logo.png" alt=""></a></p>

<!-- bof languages dropdown -->
<?php echo $GLOBALS['easy_admin']->getBlock('block_languages_dropdown', $current_page_base); ?>
<!-- eof languages dropdown -->

<div id="navbar">
<!-- bof block_right_top_menu -->
<?php echo $GLOBALS['easy_admin']->getBlock('block_right_top_menu', $current_page_base); ?>
<!-- eof block_right_top_menu -->

<!-- bof block_dropdown_menu -->
<?php echo $GLOBALS['easy_admin']->getBlock('block_dropdown_menu', $current_page_base); ?>
<!-- eof block_dropdown_menu -->
</div>

</div>