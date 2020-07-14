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

{function name="categories" nodes=[] depth=0}
  {strip}
    {if $nodes|count}
      <ul class="  category-sub-menu">
        {foreach from=$nodes item=node}
          <li data-depth="{$depth}" style=''>
            {if $depth===0}
            {* start flex *}
            <div class='d-flex  p-0 m-0 ' style='border-bottom: 1px solid #ddd;  align-items : center; justify-content:space-between; flex-direction:row-reverse;
'>
              <a style=' width : 90%;transform : translateX(-5px);
                ' href="{$node.link}">{$node.name}</a>
              {if $node.children}
                <div 
                style=' 
                transform : translateX(-10px);
                align-self:start; 
                width: 30px; 
                position:static;
                cursor:pointer;
                display : flex;
                justify-content:center ; 
                align-items : center'
                class= "p-0  navbar-toggler collapse-icons " 
                data-toggle="collapse" 
                data-target="#exCollapsingNavbar{$node.id}"
                >

                  <i class="material-icons add">&#xE145;</i>
                  <i class="material-icons remove">&#xE15B;</i>
                </div>
                {* \/ end div *}
                </div>
                <div class="collapse" id="exCollapsingNavbar{$node.id}">
                  {categories nodes=$node.children depth=$depth+1}
                </div>
              {/if}
            {else}
              <a class="category-sub-link" href="{$node.link}">{$node.name}</a>
              {if $node.children}
                <span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar{$node.id}">
                  <i class="material-icons arrow-right">&#xE315;</i>
                  <i class="material-icons arrow-down">&#xE313;</i>
                </span>
                <div class="collapse" id="exCollapsingNavbar{$node.id}">
                  {categories nodes=$node.children depth=$depth+1}
                </div>
              {/if}
            {/if}
          </li>
        {/foreach}
      </ul>
    {/if}
  {/strip}
{/function}

<div class="block-categories hidden-sm-down">
  <ul class="category-top-menu">
    <li><a class="text-uppercase h6" href="{$categories.link nofilter}">{$categories.name}</a></li>
    <li>{categories nodes=$categories.children}</li>
  </ul>
</div>
