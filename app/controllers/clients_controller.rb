class ClientsController < ApplicationController 
    before_action :authenticate_partner!
    before_action :mark_clients, only: [:index, :active, :archive]
    before_action :set_client, only: [:edit, :update, :show, :destroy]

    def index
        if @clients.exists?
          render action: :index
        else
          flash[:notice] = "You have no clients added to your account. Please add your first client!"
          redirect_to new_client_path
        end
    end
    
    def active
        @client = Client.active
        if @client.exists?
          render action: :index
        else
          flash[:notice] = "You have no active clients. Please add new clients!"
          redirect_to new_client_path  
        end
    end
    
    def archive
        @client = Client.archive
        if @client.exists?
          render action: :index
        else
          flash[:notice] = "You have no clients archived!"
          redirect_to clients_path  
        end
    end
        
    def new
       @client = Client.new
    end
    
    def create
       @partner = current_partner
       @client = @partner.clients.build(client_params)
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
        if @client.destroy && @client.present?
            flash[:notice] = "Client was removed!"
            redirect_to clients_path
        else
            flash[:notice] = "Client no longer exists! May have been deleted already."
            redirect_to clients_path
        end
    end
    
    private
    
    def mark_clients
       @clients = current_partner.clients
    end
    
    def set_client
        @client = Client.find(params[:id])
    end
    
    def client_params
       params.require(:client).permit(:name, :client_type, :poc_name, :poc_email, :poc_number, :status, :first_name, :last_name)
    end
end