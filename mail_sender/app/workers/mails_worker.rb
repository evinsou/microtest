class MailsWorker
  include Sneakers::Worker

  from_queue "sender.posts", env: nil

  def work(raw_mail)
    RecentPosts.push(raw_mail)
    ApplicationMailer.send_mail(raw_mail[:subject], raw_mail[:body]).deliver_now
    ConfirmMailSent.call(raw_mail.slice(:counter_id))
    ack! 
  end
end
