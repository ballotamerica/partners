module ClientHelper
    def client_header
        if current_page?(partners_clients_path)
            render html: '<h1>Clients</h1>'.html_safe
        elsif current_page?(new_partners_client_path)
            render html: '<h1>Add a Client</h1>'.html_safe
        elsif current_page?(edit_partners_client_path)
            render html: '<h1>Edit a Client</h1>'.html_safe
        elsif current_page?(partners_client_path)
            render html: '<h1>Client</h1>'.html_safe
        end 
    end
end