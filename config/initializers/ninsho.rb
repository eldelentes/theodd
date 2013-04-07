# This hook is use to setup the configuration for creating models through
# rails generators
Ninsho.setup do |config|
  
  # ==> ORM Configuration
  # Load and configure the ORM. Supports :active_record
  require 'ninsho/orm/active_record'


  #Omniauth Providers
  config.omniauth :facebook, "285613271535", "0bf08d306d73b790673295b7612e9f71", :scope => 'email'
end
