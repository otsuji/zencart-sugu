<?php
 /*
  * Copyright (C) 2006 NICOS_CONVENI INC.
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with Shigeo; if not, write to the Free Software
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  *
  * $Id$
  */
//

  define('MODULE_PAYMENT_DIGITALCHECK_PE_TEXT_TITLE', 'Pay-easy���(�ǥ���������å�)');
if (ENABLE_SSL_CATALOG=='true') {
  define('MODULE_PAYMENT_DIGITALCHECK_PE_TEXT_DESCRIPTION', '�ǥ���������å� Pay-easy��Ѥε�ǽ���󶡤��ޤ���<br/>'
                                                           .'<br/>'
                                                           .'�������ϲ�����Ϣ���Ƥ���������<br/>'
                                                           .'����������URL<br/>'
                                                           .'��'.HTTPS_SERVER.DIR_WS_HTTPS_CATALOG.'extras/digitalcheck_pe_finish_payment.php<br/>'
                                                           .'�����⥭��󥻥�����URL<br/>'
                                                           .'��'.HTTPS_SERVER.DIR_WS_HTTPS_CATALOG.'extras/digitalcheck_pe_cancel.php<br/>'
                                                           .'����Ѵ�λ�������URL<br/>'
                                                           .'��'.HTTPS_SERVER.DIR_WS_HTTPS_CATALOG.'index.php?main_page=checkout_process<br/>'
                                                           .'������󥻥�������URL <br/>'
                                                           .'��'.HTTPS_SERVER.DIR_WS_HTTPS_CATALOG.'index.php?main_page=checkout_payment<br/>'
                                                           );
}
else {
  define('MODULE_PAYMENT_DIGITALCHECK_PE_TEXT_DESCRIPTION', '�ǥ���������å� Pay-easy��Ѥε�ǽ���󶡤��ޤ���<br/>'
                                                           .'<br/>'
                                                           .'�������ϲ�����Ϣ���Ƥ���������<br/>'
                                                           .'����������URL<br/>'
                                                           .'��'.HTTP_SERVER.DIR_WS_CATALOG.'extras/digitalcheck_pe_finish_payment.php<br/>'
                                                           .'�����⥭��󥻥�����URL<br/>'
                                                           .'��'.HTTP_SERVER.DIR_WS_CATALOG.'extras/digitalcheck_pe_cancel.php<br/>'
                                                           .'����Ѵ�λ�������URL<br/>'
                                                           .'��'.HTTP_SERVER.DIR_WS_CATALOG.'index.php?main_page=checkout_process<br/>'
                                                           .'������󥻥�������URL <br/>'
                                                           .'��'.HTTP_SERVER.DIR_WS_CATALOG.'index.php?main_page=checkout_payment<br/>'
                                                           );
}
?>
