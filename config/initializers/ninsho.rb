# This hook is use to setup the configuration for creating models through
# rails generators
Ninsho.setup do |config|
  
  # ==> ORM Configuration
  # Load and configure the ORM. Supports :active_record
  require 'ninsho/orm/active_record'


  #Omniauth Providers
  config.omniauth :facebook, "337800480942", "0e509288b51eb92aa576aa3a0c8f41ec", :scope => 'email,publish_stream'
end
