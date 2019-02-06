module ApplicationHelper
    def create_invoice
        link_to "Create Invoice", new_client_invoice_path(@client), class: "btn btn-sm btn-info"
    end
    
    def view_invoice
        link_to "View Invoices", client_invoices_path(@client), class: "btn btn-sm btn-secondary"        
    end
end
