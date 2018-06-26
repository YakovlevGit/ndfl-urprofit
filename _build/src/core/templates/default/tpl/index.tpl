{*
    Базовый шаблон сайта
*}

{block name=global}

    {* Последняя версия файла стилей *}
    {assign var=css_version value=filemtime(MODX_BASE_PATH|cat:"{$template_url}css/style.min.css")}

    {* Последняя версия файла скриптов *}
    {assign var=js_version value=filemtime(MODX_BASE_PATH|cat:"{$template_url}js/app.min.js")}

{/block}

<!DOCTYPE html>
<html lang="{config name=cultureKey}">

{include file="components/_head.tpl"}

{block name=body}

    <body class="sticky-footer">

        <main>

            {include file="components/_header.tpl"}
            {include file="components/navbar/index.tpl"}

            {$smarty.block.child}

            {block name=order}
                {include file="components/sections/order.tpl"}
            {/block}

            {block name=testimonials}
                <!--noindex-->
                    {include file="components/sections/testimonials.tpl"}
                <!--/noindex-->
            {/block}

        </main>

        {include file="components/_footer.tpl"}

        <div class="fixed-action-btn scroll-up--wrapper">
            <a href="#" id="scroll-up" class="btn-floating blue darken-2">
                <i class="material-icons">arrow_upward</i>
            </a>
        </div>

        {block name=modals}
            {include file="components/modal/callback.tpl"}
        {/block}

        {block name=scripts}

            <script src="{$template_url}js/app.min.js?{$js_version}"></script>

            {chunk name=jsInjection nocache}


        {/block}

    </body>

{/block}

</html>