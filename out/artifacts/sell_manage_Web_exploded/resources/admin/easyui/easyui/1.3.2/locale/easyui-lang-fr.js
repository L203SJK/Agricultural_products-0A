if ($.fn.pagination){
	$.fn.pagination.defaults.beforePageText = 'Page';
	$.fn.pagination.defaults.afterPageText = 'de {pages}';
	$.fn.pagination.defaults.displayMsg = 'Affichage de {from} et {to} au {total} des articles';
}
if ($.fn.datagrid){
	$.fn.datagrid.defaults.loadMsg = "Traitement, s'il vous pla卯t patienter ...";
}
if ($.fn.treegrid && $.fn.datagrid){
	$.fn.treegrid.defaults.loadMsg = $.fn.datagrid.defaults.loadMsg;
}
if ($.messager){
	$.messager.defaults.ok = 'Ok';
	$.messager.defaults.cancel = 'Annuler';
}
if ($.fn.validatebox){
	$.fn.validatebox.defaults.missingMessage = 'Ce champ est obligatoire.';
	$.fn.validatebox.defaults.rules.email.message = "S'il vous pla卯t entrer une adresse email valide.";
	$.fn.validatebox.defaults.rules.url.message = "S'il vous pla卯t entrer une URL valide.";
	$.fn.validatebox.defaults.rules.length.message = "S'il vous pla卯t entrez une valeur comprise entre {0} et {1}.";
}
if ($.fn.numberbox){
	$.fn.numberbox.defaults.missingMessage = 'Ce champ est obligatoire.';
}
if ($.fn.combobox){
	$.fn.combobox.defaults.missingMessage = 'Ce champ est obligatoire.';
}
if ($.fn.combotree){
	$.fn.combotree.defaults.missingMessage = 'Ce champ est obligatoire.';
}
if ($.fn.combogrid){
	$.fn.combogrid.defaults.missingMessage = 'Ce champ est obligatoire.';
}
if ($.fn.calendar){
	$.fn.calendar.defaults.weeks = ['S','M','T','W','T','F','S'];
	$.fn.calendar.defaults.months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
}
if ($.fn.datebox){
	$.fn.datebox.defaults.currentText = "Aujourd'hui";
	$.fn.datebox.defaults.closeText = 'Fermer';
	$.fn.datebox.defaults.okText = 'Ok';
	$.fn.datebox.defaults.missingMessage = 'Ce champ est obligatoire.';
}
if ($.fn.datetimebox && $.fn.datebox){
	$.extend($.fn.datetimebox.defaults,{
		currentText: $.fn.datebox.defaults.currentText,
		closeText: $.fn.datebox.defaults.closeText,
		okText: $.fn.datebox.defaults.okText,
		missingMessage: $.fn.datebox.defaults.missingMessage
	});
}
