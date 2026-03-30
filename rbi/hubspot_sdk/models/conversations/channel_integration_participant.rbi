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

        sig { returns(T.nilable(String)) }
        attr_reader :sender_actor_id

        sig { params(sender_actor_id: String).void }
        attr_writer :sender_actor_id

        sig do
          params(
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
            name: String,
            sender_actor_id: String
          ).returns(T.attached_class)
        end
        def self.new(delivery_identifier:, name: nil, sender_actor_id: nil)
        end

        sig do
          override.returns(
            {
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier,
              name: String,
              sender_actor_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
