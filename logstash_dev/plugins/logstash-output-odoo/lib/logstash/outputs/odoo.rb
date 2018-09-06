# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"
require "xmlrpc/client"

# An odoo output that does nothing.
class LogStash::Outputs::Odoo < LogStash::Outputs::Base
  config_name "odoo"

  # The API url call
  @url = "https://odoo.dkhub.io"

  # The odoo bd name
  @db = "DKHub"

  #Set de odoo user name
  @username = "acastillo@nanobytes.es"
  
  #Set de odoo user password
  @password = "$DkHub2018."

  public
  def register
    common = XMLRPC::Client.new2("https://odoo.dkhub.io/xmlrpc/2/common")
    puts common.call('version')
    #uid = common.call('authenticate', @db, @username, @password, {})
   
   
  end # def register

  public
  def receive(event)
    return "Event received"
  end # def event
end # class LogStash::Outputs::Odoo
