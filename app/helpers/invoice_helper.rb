module InvoiceHelper
 def no_invoice
    if @invoices.exists?
        render partial: "invoices/invoicelist"
    else
        render partial: "invoices/no_invoices"
    end
 end
end