class OracleController < ApplicationController
  def initialize
    @faker_number = Faker::Number
  end

  def all_payments_to_data
    render json: OraclePaymentData.all
  end

  def payment_data_by_id
    render json: OraclePaymentData.where(id: params[:id])
  end

  def payment_data_by_acct_num
    OraclePaymentData.delete_all
    OraclePaymentData.create!(acct_num: params[:acct_num], active: true, id: @faker_number.number(4))
    data = OraclePaymentData.where(acct_num: params[:acct_num]).first
    render json: {body: {acct_num: data[:acct_num], active: data[:active], id: data[:id]}}
  end
end
