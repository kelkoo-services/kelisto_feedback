class FeedbacksController < ApplicationController
  respond_to :json

  def create
    mail_data = params.slice(:from, :message)
    FeedbackMailer.feed_us(mail_data).deliver

    render json: { message: "Email sent :)" }.to_json, 
           status: :created
  rescue
    render json: { message: "Cannot send email!!" }.to_json, 
           status: :unprocessable_entity
  end
end