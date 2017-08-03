#!/bin/bash
##########################################################################
#
# Script for Installation: Odoo OCA modules
#
##########################################################################
 
# parameters
DESCARGAS="/home/odoo/odoo10/descargas"
ADDONS="/home/odoo/odoo10/addonsOCA"
VERSION="10.0"

echo -e "\n==== Creating directories ===="
mkdir $DESCARGAS
mkdir $ADDONS

echo -e "\n==== Installing spanish localization ===="
sudo git clone -b $VERSION https://github.com/OCA/l10n-spain.git $DESCARGAS/l10n-spain

echo -e "\n==== Installing some modules ===="
sudo git clone -b $VERSION https://github.com/OCA/account-financial-tools.git $DESCARGAS/account-financial-tools
sudo git clone -b $VERSION https://github.com/OCA/account-financial-reporting.git $DESCARGAS/account-financial-reporting
sudo git clone -b $VERSION https://github.com/OCA/account-payment.git $DESCARGAS/account-payment
sudo git clone -b $VERSION https://github.com/OCA/knowledge.git $DESCARGAS/knowledge
sudo git clone -b $VERSION https://github.com/OCA/reporting-engine.git $DESCARGAS/reporting-engine
sudo git clone -b $VERSION https://github.com/OCA/partner-contact.git $DESCARGAS/partner-contact
sudo git clone -b $VERSION https://github.com/OCA/server-tools.git $DESCARGAS/server-tools
sudo git clone -b $VERSION https://github.com/OCA/web.git $DESCARGAS/web
sudo git clone -b $VERSION https://github.com/OCA/bank-payment.git $DESCARGAS/bank-payment
sudo git clone -b $VERSION https://github.com/OCA/knowledge.git $DESCARGAS/knowledge
sudo git clone -b $VERSION https://github.com/OCA/pos.git $DESCARGAS/pos
sudo git clone -b $VERSION https://github.com/OCA/bank-statement-import.git $DESCARGAS/bank-statement-import

echo -e "\n---- Create some links ----"
sudo ln -s $DESCARGAS/account-financial-reporting/account_export_csv/ $ADDONS
sudo ln -s $DESCARGAS/account-financial-reporting/account_move_line_report_xls/ $ADDONS
sudo ln -s $DESCARGAS/account-financial-reporting/account_tax_balance/ $ADDONS
sudo ln -s $DESCARGAS/account-financial-tools/account_chart_update/ $ADDONS
sudo ln -s $DESCARGAS/account-financial-tools/account_invoice_constraint_chronology/ $ADDONS
sudo ln -s $DESCARGAS/account-financial-tools/account_invoice_currency/ $ADDONS
sudo ln -s $DESCARGAS/account-financial-tools/account_journal_always_check_date/ $ADDONS
sudo ln -s $DESCARGAS/account-financial-tools/account_renumber/ $ADDONS
sudo ln -s $DESCARGAS/account-payment/account_due_list/ $ADDONS
sudo ln -s $DESCARGAS/account-payment/account_due_list_payment_mode/ $ADDONS
sudo ln -s $DESCARGAS/bank-payment/account_banking_mandate/ $ADDONS 
sudo ln -s $DESCARGAS/bank-payment/account_banking_pain_base/ $ADDONS
sudo ln -s $DESCARGAS/bank-payment/account_banking_payment_export/ $ADDONS
sudo ln -s $DESCARGAS/bank-payment/account_banking_payment_transfer/ $ADDONS
sudo ln -s $DESCARGAS/bank-payment/account_banking_sepa_direct_debit/ $ADDONS
sudo ln -s $DESCARGAS/bank-payment/account_direct_debit/ $ADDONS
sudo ln -s $DESCARGAS/bank-payment/account_payment_partner/ $ADDONS
sudo ln -s $DESCARGAS/bank-payment/account_payment_mode/ $ADDONS
sudo ln -s $DESCARGAS/bank-statement-import/account_bank_statement_import/ $ADDONS
sudo ln -s $DESCARGAS/knowledge/attachment_preview/ $ADDONS
sudo ln -s $DESCARGAS/knowledge/attachments_to_filesystem/ $ADDONS
sudo ln -s $DESCARGAS/knowledge/document_page/ $ADDONS
sudo ln -s $DESCARGAS/knowledge/document_url/ $ADDONS
sudo ln -s $DESCARGAS/knowledge/knowledge/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/account_balance_reporting_xls/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/account_balance_reporting/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/account_refund_original $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_account_asset/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_account_balance_report/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_account_bank_statement_import_n43/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_account_invoice_sequence/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat_mod111/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat_mod115/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat_mod130/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat_mod303/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat_mod340_type0/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat_mod340/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat_mod347/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat_mod349/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_aeat/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_fiscal_year_closing/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_partner_mercantil/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_partner/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_pos/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es_toponyms/ $ADDONS
sudo ln -s $DESCARGAS/l10n-spain/l10n_es/ $ADDONS
sudo ln -s $DESCARGAS/partner-contact/base_location $ADDONS
sudo ln -s $DESCARGAS/partner-contact/base_location_geonames_import/ $ADDONS
sudo ln -s $DESCARGAS/partner-contact/base_partner_sequence $ADDONS
sudo ln -s $DESCARGAS/pos/pos_pricelist/ $ADDONS
sudo ln -s $DESCARGAS/reporting-engine/report_custom_filename/ $ADDONS
sudo ln -s $DESCARGAS/reporting-engine/report_xls/ $ADDONS
sudo ln -s $DESCARGAS/server-tools/disable_openerp_online/ $ADDONS
sudo ln -s $DESCARGAS/server-tools/mass_editing/ $ADDONS
sudo ln -s $DESCARGAS/server-tools/date_range/ $ADDONS
sudo ln -s $DESCARGAS/server-tools/disable_odoo_online/ $ADDONS
sudo ln -s $DESCARGAS/web/web_export_view/ $ADDONS

echo "Done! Odoo OCA modules installed"


