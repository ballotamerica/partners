class ClientsController < ApplicationController 
    before_action :authenticate_partner!
    before_action :set_client, only: [:edit, :update, :show, :destroy]
    
    def index
       @clients = current_partner.clients
       
        if @invoices.blank?
            flash[:notice] = "Please create your first invoice!"
            redirect_to clients_path
        else
         @invoices =  current_clients.invoices
        end
    end
    
    def new
       @client = partner.clients.build
    end
    
    def create
       @client = current_partner.clients.build(client_params) 
        if @client.save
            flash[:notice] = "Successfully saved client!"
            redirect_to clients_path
        else
            render 'new'
        end
    end
    
    def show
    end
    
    def edit

    end    
    
    def update
        
        
        if @client.update(client_params)
            flash[:notice] = "Successfully saved client!"
            redirect_to clients_path
        else
            render 'edit'
        end        
        
    end
    
    def destroy
        @client.destroy
        flash[:notice] = "Client was removed!"
        redirect_to clients_path
    end
    
    private
    
    def set_client
        @client = Client.find(params[:id])
    end
    
    def client_params
       params.require(:client).permit(:name, :client_type, :poc_name, :poc_email, :poc_phone) 
    end
end