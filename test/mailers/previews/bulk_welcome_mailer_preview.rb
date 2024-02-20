# Preview all emails at http://localhost:3000/rails/mailers/bulk_welcome_mailer
class BulkWelcomeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/bulk_welcome_mailer/sendmail
  def sendmail
    BulkWelcomeMailer.sendmail
  end

end
