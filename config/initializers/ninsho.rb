# This hook is use to setup the configuration for creating models through
# rails generators
Ninsho.setup do |config|
  
  # ==> ORM Configuration
  # Load and configure the ORM. Supports :active_record
  require 'ninsho/orm/active_record'


  #Omniauth Providers
  config.omniauth :facebook, "280991208705", "9417ecdd97d6cf8cc9e5b04b73505ee0", :scope => 'email'
  config.omniauth :twitter, "5CwallwAiORYBBPKog", "fu63VVA72ejrkGiICQBrUOXN3AXTL2BdipFtbAEA"
end
