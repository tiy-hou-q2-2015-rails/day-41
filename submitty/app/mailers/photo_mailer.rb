class PhotoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.photo_mailer.submitted.subject
  #
  def submitted(submittal)
    @submittal = submittal

    mail to: "jesse@theironyard.com"
  end

  def receipt(sale)

    @submittal = sale.product
    mail to: sale.email
  end
end
