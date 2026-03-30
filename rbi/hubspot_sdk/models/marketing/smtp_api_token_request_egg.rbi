# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class SmtpAPITokenRequestEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::SmtpAPITokenRequestEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A name for the campaign tied to the SMTP API token.
        sig { returns(String) }
        attr_accessor :campaign_name

        # Indicates whether a contact should be created for email recipients.
        sig { returns(T::Boolean) }
        attr_accessor :create_contact

        sig do
          params(campaign_name: String, create_contact: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(
          # A name for the campaign tied to the SMTP API token.
          campaign_name:,
          # Indicates whether a contact should be created for email recipients.
          create_contact:
        )
        end

        sig do
          override.returns(
            { campaign_name: String, create_contact: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
