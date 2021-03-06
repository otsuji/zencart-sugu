function SetFocus() {
  if (document.forms.length > 0) {
    var field = document.forms[0];
    for (i=0; i<field.length; i++) {
      if ( (field.elements[i].type != "image") &&
           (field.elements[i].type != "hidden") &&
           (field.elements[i].type != "reset") &&
           (field.elements[i].type != "submit") ) {

        document.forms[0].elements[i].focus();

        if ( (field.elements[i].type == "text") ||
             (field.elements[i].type == "password") )
          document.forms[0].elements[i].select();

        break;
      }
    }
  }
}

function rowOverEffect(object) {
  if (object.className == 'dataTableRow') object.className = 'dataTableRowOver';
  if (object.className == 'totalRow') object.className = 'totalRowOver';
  if (object.className == 'lineItemRow') object.className = 'lineItemRowOver';
}

function rowOutEffect(object) {
  if (object.className == 'dataTableRowOver') object.className = 'dataTableRow';
  if (object.className == 'totalRowOver') object.className = 'totalRow';
  if (object.className == 'lineItemRowOver') object.className = 'lineItemRow';
}
