<section class="hero is-small">
    <div class="hero-body">
<div class="container">
   

  <div class="tag tag-info"><?php print $text_refresh_period; ?>: <?php print HEALTH_REFRESH; ?> sec</div>
  
	 <section class="info-tiles">
          <div class="tile is-ancestor has-text-centered">
            <div class="tile is-parent">
              <article class="tile is-child box">
                <p class="title is-5"><span class="heading">Up For: </span><?php print $uptime; ?></p>
                <p class="heading is-5"><?php print $piler_version; ?></p>
                <p class="heading is-5">Piler</p>
              </article>
            </div>
            <div class="tile is-parent">
              <article class="tile is-child box">
                <p class="title is-5"><?php print $meminfo; ?>% / <?php print $totalmem; ?> MB</p>
                <progress class="progress is-primary" value="<?php print $meminfo; ?>" max="100"><?php print $meminfo; ?>%</progress>
                <p class="heading is-3"><?php print $text_memory_usage; ?></p>
              </article>
            </div>
            <div class="tile is-parent">
              <article class="tile is-child box">
                <p class="title is-5"><?php print $cpuinfo; ?>% <?php print $cpuload; ?></p>
                <progress class="progress is-primary" value="<?php print $cpuinfo; ?>" max="100"><?php print $cpuinfo; ?>%</progress>
                <p class="heading is-4"><?php print $text_cpu_usage; ?></p>
              </article>
            </div>
            <div class="tile is-parent">
              <article class="tile is-child box">
                <p class="title is-5"><?php print $swapinfo; ?>% / <?php print $totalswap; ?> MB</p>
                <progress class="progress is-primary" value="<?php print $swapinfo; ?>" max="100"><?php print $swapinfo; ?>%</progress>
                <p class="heading"><?php print $text_swap_usage; ?></p>
              </article>
            </div>
          </div>
        </section>

    <div class="columns is-multiline">

          <div class="column">
            <div class="box notification is-warning">
              <div class="heading"><?php print $text_cumulative_counts; ?></div>
              <div class="title is-5"><?php print $processed_emails['last_30_days_count']; ?></div>
              <div class="level">
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_oldest_record; ?></div>
                    <div class="title is-5"><?php print date('d.m.Y', $oldestmessagets); ?></div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_24_hours; ?></div>
                    <div class="title is-5"><?php print $processed_emails['today_count']; ?></div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_1_week; ?></div>
                    <div class="title is-5"><?php print $processed_emails['last_7_days_count']; ?></div>
                  </div>
                </div>
                <div class="level-item">
                    <div class="">
                      <div class="heading"><?php print $text_30_days; ?></div>
                      <div class="title is-5"><?php print $processed_emails['last_30_days_count']; ?></div>
                    </div>
                  </div>
              </div>
            </div>
          </div>
          <div class="column">
            <div class="box notification is-info">
              <div class="heading"><?php print $text_archive_size; ?></div>
              <div class="title is-5"><?php print $archive_size; ?>B (<?php print $archive_stored_size; ?>B)</div>
              <div class="level">
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_disk_usage; ?></div>
                    <div class="title is-5"><?php foreach($shortdiskinfo as $partition) { ?><?php print $partition['utilization']?>%<?php } ?></div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_smtp_status; ?></div>
                    <div class="title is-5">
                      <?php foreach($health as $h) {
                      if(preg_match("/^220/", $h[1])) {
                         $status = 'OK'; $class = 'tag is-success';
                      } else {
                         $status = 'ERROR'; $class = 'tag is-warning';
                      }
                   ?>
                      <div class="<?php print $class; ?>"><span onmouseover="Tip('<?php print preg_replace("/\'/", "\'", $h[1]); ?>, <?php print $h[2]; ?>', BALLOON, true, ABOVE, true)" onmouseout="UnTip()"><?php print $h[3]; ?>: <?php print $status; ?></span></div>
                   <?php } ?></div>
                  </div>
                </div>
                <div class="level-item"></div>
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_periodic_purge; ?></div>
                    <div class="title is-5">
                      <span class="<?php if($options['enable_purge'] == 1) { ?>tag is-success<?php } else { ?>tag is-danger<?php } ?>"><?php if($options['enable_purge'] == 1) { print $text_enabled; ?>. <a href="<?php print HEALTH_URL; ?>&toggle_enable_purge"><?php print $text_disable; ?></a>
                      <?php if($purge_stat[0]) { print $text_last; ?>: <?php print $purge_stat[0]; ?>, <?php print $text_next; ?>:  <?php print $purge_stat[1]; } ?>
                   <?php } else { print $text_disabled; ?>. <a class="" href="<?php print HEALTH_URL; ?>&toggle_enable_purge"><?php print $text_enable; ?></a><?php } ?>
                   </span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="column">
            <div class="box notification is-danger">
              <div class="heading"><?php print $text_average_message_size; ?></div>
              <div class="title is-5"><?php print $averagemessagesize; ?> + <?php print $averagesqlsize; ?> + <?php print $averagesphinxsize; ?> 
                
              </div>
              <div class="level">
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_average_messages_day; ?></div>
                    <div class="title is-5"><?php print $averagemessages; ?></div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_average_size_day; ?></div>
                    <div class="title is-5"><?php print $averagesizeday; ?></div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>	


</div>


<div id="health2">
<?php if(isset($queues)) { ?>
         <tr>
            <th><?php print $text_queue_status; ?></div>
         </div>

         <?php foreach ($queues as $queue) {

                  if(isset($queue['desc'])) { ?>

               <tr>
                  <th><?php print $queue['desc']; ?></div>
               </div>

               <tr>
                  <td><pre><?php print $queue['lines']; ?></pre></div>
               </div>

            <?php } 
           } ?>

<?php } ?>
</div>

</div>

</section>
</div>