# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::SubscriptionResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the subscription.
        sig { returns(String) }
        attr_accessor :id

        # Determines if the subscription is active or paused.
        sig { returns(T::Boolean) }
        attr_accessor :active

        # When this subscription was created. Formatted as milliseconds from the
        # [Unix epoch](#).
        sig { returns(Time) }
        attr_accessor :created_at

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        sig do
          returns(
            HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        # The identifier of the object type associated with the subscription.
        sig { returns(T.nilable(String)) }
        attr_reader :object_type_id

        sig { params(object_type_id: String).void }
        attr_writer :object_type_id

        # The internal name of the property being monitored for changes. Only applies when
        # `eventType` is `propertyChange`.
        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        # When this subscription was last updated. Formatted as milliseconds from the
        # [Unix epoch](#).
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Complete details for an event subscription.
        sig do
          params(
            id: String,
            active: T::Boolean,
            created_at: Time,
            event_type:
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::OrSymbol,
            object_type_id: String,
            property_name: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the subscription.
          id:,
          # Determines if the subscription is active or paused.
          active:,
          # When this subscription was created. Formatted as milliseconds from the
          # [Unix epoch](#).
          created_at:,
          # Type of event to listen for. Can be one of `create`, `delete`,
          # `deletedForPrivacy`, or `propertyChange`.
          event_type:,
          # The identifier of the object type associated with the subscription.
          object_type_id: nil,
          # The internal name of the property being monitored for changes. Only applies when
          # `eventType` is `propertyChange`.
          property_name: nil,
          # When this subscription was last updated. Formatted as milliseconds from the
          # [Unix epoch](#).
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active: T::Boolean,
              created_at: Time,
              event_type:
                HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol,
              object_type_id: String,
              property_name: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        module EventType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Webhooks::SubscriptionResponse::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPANY_ASSOCIATION_CHANGE =
            T.let(
              :"company.associationChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_CREATION =
            T.let(
              :"company.creation",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_DELETION =
            T.let(
              :"company.deletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_MERGE =
            T.let(
              :"company.merge",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_PROPERTY_CHANGE =
            T.let(
              :"company.propertyChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_RESTORE =
            T.let(
              :"company.restore",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_ASSOCIATION_CHANGE =
            T.let(
              :"contact.associationChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_CREATION =
            T.let(
              :"contact.creation",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_DELETION =
            T.let(
              :"contact.deletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_MERGE =
            T.let(
              :"contact.merge",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_PRIVACY_DELETION =
            T.let(
              :"contact.privacyDeletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_PROPERTY_CHANGE =
            T.let(
              :"contact.propertyChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_RESTORE =
            T.let(
              :"contact.restore",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_CREATION =
            T.let(
              :"conversation.creation",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_DELETION =
            T.let(
              :"conversation.deletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_NEW_MESSAGE =
            T.let(
              :"conversation.newMessage",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_PRIVACY_DELETION =
            T.let(
              :"conversation.privacyDeletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_PROPERTY_CHANGE =
            T.let(
              :"conversation.propertyChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_ASSOCIATION_CHANGE =
            T.let(
              :"deal.associationChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_CREATION =
            T.let(
              :"deal.creation",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_DELETION =
            T.let(
              :"deal.deletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_MERGE =
            T.let(
              :"deal.merge",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_PROPERTY_CHANGE =
            T.let(
              :"deal.propertyChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_RESTORE =
            T.let(
              :"deal.restore",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_ASSOCIATION_CHANGE =
            T.let(
              :"line_item.associationChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_CREATION =
            T.let(
              :"line_item.creation",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_DELETION =
            T.let(
              :"line_item.deletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_MERGE =
            T.let(
              :"line_item.merge",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_PROPERTY_CHANGE =
            T.let(
              :"line_item.propertyChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_RESTORE =
            T.let(
              :"line_item.restore",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_ASSOCIATION_CHANGE =
            T.let(
              :"object.associationChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_CREATION =
            T.let(
              :"object.creation",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_DELETION =
            T.let(
              :"object.deletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_MERGE =
            T.let(
              :"object.merge",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_PROPERTY_CHANGE =
            T.let(
              :"object.propertyChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_RESTORE =
            T.let(
              :"object.restore",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_CREATION =
            T.let(
              :"product.creation",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_DELETION =
            T.let(
              :"product.deletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_MERGE =
            T.let(
              :"product.merge",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_PROPERTY_CHANGE =
            T.let(
              :"product.propertyChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_RESTORE =
            T.let(
              :"product.restore",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_ASSOCIATION_CHANGE =
            T.let(
              :"ticket.associationChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_CREATION =
            T.let(
              :"ticket.creation",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_DELETION =
            T.let(
              :"ticket.deletion",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_MERGE =
            T.let(
              :"ticket.merge",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_PROPERTY_CHANGE =
            T.let(
              :"ticket.propertyChange",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_RESTORE =
            T.let(
              :"ticket.restore",
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
