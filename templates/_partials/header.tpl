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
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}

{*   <nav class="header-nav">
    <div class="container">
      <div class="row">
        <div class="hidden-sm-down">
          <div class="col-md-5 col-xs-12">
            {hook h='displayNav1'}
          </div>
          <div class="col-md-7 right-nav">
              {hook h='displayNav2'}
          </div>
        </div>
        <div class="hidden-md-up text-sm-center mobile">
          <div class="float-xs-left" id="menu-icon">
            <i class="material-icons d-inline">&#xE5D2;</i>
          </div>
          <div class="float-xs-right" id="_mobile_cart"></div>
          <div class="float-xs-right" id="_mobile_user_info"></div>
          <div class="top-logo" id="_mobile_logo"></div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </nav> *}
{/block}

{block name='header_top'}
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-3 d-flex justify-content-center align-items-center p-4 p-lg-2">
            <a class="logo" href="{$urls.base_url}">
                                {* <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}"> *}
              <img src="http://www.mat-poz.pl/images/logo.png" alt="{$shop.name}" >

              {* <img src="{$urls.img_ps_url}{$shop.logo}" alt="{$shop.name}" style="width: 350px"> *}
            </a>
      </div>
      <div class="col-lg-9">
        <div class="row d-flex justify-content-end align-items-center">
          <div class="col-xl-10 p-0">
            <div class="bg-light p-1 d-flex justify-content-center align-items-center flex-column flex-lg-row">
              <div class="d-flex justify-content-center align-items-center mr-md-5 mb-2 mb-lg-0 flex-column flex-sm-row text-center text-sm-left">
                <div class="h6 mb-0 py-1 px-1 px-sm-3 border-right-sm">{hook h='displaySearch'}</div>
                <div class="h6 mb-0 py-1 px-1 px-sm-3 border-right-sm text-body text-center">
                  sklep.www@matpoz.pl <br>  +48.519-051-925
                </div>
                <div class="h6 mb-0 py-1 px-1 px-sm-3">{hook h='displayNav2'}</div>
              </div>
            </div>
          </div>
        </div>
        <div class="row bg-danger d-none d-md-flex">
          {hook h='displayTop'}
          <ul class="nav nav--second">
            <li class="nav-item"><a class="nav-link px-xxl-4 py-3 text-white" href="http://www.mat-poz.pl/serwis"><i class="mr-2" data-feather="tool"></i>SERWIS</a></li>
            <li class="nav-item"><a class="nav-link px-xxl-4 py-3 text-white" href="http://sklepbhp.mat-poz.pl/"><i class="mr-2" data-feather="shopping-cart"></i>SKLEP BHP</a></li>
            <li class="nav-item"><a class="nav-link px-xxl-4 py-3 text-white" href="http://matpoz.pl/kontakt"><i class="mr-2" data-feather="users"></i>KONTAKT</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
{* <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
  <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
  <div class="js-top-menu-bottom">
    <div id="_mobile_currency_selector"></div>
    <div id="_mobile_language_selector"></div>
    <div id="_mobile_contact_link"></div>
  </div>
</div> *}
  {hook h='displayNavFullWidth'}
{/block}
