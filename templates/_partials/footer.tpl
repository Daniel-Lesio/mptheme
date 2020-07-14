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

{* <div class="container">
  <div class="row">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div> *}

<div class="container-fluid">
  <div class="row">
    <div class="col-lg-6 p-0 bg-primary text-white">
      <div class="p-4 p-lg-7">
        <div class="row d-flex justify-content-end">
          <div class="col-xl-8">
            <div class="h4 mb-4">MAT-POŻ Irena Matusiak, Ireneusz Matusiak Spółka Jawna</div>
            <div class="row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <div class="mb-3">ul. Łódzka 24<br> 95-030 Rzgów</div>
                <div class="font-weight-light"><b>NIP: </b>728-22-72-031<br><b>REG: </b>472199415<br><b>KRS: </b>0000318679</div>
              </div>
              <div class="col-sm-6 text-sm-right">
                <div class="mb-2"><a class="h5 d-block text-white" href="tel:+48422142544">+48 (42) 214 25 44</a><small>TELEFON KONTAKTOWY</small></div><a class="h5 d-block text-white" href="mailto:sklep@matpoz.pl">sklep.www@matpoz.pl</a><small>NAPISZ DO NAS</small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-6 p-0 pt-lg-9">
      <div class="bg-light px-4 px-lg-7 pt-5 pb-8">
        <div class="row">
          <div class="col-md-8">
                {block name='hook_footer_before'}
                  {hook h='displayFooterBefore'}
                {/block}
          </div>
        </div>
      </div>
    </div>
  </div>
</div>



<div class="footer-container">
  <div class="container">
    <div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>

    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
  </div>
</div>

<div class="container">
  <footer class="footer py-4">
    <div class="d-flex justify-content-between align-items-center flex-column flex-md-row">
      <div class="d-flex mb-2 mb-md-0 flex-column flex-md-row text-center text-md-left">
        <div class="h6 mb-2 mb-md-0 mr-md-7">COPYRIGHT &copy; 2020 - Wszelkie prawa zastrzeżone</div><a class="h6 mb-0 text-body" href="index.html">Polityka Prywatności</a>
      </div>
      <div class="flex-col"><a class="h6 mb-0 text-body d-flex align-items-center" href="#header">DO GÓRY STRONY<i class="ml-1" data-feather="arrow-up-circle"></i></a></div>
    </div>
  </footer>
  <div class="row">
    <div class="col-md-12">
      <p class="text-sm-center">
        {block name='copyright_link'}
          <a class="_blank" href="https://www.prestashop.com" target="_blank" rel="nofollow">
            {l s='%copyright% %year% - Ecommerce software by %prestashop%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
          </a>
        {/block}
      </p>
    </div>
  </div>
</div>
