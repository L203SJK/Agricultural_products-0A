if ($.fn.pagination){
	$.fn.pagination.defaults.beforePageText = 'Strona';
	$.fn.pagination.defaults.afterPageText = 'z {pages}';
	$.fn.pagination.defaults.displayMsg = 'Wy艣wietlono elementy od {from} do {to} z {total}';
}
if ($.fn.datagrid){
	$.fn.datagrid.defaults.loadMsg = 'Przetwarzanie, prosz臋 czeka膰 ...';
}
if ($.fn.treegrid && $.fn.datagrid){
	$.fn.treegrid.defaults.loadMsg = $.fn.datagrid.defaults.loadMsg;
}
if ($.messager){
	$.messager.defaults.ok = 'Ok';
	$.messager.defaults.cancel = 'Cancel';
}
if ($.fn.validatebox){
	$.fn.validatebox.defaults.missingMessage = 'To pole jest wymagane.';
	$.fn.validatebox.defaults.rules.email.message = 'Wprowad藕 poprawny adres email.';
	$.fn.validatebox.defaults.rules.url.message = 'Wprowad藕 poprawny adres URL.';
	$.fn.validatebox.defaults.rules.length.message = 'Wprowad藕 warto艣膰 z zakresu od {0} do {1}.';
	$.fn.validatebox.defaults.rules.remote.message = 'Prosz臋 poprawi膰 to pole.';
}
if ($.fn.numberbox){
	$.fn.numberbox.defaults.missingMessage = 'To pole jest wymagane.';
}
if ($.fn.combobox){
	$.fn.combobox.defaults.missingMessage = 'To pole jest wymagane.';
}
if ($.fn.combotree){
	$.fn.combotree.defaults.missingMessage = 'To pole jest wymagane.';
}
if ($.fn.combogrid){
	$.fn.combogrid.defaults.missingMessage = 'To pole jest wymagane.';
}
if ($.fn.calendar){
	$.fn.calendar.defaults.weeks = ['N','P','W','艢','C','P','S'];
	$.fn.calendar.defaults.months = ['Sty', 'Lut', 'Mar', 'Kwi', 'Maj', 'Cze', 'Lip', 'Sie', 'Wrz', 'Pa藕', 'Lis', 'Gru'];
}
if ($.fn.datebox){
	$.fn.datebox.defaults.currentText = 'Dzisiaj';
	$.fn.datebox.defaults.closeText = 'Zamknij';
	$.fn.datebox.defaults.okText = 'Ok';
	$.fn.datebox.defaults.missingMessage = 'To pole jest wymagane.';
}
if ($.fn.datetimebox && $.fn.datebox){
	$.extend($.fn.datetimebox.defaults,{
		currentText: $.fn.datebox.defaults.currentText,
		closeText: $.fn.datebox.defaults.closeText,
		okText: $.fn.datebox.defaults.okText,
		missingMessage: $.fn.datebox.defaults.missingMessage
	});
}
