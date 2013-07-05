require 'cinch'
require 'uri'
require 'nokogiri'
require 'net/https'

class Jira
  include Cinch::Plugin

  listen_to :message


  def listen(m)

    rx = configatron.jira.regex
    if md = m.message.match(rx)
      url = "#{configatron.jira.url}#{m.message.upcase}"
      response = httpget url
      details = Nokogiri::HTML response
      thingies = details.css('title')[0].text.split(" ")
      return if thingies.include? "Navigator"
      thingies.shift
      3.times { thingies.pop }
      m.reply "#{url} // #{thingies.join(" ")}"
    end


  end

  def httpget(uri)
    uri = URI.parse uri
    http = Net::HTTP.new uri.host, uri.port
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new uri.request_uri
    request.basic_auth configatron.jira.user, configatron.jira.pass
    response = http.request request
    response.body
  end



end
