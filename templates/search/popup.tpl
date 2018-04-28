   <div id="searchpopup1" class="modal">
        <div class="modal-background"></div>
        <div class="modal-card">
                <header class="modal-card-head">
                  <p class="modal-card-title has-text-5">Advanced Search</p>
                  
                </header>

     <section class="modal-card-body">
       
        <input type="hidden" name="xsearchtype" id="xsearchtype" value="simple" />

        <input type="hidden" name="xsort" id="xsort" value="date" />
        <input type="hidden" name="xorder" id="xorder" value="0" />
        <input type="hidden" name="xref" id="xref" value="" />

        <div id="popupx" onclick="$('#searchpopup1').hide();"><i class="icon-remove-circle icon-large"></i></div>
        
        <form id="ss1" class="">
                <div class="field is-grouped">
            <div class="field has-addons">
                <div class="button is-medium is-primary" for="xfrom"><?php print $text_from; ?></div>
                <div class="control">
                  <input type="text" class="input is-medium" name="xfrom" id="xfrom" value="<?php if(isset($from)) { print $from; } ?>" />
                </div>
            </div>

            <div class="field has-addons">
                <div class="button is-primary is-medium" for="xto"><?php print $text_to; ?></div>
                <div class="control">
                  <input type="text" class="input is-medium" name="xto" id="xto" value="<?php if(isset($to)) { print $to; } ?>" />
                </div>
            </div>
        </div>
        <div class="field is-grouped">
            <div class="field is-horizontal">
                <label class="label is-medium has-text-white" for="xsubject"><?php print $text_subject; ?>:</label>
                <div class="control">
                  <input type="text" class="input is-medium" name="xsubject" id="xsubject" value="<?php if(isset($subject)) { print $subject; } ?>" />
                </div>
            </div>            
            
            <div class="field is-grouped">
                <label class="label is-medium has-text-white" for="xbody"><?php print $text_body; ?>:</label>
                <div class="control">
                  <input type="text" class="input is-medium" name="xbody" id="xbody" value="<?php if(isset($body)) { print $body; } ?>" />
                </div>
            </div>
            </div>
            <div class="field is-grouped">
            <div class="field">
                <label class="label is-medium has-text-white" for="xtag"><?php print $text_tags; ?>:</label>
                <div class="control">
                  <input type="text" class="input is-medium"name="xtag" id="xtag" value="<?php if(isset($tag)) { print $tag; } ?>" />
                </div>
            </div>            

            <div class="field">
                <label class="label is-medium has-text-white" for="xnote"><?php print $text_notes; ?>:</label>
                <div class="control">
                  <input type="text" class="input is-medium" name="xnote" id="xnote" value="<?php if(isset($note)) { print $note; } ?>" />
                </div>
            </div>
            </div>
            <div class="field">
                <label class="label is-medium" for="xhas_attachment"><?php print $text_attachment; ?>:</label>
                <div class="controls">
                    <img src="view/theme/default/assets/images/fileicons/doc.png" alt="Word" title="Word" /> <input type="checkbox" class="checkbox popup" name="xhas_attachment_doc" id="xhas_attachment_doc" <?php if(isset($has_attachment_doc) && $has_attachment_doc == 1) { ?>checked="checked"<?php } ?> onclick="Piler.clear_attachment_any();" />
                    <img src="view/theme/default/assets/images/fileicons/xls.png" alt="Excel" title="Excel" /> <input type="checkbox" class="checkbox popup" name="xhas_attachment_xls" id="xhas_attachment_xls" <?php if(isset($has_attachment_xls) && $has_attachment_xls == 1) { ?>checked="checked"<?php } ?> onclick="Piler.clear_attachment_any();" />
                    <img src="view/theme/default/assets/images/fileicons/pdf.png" alt="PDF" title="PDF" /> <input type="checkbox" class="checkbox popup" name="xhas_attachment_pdf" id="xhas_attachment_pdf" <?php if(isset($has_attachment_pdf) && $has_attachment_pdf == 1) { ?>checked="checked"<?php } ?> onclick="Piler.clear_attachment_any();" />
                    <img src="view/theme/default/assets/images/fileicons/image.png" alt="image" title="image" /> <input type="checkbox" class="checkbox popup" name="xhas_attachment_image" id="xhas_attachment_image" <?php if(isset($has_attachment_image) && $has_attachment_image == 1) { ?>checked="checked"<?php } ?> onclick="Piler.clear_attachment_any();" />
                    <img src="view/theme/default/assets/images/fileicons/file.png" alt="any" title="any" /> <input type="checkbox" class="checkbox popup" name="xhas_attachment_any" id="xhas_attachment_any" <?php if(isset($has_attachment_any) && $has_attachment_any == 1) { ?>checked="checked"<?php } ?> onclick="Piler.clear_attachment_others();" />
                </div>
            </div>

            
            <div class="field">
                <label class="label is-medium" for="date1"><?php print $text_date_from; ?>:</label>
                <div class="control">
                  <input type="text" class="input is-medium" name="date1" id="date1" size="11" value="<?php if(isset($date1)) { print $date1; } ?>" placeholder="<?php print DATE_FORMAT; ?>" />
                </div>
            </div>            
            
            <div class="field">
                <label class="label is-medium" for="date2"><?php print $text_date_to; ?>:</label>
                <div class="controls">
                  <input type="text" class="input is-medium" name="date2" id="date2" size="11" value="<?php if(isset($date2)) { print $date2; } ?>" placeholder="<?php print DATE_FORMAT; ?>" />
                </div>
            </div>

             <div class="form-actions">
                <input type="submit" id="button_search" class="button is-medium is-danger" onclick="Piler.complex();return false;$('#searchpopup1').removeClass('is-active');" value="<?php print $text_search; ?>" />
                <input type="button" class="button is-medium is-info is-outlined" onclick="Piler.cancel();" value="<?php print $text_clear; ?>" />
             </div>
             

       </form>
     </section>
     
        </div> <button class="modal-close is-large" onclick="$('#searchpopup1').removeClass('is-active');"></button>
     
   </div>

