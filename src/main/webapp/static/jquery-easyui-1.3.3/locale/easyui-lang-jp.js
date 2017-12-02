if ($.fn.pagination){
	$.fn.pagination.defaults.beforePageText = '銉氥兖銈?;
	$.fn.pagination.defaults.afterPageText = '{pages} 涓?;
	$.fn.pagination.defaults.displayMsg = '鍏?{total} 銈偆銉嗐儬涓?{from} 銇嬨倝 {to} 銈掕〃绀轰腑';
}
if ($.fn.datagrid){
	$.fn.datagrid.defaults.loadMsg = '鍑︾悊涓仹銇欍€傚皯銆呫亰寰呫仭銇忋仩銇曘亜...';
}
if ($.fn.treegrid && $.fn.datagrid){
	$.fn.treegrid.defaults.loadMsg = $.fn.datagrid.defaults.loadMsg;
}
if ($.messager){
	$.messager.defaults.ok = 'OK';
	$.messager.defaults.cancel = '銈儯銉炽偦銉?;
}
if ($.fn.validatebox){
	$.fn.validatebox.defaults.missingMessage = '鍏ュ姏銇繀阕堛仹銇欍€?;
	$.fn.validatebox.defaults.rules.email.message = '姝ｃ仐銇勩儭銉笺俪銈俦銉偣銈掑叆锷涖仐銇︺亸銇犮仌銇勩€?;
	$.fn.validatebox.defaults.rules.url.message = '姝ｃ仐銇刄RL銈掑叆锷涖仐銇︺亸銇犮仌銇勩€?;
	$.fn.validatebox.defaults.rules.length.message = '{0} 銇嬨倝 {1} 銇瘎锲层伄姝ｃ仐銇勫€ゃ倰鍏ュ姏銇椼仸銇忋仩銇曘亜銆?;
	$.fn.validatebox.defaults.rules.remote.message = '銇撱伄銉曘偅銉笺俪銉夈倰淇銇椼仸銇忋仩銇曘亜銆?;
}
if ($.fn.numberbox){
	$.fn.numberbox.defaults.missingMessage = '鍏ュ姏銇繀阕堛仹銇欍€?;
}
if ($.fn.combobox){
	$.fn.combobox.defaults.missingMessage = '鍏ュ姏銇繀阕堛仹銇欍€?;
}
if ($.fn.combotree){
	$.fn.combotree.defaults.missingMessage = '鍏ュ姏銇繀阕堛仹銇欍€?;
}
if ($.fn.combogrid){
	$.fn.combogrid.defaults.missingMessage = '鍏ュ姏銇繀阕堛仹銇欍€?;
}
if ($.fn.calendar){
	$.fn.calendar.defaults.weeks = ['镞?,'链?,'鐏?,'姘?,'链?,'閲?,'鍦?];
	$.fn.calendar.defaults.months = ['1链?, '2链?, '3链?, '4链?, '5链?, '6链?, '7链?, '8链?, '9链?, '10链?, '11链?, '12链?];
}
if ($.fn.datebox){
	$.fn.datebox.defaults.currentText = '浠婃棩';
	$.fn.datebox.defaults.closeText = '闁夈仒銈?;
	$.fn.datebox.defaults.okText = 'OK';
	$.fn.datebox.defaults.missingMessage = '鍏ュ姏銇繀阕堛仹銇欍€?;
}
if ($.fn.datetimebox && $.fn.datebox){
	$.extend($.fn.datetimebox.defaults,{
		currentText: $.fn.datebox.defaults.currentText,
		closeText: $.fn.datebox.defaults.closeText,
		okText: $.fn.datebox.defaults.okText,
		missingMessage: $.fn.datebox.defaults.missingMessage
	});
}
