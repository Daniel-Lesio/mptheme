
{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
    {if $nodes|count }
      <ul class="top-menu nav 
      {if $depth == 0}nav--main bg-primary px-lg-2 
      {else}nav--level-{$depth} ml-1{/if}" 
      {if $depth == 0}id="top-menu"{/if} 
      data-depth="{$depth}"
      {if $depth == 1}
        style='width : 100%'
      {/if}}
      >
        {foreach from=$nodes item=node}
            <li class="nav-item {$node.type}{if $node.current} active {/if}" id="{$node.page_identifier}">
            {assign var=_counter value=$_counter+1}
              <a
                class="nav-link {if $depth == 0}px-3 py-3 text-white{/if} 
                {if $depth >= 0}dropdown-item{/if}{if $depth === 1}
                dropdown-submenu{/if} {if $node.current} active {/if}"
                href="{$node.url}" data-depth="{$depth}"
                {if $node.open_in_new_window} target="_blank" {/if}
              >
                {if $node.children|count}
                  {* Cannot use page identifier as we can have the same page several times *}
                  {assign var=_expand_id value=10|mt_rand:100000}
                  <span class=" hidden-md-up">
                    <span data-target="#top_sub_menu_{$_expand_id}" data-toggle="collapse" class="navbar-toggler collapse-icons">
                      <i class="material-icons add">&#xE313;</i>
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
