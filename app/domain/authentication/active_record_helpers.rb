module Authentication
  module ActiveRecordHelpers

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def find_for_oauth(auth)
        puts ">>>>>>>>>>In Side find_for_oauth>>>>>>>>>>>>>>>>>>>>>>>>"
        puts auth.inspect
        puts ">>>>>>>>>>In Side find_for_oauth>>>>>>>>>>>>>>>>>>>>>>>>"
        record = where(provider: auth.provider, uid: auth.uid.to_s).first
        record || create(provider: auth.provider, uid: auth.uid, email: auth.info.email, password: Devise.friendly_token[0,20])
      end
    end
  end
end
