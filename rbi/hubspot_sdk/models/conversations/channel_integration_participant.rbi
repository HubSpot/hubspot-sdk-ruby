# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ChannelIntegrationParticipant < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ChannelIntegrationParticipant,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Conversations::PublicDeliveryIdentifier) }
        attr_reader :delivery_identifier

        sig do
          params(
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash
          ).void
        end
        attr_writer :delivery_identifier

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(delivery_identifier:, name: nil)
        end

        sig do
          override.returns(
            {
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier,
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
