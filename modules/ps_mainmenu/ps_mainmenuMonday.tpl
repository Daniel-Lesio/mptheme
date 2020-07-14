{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
    {if $nodes|count }
      <ul class=" 
      {if $depth == 0}top-menu nav nav--main bg-primary px-lg-2 {else}nav--level-{$depth}{/if}" {if $depth == 0}id="top-menu"{/if}
      {if $depth == 1 } style='display : flex!important ; flex-wrap : wrap ;' {/if}} 
      {if $depth == 3 } style='display : none!important ' {/if}} 
      data-depth="{$depth}">
        {foreach from=$nodes item=node}
            <li class="nav-item {$node.type}{if $node.current} active {/if}" 
            id="{$node.page_identifier}"
            {if $depth == 1 } style='padding : 0  ;margin : 0 ;flex-basis : 20% ; padding : 10px'  {/if}}
            {if $depth == 2 } style='padding : 0  ;margin : 0 ; line-height : 20px  '  {/if}}
            >
            {assign var=_counter value=$_counter+1}
              <a 
                class=" 
                {if $depth == 0}nav-link px-3 py-3 text-white{/if} 
                
                {if $depth >= 0}p-0{/if}
                 
                {if $node.current} current {/if}"
                href="{$node.url}" data-depth="{$depth}"
                {if $node.open_in_new_window} target="_blank" {/if}
                {if $depth == 1} style ='font-size : 15px ; font-weight : 900 ; border-bottom : 1px #3c3c3c solid ; margin-bottom : 10px ' {/if}
                {if $depth == 3} {/if}
                
              >
              {if $depth == 2 }<i class="material-icons " style='color : #2c2c2c'>&#xE313;</i>  {/if}
            
                {if $node.children|count}
                  {* Cannot use page identifier as we can have the same page several times *}
                  {assign var=_expand_id value=10|mt_rand:100000}
                  <span class="float-xs-right hidden-md-up">
                    <span data-target="#top_sub_menu_{$_expand_id}" data-toggle="collapse" class="navbar-toggler collapse-icons">
                      <i class="material-icons add" style='color : red'>&#xE313;</i>
                      <i class="material-icons remove">&#xE316;</i>
                    </span>
                  </span>
                {/if}
                {$node.label}
              </a>
              {if $node.children|count}
              <div {if $depth === 0} class="popover sub-menu js-sub-menu collapse"{else} class="collapse"{/if} id="top_sub_menu_{$_expand_id}">
                {menu nodes=$node.children depth=$node.depth parent=$node}
              </div>
              {/if}
            </li>
        {/foreach}
      </ul>
    {/if}
{/function}

<div class="menu js-top-menu position-static hidden-sm-down" id="_desktop_top_menu">
    {menu nodes=$menu.children}
    <div class="clearfix"></div>
</div>
