class ReceiverController < ApplicationController
  def create
    attrs = permitted_params
    counter = Counter.create
    attrs[:counter_id] = counter.id
    Publisher.publish('mails', attrs)
    render nothing: true
  end

  def update
    Counter.find(params(:id)).sent!
    render nothing: true
  end

  private

  def permitted_params
    params.require(:email).permit(:address, :subject, :body)
  end
end
