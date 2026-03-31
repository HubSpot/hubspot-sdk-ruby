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

        sig { returns(T.nilable(String)) }
        attr_reader :account_name

        sig { params(account_name: String).void }
        attr_writer :account_name

        sig do
          returns(
            T.nilable(HubspotSDK::Conversations::PublicDeliveryIdentifier)
          )
        end
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
        def self.new(account_name: nil, delivery_identifier: nil)
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
