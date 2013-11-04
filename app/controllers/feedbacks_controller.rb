class FeedbacksController < ApplicationController
  respond_to :json

  def create
    mail_data = params.slice(:from, :message)
    FeedbackMailer.feed_us(mail_data).deliver
    
    render json: { message: "Email enviado." }.to_json, 
           status: :created
  rescue
    render json: { message: "Imposible enviar email!" }.to_json, 
           status: :unprocessable_entity
  end
end