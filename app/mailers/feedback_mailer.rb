class FeedbackMailer < ActionMailer::Base
  layout "feedback_mail"
  default to: "support.team@kelisto.es"

  def feed_us(data = {})
    @message = data[:message]
    mail from: data[:from], subject: "Feedback!"
  end
end