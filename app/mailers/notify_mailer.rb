class NotifyMailer < ApplicationMailer
  def new_card_email
    @card = params[:card]
    @user = @card.user
    @unsubscribe = generate_unsubscribe_token(@user.id, :email_card_notifications)

    mail(to: @user.email, subject: I18n.t("mailers.notify_mailer.new_card"))
  end
end
