module InvoiceHelper
    def invoice_header
        if current_page?(partners_client_invoices_path)
            render html: '<h1>Invoices</h1>'.html_safe
        elsif current_page?(new_partners_client_invoice_path)
            render html: '<h1>Create a Invoice</h1>'.html_safe
        elsif current_page?(edit_partners_client_invoice_path)
            render html: '<h1>Edit a Invoice</h1>'.html_safe
        elsif current_page?(partners_client_invoice_path)
            render html: '<h1>Invoice</h1>'.html_safe
        end 
    end
end