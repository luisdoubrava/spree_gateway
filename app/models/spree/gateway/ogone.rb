module Spree
  class Gateway::Ogone < Gateway
    preference :login, :string
    preference :user, :string
    preference :password, :string
    preference :signature, :string
    perference :signature_encryptor, :string
    
    attr_accessible :login, :user, :password, :signature, :signature_encryptor
    
    def provider_class
      ActiveMerchant::Billing::OgoneGateway
    end
  end
end
