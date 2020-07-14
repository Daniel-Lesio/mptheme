{**
 * 2007-2020 PrestaShop SA and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2020 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<!doctype html>
<html lang="{$language.iso_code}">

  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}
  </head>

  <body id="{$page.page_name}" class="{$page.body_classes|classnames}">

    {block name='hook_after_body_opening_tag'}
      {hook h='displayAfterBodyOpeningTag'}
    {/block}

    <div class="hamburger d-flex d-md-none" id="js-hamburger"><span></span></div>
    <div class="full-screen-nav d-none" id="full-screen-nav">
      <div class="full-screen-nav__close" id="js-hamburger-close"><i data-feather="x"></i></div>
      <a class="logo logo--dark mb-4" href="">
        {* <img src="{$urls.img_ps_url}{$shop.logo}" alt="{$shop.name}"> *}
        <img src="http://www.mat-poz.pl/images/logo.png" alt="{$shop.name}">
      </a>
      <ul class="nav flex-column text-center mb-3 font-weight-bold">
        <li class="nav-item"><a class="mobile-link nav-link font-weight-bold" href="{$urls.base_url}/13-sprzet">Sprzęt</a></li>
        <li class="nav-item"><a class="mobile-link nav-link font-weight-bold" href="{$urls.base_url}/14-ubrania-i-dodatki">Ubrania i dodatki</a></li>
        <li class="nav-item"><a class="mobile-link nav-link font-weight-bold" href="{$urls.base_url}/17-sport-pozarniczy">Sport pożarniczy</a></li>
        <li class="nav-item"><a class="mobile-link nav-link font-weight-bold" href="{$urls.base_url}/18-gadzety-i-prezenty">Gadżety i prezenty</a></li>
        <li class="nav-item"><a class="mobile-link nav-link font-weight-bold" href="http://sklepbhp.matpoz.pl/"> <i class="mr-1" data-feather="shopping-cart"></i>SKLEP BHP</a></li>
        <li class="nav-item"><a class="mobile-link nav-link font-weight-bold" href="http://matpoz.pl/o-nas"><i class="mr-1" data-feather="briefcase"></i>O NAS</a></li>
        <li class="nav-item"><a class="mobile-link nav-link font-weight-bold" href="http://matpoz.pl/serwis"><i class="mr-1" data-feather="tool"></i>SERWIS</a></li>
        <li class="nav-item"><a class="mobile-link nav-link font-weight-bold" href="http://matpoz.pl/kontakt"><i class="mr-2" data-feather="users"></i> KONTAKT</a></li>
      </ul>
    </div>

    <div class="cookies-alert d-none" id="js-cookies-alert">
      <div class="cookies-alert__close" id="js-cookies-alert-close"></div>
      Strona korzysta z plików cookie. <a href="#">Czytaj więcej</a>
    </div>

    <main>
      {block name='product_activation'}
        {include file='catalog/_partials/product-activation.tpl'}
      {/block}

      <header id="header">
        {block name='header'}
          {include file='_partials/header.tpl'}
        {/block}
      </header>

      {block name='notifications'}
        {include file='_partials/notifications.tpl'}
      {/block}

      <section id="wrapper">
        {hook h="displayWrapperTop"}
        <div class="container">
          {block name='breadcrumb'}
            {include file='_partials/breadcrumb.tpl'}
          {/block}

          {block name="left_column"}
            <div id="left-column" class="col-xs-12 col-sm-4 col-md-3">
                {hook h="displayLeftColumn"}
              {if $page.page_name == 'product'}
                {* {hook h='displayLeftColumnProduct'} *}
  
              {else}
              {/if}
            </div>
          {/block}

          {block name="content_wrapper"}
            <div id="content-wrapper" class="left-column right-column col-sm-4 col-md-6">
              {hook h="displayContentWrapperTop"}
              {block name="content"}
                <p>Hello world! This is HTML5 Boilerplate.</p>
              {/block}
              {hook h="displayContentWrapperBottom"}
            
            </div>
          {/block}

          {block name="right_column"}
            <div id="right-column" class="col-xs-12 col-sm-4 col-md-3">
              {if $page.page_name == 'product'}
                {hook h='displayRightColumnProduct'}
              {else}
                {hook h="displayRightColumn"}
              {/if}
            </div>
          {/block}

        </div>
        {hook h="displayWrapperBottom"}
      </section>

      <footer id="footer">
        {block name="footer"}
          {include file="_partials/footer.tpl"}
        {/block}
      </footer>

    </main>

    {block name='javascript_bottom'}
      {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}

    {block name='hook_before_body_closing_tag'}
      {hook h='displayBeforeBodyClosingTag'}
    {/block}
  </body>

</html>
