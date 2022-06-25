<div class="admin_tab_content_title">
    <h2><i class="far fa-hdd"></i> System Logs</h2>
</div>
{php} require (TEMPLATES_PATH . "/admin.log.search.php");{/php}

<div class="layout_box padding:half flex flex-jc:space-between flex-ai:center m:flex-fd:column">
    <span>
        <i>{$clear_logs}</i>
    </span>
        <div class="pagination">
            <span>{$page_numbers}</span>
        </div>
</div>

<div class="padding">
    
    <div class="table table_box">
        <table>
            <thead>
                <tr>
                    <th>Type</th>
                    <th class="text:left">Event</th>
                    <th class="text:left">Date/Time</th>
                    <th>User</th>
                </tr>
            </thead>
            <tbody>
                {foreach from="$log_items" item="log"}
                    <tr class="collapse">
                        <td class="text:center">{$log.type_img}</td>
                        <td>{$log.title}</td>
                        <td>{$log.date_str}</td>
                        <td class="text:center">{$log.user}</td>
                    </tr>
                    <tr class="table_hide">
                        <td colspan="4">
                            <div class="collapse_content">
                                <div class="padding">
                                    <div class="margin-bottom">
                                        {$log.message}
                                    </div>

                                    <div class="margin-bottom:half">
                                        <span class="text:bold">Parent Function:</span>

                                        {if $log.function}
                                            <span>{$log.function}</span>
                                        {else}
                                            <span class="text:italic">No information</span>
                                        {/if}
                                    </div>

                                    <div class="margin-bottom:half">
                                        <span class="text:bold">Query String:</span>

                                        {if $log.query}
                                            <span>{textformat wrap=62 wrap_cut=true}{$log.query}{/textformat}</span>
                                        {else}
                                            <span class="text:italic">No information</span>
                                        {/if}
                                    </div>

                                    <div>
                                        <span class="text:bold">IP:</span>
                                        <span>{$log.host}</span>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
</div>
<script type="text/javascript" src="themes/sourcebans-web-theme-fluent/scripts/collapse.js"></script>
