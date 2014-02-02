class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  #making available methods to  views , make them as helper method
  helper_method :sort_column, :direction_column
  # GET /orders
  # GET /orders.json
  def index
      #@orders = Order.order(sort_column + " " + direction_column).paginate(:page => params[:page], :per_page => 5)
      #search, sort, pagination
      @orders = Order.search(params[:search]).order(sort_column + " " + direction_column).paginate(:page => params[:page], :per_page => 5)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    #multiple usage
    def sort_column
      #params[:sort] ||= 'name'
      #Now to save from sql injection use below one
      Order.column_names.include?(params[:sort]) ? params[:sort] : "Number"
    end

    def direction_column
      #params[:direction] ||= 'asc'
      #Now to save from sql injection use below one
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:number, :purchased, :shipping, :price, :name)
    end
end
