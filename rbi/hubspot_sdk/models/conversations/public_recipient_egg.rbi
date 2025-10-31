# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicRecipientEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicRecipientEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Conversations::PublicDeliveryIdentifier])
        end
        attr_accessor :delivery_identifiers

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
        attr_reader :recipient_field

        sig { params(recipient_field: String).void }
        attr_writer :recipient_field

        sig do
          params(
            delivery_identifiers:
              T::Array[
                HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash
              ],
            actor_id: String,
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
            name: String,
            recipient_field: String
          ).returns(T.attached_class)
        end
        def self.new(
          delivery_identifiers:,
          actor_id: nil,
          delivery_identifier: nil,
          name: nil,
          recipient_field: nil
        )
        end

        sig do
          override.returns(
            {
              delivery_identifiers:
                T::Array[HubspotSDK::Conversations::PublicDeliveryIdentifier],
              actor_id: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier,
              name: String,
              recipient_field: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
