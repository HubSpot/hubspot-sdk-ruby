# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicSender < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicSender,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :actor_id

        sig { params(actor_id: String).void }
        attr_writer :actor_id

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

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :sender_field

        sig { params(sender_field: String).void }
        attr_writer :sender_field

        sig do
          params(
            actor_id: String,
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
            name: String,
            sender_field: String
          ).returns(T.attached_class)
        end
        def self.new(
          actor_id: nil,
          delivery_identifier: nil,
          name: nil,
          sender_field: nil
        )
        end

        sig do
          override.returns(
            {
              actor_id: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier,
              name: String,
              sender_field: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
