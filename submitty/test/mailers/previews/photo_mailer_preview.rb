# Preview all emails at http://localhost:3000/rails/mailers/photo_mailer
class PhotoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/photo_mailer/submitted
  def submitted
    submittal = Submittal.create! remote_photo_url: "https://mozorg.cdn.mozilla.net/media/img/styleguide/identity/firefox/guidelines-logo.png"
    PhotoMailer.submitted(submittal)
  end

end
