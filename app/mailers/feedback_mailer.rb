class FeedbackMailer < ApplicationMailer
  def send_feedback(feedback)
    @feedback = feedback
    mail(to: "portal.superadmin@itbeezone.in", from: @feedback.email, subject: "Client Feedback")
  end
end
