namespace :rabbitmq do
  desc "Setup routing"
  task :setup do
    require "bunny"

    conn = Bunny.new
    conn.start

    ch = conn.create_channel

    exchange = ch.fanout("monolit.mails")

    queue = ch.queue("sender.mails", durable: true)

    queue.bind("monolit.mails")

    conn.close
  end
end
