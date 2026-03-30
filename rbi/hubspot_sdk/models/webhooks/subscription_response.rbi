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

        # The unique ID of the webhook subscription.
        sig { returns(String) }
        attr_accessor :id

        # Whether the subscription is active or paused. If true, the subscription will
        # send webhook notifications. If false, the subscription is paused and will not
        # send notifications.
        sig { returns(T::Boolean) }
        attr_accessor :active

        # The timestamp when the webhook subscription was created, in ISO 8601 format
        # (e.g., 2020-02-29T12:30:00Z).
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of event to listen for. Accepted values include contact.creation,
        # contact.deletion, contact.propertyChange, and similar event types for other CRM
        # objects and custom objects.
        sig do
          returns(
            HubspotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        # The name of the event to listen for. This is used with custom objects to specify
        # custom event types beyond the standard eventType enum values.
        sig { returns(T.nilable(String)) }
        attr_reader :event_type_name

        sig { params(event_type_name: String).void }
        attr_writer :event_type_name

        # The ID of the object type for the subscription. This can be a standard CRM
        # object (e.g., 'contact', 'company', 'deal') or a custom object ID for custom
        # object subscriptions.
        sig { returns(T.nilable(String)) }
        attr_reader :object_type_id

        sig { params(object_type_id: String).void }
        attr_writer :object_type_id

        # The internal name of the property to monitor for changes. Only applies when
        # eventType is propertyChange.
        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        # The timestamp when the webhook subscription was last updated, in ISO 8601 format
        # (e.g., 2020-02-29T12:30:00Z).
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            active: T::Boolean,
            created_at: Time,
            event_type:
              HubspotSDK::Webhooks::SubscriptionResponse::EventType::OrSymbol,
            event_type_name: String,
            object_type_id: String,
            property_name: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the webhook subscription.
          id:,
          # Whether the subscription is active or paused. If true, the subscription will
          # send webhook notifications. If false, the subscription is paused and will not
          # send notifications.
          active:,
          # The timestamp when the webhook subscription was created, in ISO 8601 format
          # (e.g., 2020-02-29T12:30:00Z).
          created_at:,
          # The type of event to listen for. Accepted values include contact.creation,
          # contact.deletion, contact.propertyChange, and similar event types for other CRM
          # objects and custom objects.
          event_type:,
          # The name of the event to listen for. This is used with custom objects to specify
          # custom event types beyond the standard eventType enum values.
          event_type_name: nil,
          # The ID of the object type for the subscription. This can be a standard CRM
          # object (e.g., 'contact', 'company', 'deal') or a custom object ID for custom
          # object subscriptions.
          object_type_id: nil,
          # The internal name of the property to monitor for changes. Only applies when
          # eventType is propertyChange.
          property_name: nil,
          # The timestamp when the webhook subscription was last updated, in ISO 8601 format
          # (e.g., 2020-02-29T12:30:00Z).
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
              event_type_name: String,
              object_type_id: String,
              property_name: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The type of event to listen for. Accepted values include contact.creation,
        # contact.deletion, contact.propertyChange, and similar event types for other CRM
        # objects and custom objects.
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
          EVENT_COMPLETED =
            T.let(
              :"event.completed",
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
