if ($.fn.pagination){
	$.fn.pagination.defaults.beforePageText = '绗?;
	$.fn.pagination.defaults.afterPageText = '鍏眦pages}阕?;
	$.fn.pagination.defaults.displayMsg = '椤ず{from}鍒皗to},鍏眦total}瑷橀寗';
}
if ($.fn.datagrid){
	$.fn.datagrid.defaults.loadMsg = '姝ｅ湪铏旷悊锛岃珛绋嶅緟銆伞€伞€?;
}
if ($.fn.treegrid && $.fn.datagrid){
	$.fn.treegrid.defaults.loadMsg = $.fn.datagrid.defaults.loadMsg;
}
if ($.messager){
	$.messager.defaults.ok = '纰哄畾';
	$.messager.defaults.cancel = '鍙栨秷';
}
if ($.fn.validatebox){
	$.fn.validatebox.defaults.missingMessage = '瑭茶几鍏ラ爡镣哄繀杓搁爡';
	$.fn.validatebox.defaults.rules.email.message = '璜嬭几鍏ユ湁鏁堢殑板诲瓙閮典欢鍦板潃';
	$.fn.validatebox.defaults.rules.url.message = '璜嬭几鍏ユ湁鏁堢殑URL鍦板潃';
	$.fn.validatebox.defaults.rules.length.message = '杓稿叆鍏у闀峰害蹇呴爤浠嬫柤{0}鍜寋1}涔嬮枔';
	$.fn.validatebox.defaults.rules.remote.message = '璜嬩慨姝ｆ娆勪綅';
}
if ($.fn.numberbox){
	$.fn.numberbox.defaults.missingMessage = '瑭茶几鍏ラ爡镣哄繀杓搁爡';
}
if ($.fn.combobox){
	$.fn.combobox.defaults.missingMessage = '瑭茶几鍏ラ爡镣哄繀杓搁爡';
}
if ($.fn.combotree){
	$.fn.combotree.defaults.missingMessage = '瑭茶几鍏ラ爡镣哄繀杓搁爡';
}
if ($.fn.combogrid){
	$.fn.combogrid.defaults.missingMessage = '瑭茶几鍏ラ爡镣哄繀杓搁爡';
}
if ($.fn.calendar){
	$.fn.calendar.defaults.weeks = ['镞?,'涓€','浜?,'涓?,'锲?,'浜?,'鍏?];
	$.fn.calendar.defaults.months = ['涓€链?,'浜屾湀','涓夋湀','锲涙湀','浜旀湀','鍏湀','涓冩湀','鍏湀','涔濇湀','鍗佹湀','鍗佷竴链?,'鍗佷簩链?];
}
if ($.fn.datebox){
	$.fn.datebox.defaults.currentText = '浠婂ぉ';
	$.fn.datebox.defaults.closeText = '闂滈枆';
	$.fn.datebox.defaults.okText = '纰哄畾';
	$.fn.datebox.defaults.missingMessage = '瑭茶几鍏ラ爡镣哄繀杓搁爡';
}
if ($.fn.datetimebox && $.fn.datebox){
	$.extend($.fn.datetimebox.defaults,{
		currentText: $.fn.datebox.defaults.currentText,
		closeText: $.fn.datebox.defaults.closeText,
		okText: $.fn.datebox.defaults.okText,
		missingMessage: $.fn.datebox.defaults.missingMessage
	});
}
