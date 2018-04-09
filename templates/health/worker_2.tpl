<div class="container">
	<div class="alert alert-info"><strong><?php print $text_refresh_period; ?>:</strong> <?php print HEALTH_REFRESH; ?> sec</div>
	 <section class="info-tiles">
          <div class="tile is-ancestor has-text-centered">
            <div class="tile is-parent">
              <article class="tile is-child box">
                <p class="title is-5"><?php print $piler_version; ?></p>
                <p class="subtitle">Piler</p>
              </article>
            </div>
            <div class="tile is-parent">
              <article class="tile is-child box">
                <p class="title is-5"><?php print $meminfo; ?>% / <?php print $totalmem; ?> MB</p>
                <p class="subtitle"><?php print $text_memory_usage; ?>:</p>
              </article>
            </div>
            <div class="tile is-parent">
              <article class="tile is-child box">
                <p class="title is-5"><?php print $cpuinfo; ?>% <?php print $cpuload; ?></p>
                <p class="subtitle"><?php print $text_cpu_usage; ?></p>
              </article>
            </div>
            <div class="tile is-parent">
              <article class="tile is-child box">
                <p class="title is-5"><?php print $swapinfo; ?>% / <?php print $totalswap; ?> MB</p>
                <p class="subtitle"><?php print $text_swap_usage; ?>:</p>
              </article>
            </div>
          </div>
        </section>

    <div class="columns is-multiline">
	<!--
          <div class="column">
            <div class="box notification is-primary">
              <div class="heading">Top Seller Total</div>
              <div class="title">56,950</div>
              <div class="level">
                <div class="level-item">
                  <div class="">
                    <div class="heading">Sales $</div>
                    <div class="title is-5">250K</div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading">Overall $</div>
                    <div class="title is-5">750K</div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading">Sales %</div>
                    <div class="title is-5">25%</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  -->
          <div class="column">
            <div class="box notification is-warning">
              <div class="heading"><?php print $text_cumulative_counts; ?></div>
              <div class="title"><?php print $text_cumulative_counts; ?></div>
              <div class="level">
                <div class="level-item">
                  <div class="">
                    <div class="heading"><?php print $text_oldest_record; ?></div>
                    <div class="title is-5"><?php print date('d.m.Y', $oldestmessagets); ?></div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading">Rev Serv $</div>
                    <div class="title is-5">25%</div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading">Exp %</div>
                    <div class="title is-5">45%</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="column">
            <div class="box notification is-info">
              <div class="heading">Feedback Activity</div>
              <div class="title">78% &uarr;</div>
              <div class="level">
                <div class="level-item">
                  <div class="">
                    <div class="heading">Pos</div>
                    <div class="title is-5">1560</div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading">Neg</div>
                    <div class="title is-5">368</div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading">Pos/Neg %</div>
                    <div class="title is-5">77% / 23%</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="column">
            <div class="box notification is-danger">
              <div class="heading">Orders / Returns</div>
              <div class="title">75% / 25%</div>
              <div class="level">
                <div class="level-item">
                  <div class="">
                    <div class="heading">Orders $</div>
                    <div class="title is-5">425K</div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading">Returns $</div>
                    <div class="title is-5">106K</div>
                  </div>
                </div>
                <div class="level-item">
                  <div class="">
                    <div class="heading">Success %</div>
                    <div class="title is-5">+ 28,5%</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>	

	<div class="row">
		
		<div class="span8">
            <h2><i class="icon-dashboard icon-2x pull-left"></i><?php print $sysinfo[0]; ?> <small><?php print $text_status; ?></small></h2>
            <h3><strong>Up For:</strong> <?php print $uptime; ?></h3>
            <table class="table table-striped">
                <tr>
                    <th class="span4">Piler:</th>
                    <td class="span8"> <?php print $piler_version; ?></td>
                </tr>

                <tr>
                    <th class="span4"><?php print $text_server_operating_system; ?>:</th>
                    <td class="span8"> <?php print $sysinfo[1]; ?></td>
             	</tr>        
            
            	<tr>
					<th><?php print $text_cpu_usage; ?>:</th>
					<td><div class="progress <?php if($cpuinfo < HEALTH_RATIO) { ?>progress-success<?php } else { ?>progress-danger<?php } ?>"><div class="bar" style="width: <?php print $cpuinfo; ?>%"></div>&nbsp;<?php print $cpuinfo; ?>% <?php print $cpuload; ?></div></td>
                </tr>

                <tr>
					<th><?php print $text_memory_usage; ?>:</th>
                    <td><div class="progress <?php if($meminfo < HEALTH_RATIO) { ?>progress-success<?php } else { ?>progress-danger<?php } ?>"><div class="bar" style="width: <?php print $meminfo; ?>%"></div>&nbsp;<?php print $meminfo; ?>% / <?php print $totalmem; ?> MB</div></td>
				</tr>
                
                <tr>
					<th><?php print $text_swap_usage; ?>:</th>
                    <td><div class="progress <?php if($swapinfo < HEALTH_RATIO) { ?>progress-success<?php } else { ?>progress-danger<?php } ?>"><div class="bar" style="width: <?php print $swapinfo; ?>%"></div>&nbsp;<?php print $swapinfo; ?>% / <?php print $totalswap; ?> MB</div></td>
				</tr>

<?php if(ENABLE_SAAS == 1) { ?>
                <tr>
                    <th class="span4"><?php print $text_online_users; ?>:</th>
                    <td class="span8"><a href="index.php?route=stat/online"><?php print $num_of_online_users; ?></a></td>
                </tr>
<?php } ?>
                
            </table>
            
            <h2><i class="icon-hdd icon-2x pull-left"></i>&nbsp;<?php print $text_storage; ?></h2>
			<table class="table table-striped">
				 <tr>
					<th><?php print $text_archive_size; ?>:</th>
					<td><?php print $archive_size; ?>B (<?php print $archive_stored_size; ?>B)</td>
				 </tr>

				 <tr>
					<th><?php print $text_disk_usage; ?></th>
                                        <td>
                                            <table>
                                                <?php foreach($shortdiskinfo as $partition) { ?>

                                                   <tr class="<?php if($partition['utilization'] < HEALTH_RATIO) { ?>text-success<?php } else { ?>text-error<?php } ?>">
                                                      <td><?php print $partition['partition']; ?></td>
                                                      <td><?php print nice_size(1000*$partition['used']); ?> / <?php print nice_size(1000*$partition['total']); ?></td>
                                                      <td>(<?php print $partition['utilization']; ?>%)</td>
                                                   </tr>

                                                <?php } ?>
                                            </table>
                                        </td>
				 </tr>
		
				 <tr>
					<th><?php print $text_smtp_status; ?>:</th>
					<td>
					   <?php foreach($health as $h) {
								if(preg_match("/^220/", $h[1])) {
								   $status = 'OK'; $class = 'text-success';
								} else {
								   $status = 'ERROR'; $class = 'text-error';
								}
					   ?>
								<div class="<?php print $class; ?>"><span onmouseover="Tip('<?php print preg_replace("/\'/", "\'", $h[1]); ?>, <?php print $h[2]; ?>', BALLOON, true, ABOVE, true)" onmouseout="UnTip()"><?php print $h[3]; ?>: <?php print $status; ?></span></div>
					   <?php } ?>
					</td>
				 </tr>

				 <tr>
					<th><?php print $text_periodic_purge; ?></th>
					<td>
                                           <span class="<?php if($options['enable_purge'] == 1) { ?>ok<?php } else { ?>error<?php } ?>"><?php if($options['enable_purge'] == 1) { print $text_enabled; ?>. <a href="<?php print HEALTH_URL; ?>&toggle_enable_purge"><?php print $text_disable; ?></a>
                                              <?php if($purge_stat[0]) { print $text_last; ?>: <?php print $purge_stat[0]; ?>, <?php print $text_next; ?>:  <?php print $purge_stat[1]; } ?>
                                           <?php } else { print $text_disabled; ?>. <a href="<?php print HEALTH_URL; ?>&toggle_enable_purge"><?php print $text_enable; ?></a><?php } ?>
                                           </span>
                                        </td>
				 </tr>

                         <?php if($indexer_stat[0]) { ?>
                                 <tr>
                                        <th><?php print $text_indexer_job; ?></th>
                                        <td><?php print $text_last; ?>: <?php print $indexer_stat[0]; ?>, <?php print $text_next; ?>:  <?php print $indexer_stat[1]; ?></td>

                                 </tr>
                         <?php } ?>

			 </table>
		</div>
				 
		 <div class="span4">		
			<table class="table table-striped">
				<tr>
					<th colspan="2"><?php print $text_cumulative_counts; ?></th>
				</tr>
                                <tr>
                                        <td><?php print $text_oldest_record; ?></td>
                                        <td><?php print date(DATE_TEMPLATE, $oldestmessagets); ?></td>
                                </tr>                
				<tr>
					<td><?php print $text_processed_emails; ?></td>
                                        <td>
                                           <?php print $processed_emails['last_60_mins_count']; ?> (<?php print $text_60_minutes; ?>)<br />
                                           <?php print $processed_emails['today_count']; ?> (<?php print $text_24_hours; ?>)<br />
                                           <?php print $processed_emails['last_7_days_count']; ?> (<?php print $text_1_week; ?>)<br />
                                           <?php print $processed_emails['last_30_days_count']; ?> (<?php print $text_30_days; ?>)
                                        </td>
				</tr>
				<tr>
					<th colspan="2"><?php print $text_message_disposition; ?></th>
				</tr>
			   <?php while(list($k, $v) = each($counters)) {
						if(!is_numeric($k)) { ?>
						   <tr>
							  <td><?php $a = preg_replace("/^_piler\:/", "", $k); if(isset($$a)) { print $$a; } else { print $k; } ?></td>
							  <td><?php print $v; ?></td>
						   </tr>
						<?php } } ?>
		  
		  </table>
          
          <h4><?php print $text_space_projection; ?></h4>
          <table class="table table-striped">
			   <tr>
				  <td><?php print $text_average_messages_day; ?></td>
				  <td><?php print $averagemessages; ?></td>
			   </tr>
			   <tr>
				  <td><?php print $text_average_message_size; ?></td>
				  <td><?php print $averagemessagesize; ?> + <?php print $averagesqlsize; ?> + <?php print $averagesphinxsize; ?></td>
			   </tr>
			   <tr>
				  <td><?php print $text_average_size_day; ?></td>
				  <td><?php print $averagesizeday; ?></td>
			   </tr>
			   <tr>
				  <td>"<?php print DATA_PARTITION; ?>" <?php print $text_partition_full; ?></td>
				  <td><?php print $daysleftatcurrentrate[0]; ?> years, <?php print $daysleftatcurrentrate[1]; ?> months, <?php print $daysleftatcurrentrate[2]; ?> days</td>
			   </tr>
			   <tr>
				  <td><?php print $text_usage_trend; ?></td>
				  <td><?php if ( $usagetrend > 0 ) { print $text_usage_increasing; } elseif( $usagetrend < 0 ) { print $text_usage_decreasing; } else { print $text_usage_neutral; } ?></td>
			   </tr>
		 </table>
          
          
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


