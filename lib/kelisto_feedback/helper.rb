module KelistoFeedback
  module ViewHelpers
    def kelisto_feedback
      @user_email = current_user.email if current_user.present? && current_user.respond_to?(:email)
      
      content_tag(:div, nil, id: "feedback-handle") +
      render('feedbacks/feedbox')
    end
  end
end