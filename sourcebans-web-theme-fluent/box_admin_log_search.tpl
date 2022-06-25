<div class="layout_box">
    <div class="table padding">
        <div class="table box">
            <table>
                <tbody>
                    <tr class="collapse">
                        <td class="text:center">
                            <span class='text:bold'>Advanced Search (Click)</span>
                        </td>
                    </tr>

                    <tr class="table_hide">
                        <td colspan="1">
                            <div class="collapse_content flex flex-jc:center">
                                <div class="padding">
                                    <div class="flex m:flex-fd"> 
                                        <div class="flex:11 margin-right">
                                            <div class="margin-bottom:half">
                                                <input id="admin_" name="search_type" class="form-radio" type="radio" value="radiobutton" />

                                                <label for="name" class="form-label form-label:bottom">
                                                    Admin
                                                </label>
                                                <select class="form-select form-full" id="admin" onmouseup="$('admin_').checked = true">
                                                    {foreach from="$admin_list" item="admin}
                                                    <option label="{$admin.user}" value="{$admin.aid}">{$admin.user}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                        <div class="flex:11 margin-left">
                                            <div class="margin-bottom:half">
                                                <input id="type_" type="radio" name="search_type" class="form-radio" value="radiobutton" />

                                                <label for="ban_type"
                                                    class="form-label form-label:bottom form-label:right">
                                                    Type
                                                </label>

                                                <select class="form-select form-full" id="type" onmouseup="$('type_').checked = true">
                                                    <option label="Message" value="m">Message</option>
                                                    <option label="Warning" value="w">Warning</option>
                                                    <option label="Error" value="e">Error</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
									<div class="margin-bottom:half">
                                        <input id="message_" name="search_type" class="form-radio" type="radio" value="radiobutton" />

                                        <label for="name" class="form-label form-label:bottom">
                                            Message
                                        </label>

                                        <input class="form-input form-full" type="text" id="message" value="" onmouseup="$('message_').checked = true" />
                                    </div>
                                    <div class="margin-bottom:half">
                                        <input id="date_" type="radio" name="search_type" class="form-radio" value="radiobutton" />

                                        <label for="date" class="form-label form-label:bottom form-label:right">
                                            Date
                                        </label>

                                        <div class="flex">
                                            <input class="form-input form-full" type="text" id="day" value="DD" onmouseup="$('date_').checked = true" maxlength="2" style="width: 50px;margin-right: 5px;margin-left: 5px;"> 
                                            <input class="form-input form-full" type="text" id="month" value="MM" onmouseup="$('date_').checked = true" maxlength="2" style="width: 50px;margin-right: 5px;margin-left: 5px;">
                                            <input class="form-input form-full" type="text" id="year" value="YYYY" onmouseup="$('date_').checked = true" maxlength="4" style="width: 70px;margin-right: 5px;margin-left: 5px;"> <p>@</p>
                                            <input class="form-input form-full" type="text" id="fhour" value="00" onmouseup="$('date_').checked = true" maxlength="2" style="width: 50px;margin-right: 5px;margin-left: 5px;"> <p>:</p>
                                            <input class="form-input form-full" type="text" id="fminute" value="00" onmouseup="$('date_').checked = true" maxlength="2" style="width: 50px;margin-right: 5px;margin-left: 5px;"> <p>to</p>
                                            <input class="form-input form-full" type="text" id="thour" value="23" onmouseup="$('date_').checked = true" maxlength="2" style="width: 50px;margin-right: 5px;margin-left: 5px;"> <p>:</p>
                                            <input class="form-input form-full" type="text" id="tminute" value="59" onmouseup="$('date_').checked = true" maxlength="2" style="width: 50px;margin-right: 5px;margin-left: 5px;">
                                        </div>
                                    </div>
                                    
                                <div class="flex">
                                    {sb_button text="Search" onclick="search_log();" class="button button-primary flex:11 btnhvr" id="searchbtn" submit=false}
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');</script>