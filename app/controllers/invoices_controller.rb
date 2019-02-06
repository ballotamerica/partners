class InvoicesController < ApplicationController
    before_action :authenticate_partner!
    before_action :set_invoice, only: [:edit, :update, :show, :destroy]
    
    def index
        @invoices = Client.find(params[:client_id]).invoices
    end
    
    def new
       @invoice = Invoice.new
    end
    
    def create
       @invoice = client.invoices.build(invoice_params)
        if @invoice.save
            flash[:notice] = "Successfully saved invoice!"
            redirect_to client_invoices_path
        else
            render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end    
    
    def update
        if @invoice.update(invoice_params)
            flash[:notice] = "Successfully saved invoice!"
            redirect_to client_invoices_path
        else
            render 'edit'
        end        
    end
    
    def destroy
        if @invoice.present?
            @invoice.destroy
            flash[:notice] = "Successfully removed invoice!"
            redirect_to client_invoices_path
        else
            flash[:notice] = "Error removing invoice!"
            redirect_to client_invoices_path
        end
    end
    
   private
    
    def set_invoice
        @invoice = Invoice.find(params[:id])
    end
    
    def invoice_params
       params.require(:invoice).permit(:invoice_number, :invoice_date, :due_date, :total_amount, :invoice_note, services_attributes: [:name, :baserate]) 
    end    
end