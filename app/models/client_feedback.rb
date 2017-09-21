class ClientFeedback < ApplicationRecord

  mount_uploader :avatar, AvatarUploader
  scope :approved?, -> { where(approved: true) }

  after_create :send_mail_to_admin

  def full_name
    [try(:first_name).camelize, try(:last_name).camelize].compact.join(' ')
  end

  def city_state
    [try(:city).camelize, try(:state).camelize].compact.join(', ')
  end

  def send_mail_to_admin
    FeedbackMailer.send_feedback(self).deliver_now!
  end

end
