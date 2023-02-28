class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    # @results = Geocoder.search(ip)
    notifier = Slack::Notifier.new "https://hooks.slack.com/services/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", channel: "Q4", username: "george"
    message = "Hello world, [check](http://example.com) it <a href='http://example.com'>out</a>"
    Slack::Notifier::Util::LinkFormatter.format(message)
    notifier.ping message        
  end
end
