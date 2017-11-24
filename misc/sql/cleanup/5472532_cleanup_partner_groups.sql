update c_bpartner set c_bp_group_id=1000000
where value in ('G0002','G0001');
DELETE from c_bp_group where c_bp_group_id != 1000000;