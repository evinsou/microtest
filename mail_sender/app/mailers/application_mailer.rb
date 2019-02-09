class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def send_mail(subject, body)
    mail(
      to: 'some.address@mail.com',
      subject: subject,
      body: body
    )
  end
end
