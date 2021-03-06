class InvoicesController < ApplicationController
    before_action :authenticate_partner!
    before_action :set_invoice, only: [:edit, :update, :show, :destroy]
    
    def index
        @invoices = Invoice.all
    end
    
    def unpaid
       @invoice = Invoice.unpaid
       render action: :index
    end
    
    def paid
       @invoice = Invoice.paid
       render action: :index
    end    
    
    def draft
        @invoice = Invoice.draft                    
        render action: :index
    end
    
    def new
       @invoice = Invoice.new
    end
    
    def create
       @invoice = client.invoices.build(invoice_params)
        if @invoice.save
            # format.js - links to create.js.erb
            # format.html - links to create => new.html.erb
            # format.json
            
            
            flash[:notice] = "Successfully saved invoice!"
            redirect_to invoices_path
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
            redirect_to invoices_path
        else
            render 'edit'
        end        
    end
    
    def destroy
        if @invoice.present?
            @invoice.destroy
            flash[:notice] = "Successfully removed invoice!"
            redirect_to invoices_path
        else
            flash[:notice] = "Error removing invoice!"
            redirect_to invoices_path
        end
    end
    
    private
    
    def set_invoice
        @invoice = Invoice.find_by(params[:client_id])
    end
    
    def invoice_params
       params.require(:invoice).permit(:invoice_number, :invoice_date, :due_date, :total_amount, :invoice_note, services_attributes: [:name, :baserate]) 
    end    
end