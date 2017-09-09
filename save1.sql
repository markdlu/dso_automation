--this query looks good
dashboard_automationselect a.run_month, a.widget_name, a.active_status, a.click_desktop_e,a1.click_desktop_f,
a2."click_mobile/tablet_h",a3."click_mobile/tablet_i"
from acsd1_ddl.vw_mytest1 a,
acsd1_ddl.vw_mytest1 a1,
acsd1_ddl.vw_mytest1 a2,
acsd1_ddl.vw_mytest1 a3
where a.click_desktop_e is not null
and a1.click_desktop_f is not null
and a2."click_mobile/tablet_h" is not null
and a3."click_mobile/tablet_i" is not null
and (a.widget_name ='ACS Roto' or a.widget_name ='Category Tiles' or a.widget_name ='ACS Video' or a.widget_name ='Brand Farm' )
and a.widget_name = a1.widget_name
and a1.widget_name = a2.widget_name
and a2.widget_name = a3.widget_name;
