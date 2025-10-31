# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Transactional
        sig do
          returns(HubspotSDK::Resources::Marketing::Transactional::SingleEmail)
        end
        attr_reader :single_email

        sig do
          returns(HubspotSDK::Resources::Marketing::Transactional::SmtpTokens)
        end
        attr_reader :smtp_tokens

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
