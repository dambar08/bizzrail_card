# Preview all emails at http://localhost:3000/rails/mailers/notify_mailer
class NotifyMailerPreview < ActionMailer::Preview
  def new_card_email
    card = Card.find(1)
    NotifyMailer.with(card: card).new_card_email
  end
end
