class FeedbackMailer < ActionMailer::Base
  layout "feedback_mail_template"
  default to: ENV['SUPPORT_TEAM_EMAIL']

  def feed_us(data = {})
    @title = "Feedback para Kelisto.es!"
    @header_icon = assets_path('images/header_logo.png')
    @message = data[:message]
    @user_email = data[:from]

    mail from: @user_email, subject: "Feedback de '#{@user_email}'!"
  end

  private
  def assets_path(path)
    ["https://s3-eu-west-1.amazonaws.com/kelisto-mailing/seguros", path].join("/")
  end
end