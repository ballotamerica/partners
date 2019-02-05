class ClientsController < ApplicationController 
    before_action :authenticate_partner!
    before_action :set_client, only: [:edit, :update, :show, :destroy]
    
    def index
       @clients = current_partner.clients
    end
    
    def new
       @client = Client.new
    end
    
    def create
       @partner = current_partner
       @client = @partner.clients.build(params)
        if @client.save
            flash[:notice] = "Successfully saved client!"
            redirect_to partners_clients_path
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
            redirect_to partners_clients_path
        else
            render 'edit'
        end        
        
    end
    
    def destroy
        if @client.destroy && @client.present?
            flash[:notice] = "Client was removed!"
            redirect_to partners_clients_path
        else
            flash[:notice] = "Client no longer exists! May have been deleted already."
            redirect_to partners_clients_path
        end
    end
    
    private
    
    def set_client
        @client = Client.find(params[:id])
    end
    
    def client_params
       params.require(:client).permit(:name, :client_type, :poc_name, :poc_email, :poc_number, services_attributes: [:name, :baserate])
       if 
    end
end