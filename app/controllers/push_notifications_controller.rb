
class PushNotificationsController < ApplicationController
  def create
    Subscription.all.each do |subscription|
      Webpush.payload_send(
        endpoint: subscription["endpoint"],
        p256dh: subscription["p256dh"],
        auth: subscription["auth"],
        api_key: "AIzaSyBrtH4xv8gqlhiUlc4dD3zl9jUbKrc5VGg"
      )
    end
    head :ok
  end
end