# encoding: UTF-8
require 'open-uri'
require 'nokogiri'

uri = 'http://trafikinfo.bane.dk/TrafikInformation/AfgangAnkomst/Ankomst/VAL/Fjerntog/UdvidetVisning'

SCHEDULER.every '30s', :first_in => 0 do |job|

  source   = open(uri).read()
  dom      = Nokogiri::HTML.parse(source)
  table    = dom.css('table#ankomsttabel')


  send_event('demo-web-scraper-1', {value: table})
end