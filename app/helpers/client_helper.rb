module ClientHelper
    def client_navigation_head
        if current_page?(clients_path)
            render html: '<h1>Clients</h1>'.html_safe
        elsif current_page?(new_client_path)
            render html: '<h1>Add a Client</h1>'.html_safe
        elsif current_page?(edit_client_path)
            render html: '<h1>Edit a Client</h1>'.html_safe
        elsif current_page?(client_path)
            render html: '<h1>Client</h1>'.html_safe
        end 
    end
end