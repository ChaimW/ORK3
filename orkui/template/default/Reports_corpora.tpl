<div class='info-container'>
	<h3>Corpora Qualified</h3>
	<table class='information-table'>
		<thead>
			<tr>
				<th>Kingdom</th>
				<th>Park</th>
				<th>Persona</th>
				<th>Qualified Until</th>
			</tr>
		</thead>
		<tbody>
<?php if (is_array($corpora_qualified)) : ?>
<?php 	foreach ($corpora_qualified as $k => $player): ?>
			<tr>
				<td><a href='<?=UIR.'Kingdom/index/'.$player['KingdomId'] ?>'><?=$player['KingdomName'] ?></a></td>
				<td><a href='<?=UIR.'Park/index/'.$player['ParkId'] ?>'><?=$player['ParkName'] ?></a></td>
				<td><a href='<?=UIR.'Player/index/'.$player['MundaneId'] ?>'><?=trimlen($player['Persona'])>0?$player['Persona']:"<i>No Persona</i>" ?></a></td>
				<td><?php echo $player['CorporaQualifiedUntil'] ?></td>
			</tr>
<?php 	endforeach; ?>
<?php endif; ?>
		</tbody>
	</table>
</div>
<?php
