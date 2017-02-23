class RefundsController < ApplicationController
  load_and_authorize_resource
  before_action :set_user
  def index
    @refunds = Refund.all
  end

  def show
    @refund = Refund.find(params[:id])
  end

  def new
    @refund = Refund.new
  end

  def edit
    @refund = @user.refunds.find(params[:id])
  end

  def create
    @refund = @user.refunds.create(refund_params)

    if @refund.save
      redirect_to user_refunds_path
    else
      render 'new'
    end
  end

  def update
    @refund = Refund.find(params[:id])

    if @refund.update(refund_params)
      redirect_to user_refund_path
    else
      render 'edit'
    end
  end

  def destroy
    @refund = @user.refunds.find(params[:id])
    @refund.destroy

    redirect_to user_refunds_path
  end

  private
    def set_user
      @user = current_user
    end
    def refund_params
      params.require(:refund).permit(:value, :description, :status, :quantidade_moedas, :photo)
    end
end
