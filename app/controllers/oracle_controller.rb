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
    data = {id: 1, acct_num: "5#{@faker_number.number(6)}", active: true}
    render json: data.to_json
  end
end
