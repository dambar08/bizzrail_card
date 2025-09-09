class Cards::SendEmailNotificationJob < ApplicationJob
  queue_as :low_priority, retry: 10

  def perform(card_id)
    card = Card.find_by(id: card_id)
    return unless card

    NotifyMailer.with(card: card).new_card_email.deliver_now
  end
end
