# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelAccountStagingTokenUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicChannelAccountStagingTokenUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account_name

        sig { returns(HubspotSDK::Conversations::PublicDeliveryIdentifier) }
        attr_reader :delivery_identifier

        sig do
          params(
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash
          ).void
        end
        attr_writer :delivery_identifier

        sig do
          params(
            account_name: String,
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account_name:, delivery_identifier:)
        end

        sig do
          override.returns(
            {
              account_name: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
