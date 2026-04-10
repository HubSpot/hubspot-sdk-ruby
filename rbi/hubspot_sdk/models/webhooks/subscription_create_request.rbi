# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SubscriptionCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Determines if the subscription is active or paused. Defaults to false.
        sig { returns(T::Boolean) }
        attr_accessor :active

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        sig do
          returns(
            HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol
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
        # `eventType` is `propertyChange`.
        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig do
          params(
            active: T::Boolean,
            event_type:
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol,
            event_type_name: String,
            object_type_id: String,
            property_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Determines if the subscription is active or paused. Defaults to false.
          active:,
          # Type of event to listen for. Can be one of `create`, `delete`,
          # `deletedForPrivacy`, or `propertyChange`.
          event_type:,
          # The name of the event to listen for. This is used with custom objects to specify
          # custom event types beyond the standard eventType enum values.
          event_type_name: nil,
          # The ID of the object type for the subscription. This can be a standard CRM
          # object (e.g., 'contact', 'company', 'deal') or a custom object ID for custom
          # object subscriptions.
          object_type_id: nil,
          # The internal name of the property to monitor for changes. Only applies when
          # `eventType` is `propertyChange`.
          property_name: nil
        )
        end

        sig do
          override.returns(
            {
              active: T::Boolean,
              event_type:
                HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol,
              event_type_name: String,
              object_type_id: String,
              property_name: String
            }
          )
        end
        def to_hash
        end

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        module EventType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPANY_ASSOCIATION_CHANGE =
            T.let(
              :"company.associationChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_CREATION =
            T.let(
              :"company.creation",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_DELETION =
            T.let(
              :"company.deletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_MERGE =
            T.let(
              :"company.merge",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_PROPERTY_CHANGE =
            T.let(
              :"company.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_RESTORE =
            T.let(
              :"company.restore",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_ASSOCIATION_CHANGE =
            T.let(
              :"contact.associationChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_CREATION =
            T.let(
              :"contact.creation",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_DELETION =
            T.let(
              :"contact.deletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_MERGE =
            T.let(
              :"contact.merge",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_PRIVACY_DELETION =
            T.let(
              :"contact.privacyDeletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_PROPERTY_CHANGE =
            T.let(
              :"contact.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_RESTORE =
            T.let(
              :"contact.restore",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_CREATION =
            T.let(
              :"conversation.creation",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_DELETION =
            T.let(
              :"conversation.deletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_NEW_MESSAGE =
            T.let(
              :"conversation.newMessage",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_PRIVACY_DELETION =
            T.let(
              :"conversation.privacyDeletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_PROPERTY_CHANGE =
            T.let(
              :"conversation.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_ASSOCIATION_CHANGE =
            T.let(
              :"deal.associationChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_CREATION =
            T.let(
              :"deal.creation",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_DELETION =
            T.let(
              :"deal.deletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_MERGE =
            T.let(
              :"deal.merge",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_PROPERTY_CHANGE =
            T.let(
              :"deal.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_RESTORE =
            T.let(
              :"deal.restore",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          EVENT_COMPLETED =
            T.let(
              :"event.completed",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_ASSOCIATION_CHANGE =
            T.let(
              :"line_item.associationChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_CREATION =
            T.let(
              :"line_item.creation",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_DELETION =
            T.let(
              :"line_item.deletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_MERGE =
            T.let(
              :"line_item.merge",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_PROPERTY_CHANGE =
            T.let(
              :"line_item.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_RESTORE =
            T.let(
              :"line_item.restore",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_ASSOCIATION_CHANGE =
            T.let(
              :"object.associationChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_CREATION =
            T.let(
              :"object.creation",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_DELETION =
            T.let(
              :"object.deletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_MERGE =
            T.let(
              :"object.merge",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_PROPERTY_CHANGE =
            T.let(
              :"object.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_RESTORE =
            T.let(
              :"object.restore",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_CREATION =
            T.let(
              :"product.creation",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_DELETION =
            T.let(
              :"product.deletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_MERGE =
            T.let(
              :"product.merge",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_PROPERTY_CHANGE =
            T.let(
              :"product.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_RESTORE =
            T.let(
              :"product.restore",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_ASSOCIATION_CHANGE =
            T.let(
              :"ticket.associationChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_CREATION =
            T.let(
              :"ticket.creation",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_DELETION =
            T.let(
              :"ticket.deletion",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_MERGE =
            T.let(
              :"ticket.merge",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_PROPERTY_CHANGE =
            T.let(
              :"ticket.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_RESTORE =
            T.let(
              :"ticket.restore",
              HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
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
