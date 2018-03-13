Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "oracle/payments-to/all", to: "oracle#all_payments_to_data"
  get "oracle/payments-to/id/:id", to: "oracle#payment_data_by_id"
  get "oracle/payments-to/acct_num/:acct_num", to: "oracle#payment_data_by_acct_num"
end
