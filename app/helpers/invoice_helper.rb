module InvoiceHelper
    def invoice_navigation_head
        if current_page?(invoices_path)
            render html: '<h1>Invoices</h1>'.html_safe
        elsif current_page?(new_invoice_path)
            render html: '<h1>Create a Invoice</h1>'.html_safe
        elsif current_page?(edit_invoice_path)
            render html: '<h1>Edit a Invoice</h1>'.html_safe
        elsif current_page?(invoice_path)
            render html: '<h1>Invoice</h1>'.html_safe
        end 
    end
end