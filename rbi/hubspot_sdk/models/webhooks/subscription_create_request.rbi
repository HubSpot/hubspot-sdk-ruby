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

        # A boolean indicating whether the subscription is active. This field is required.
        sig { returns(T::Boolean) }
        attr_accessor :active

        # A string representing the type of event to subscribe to. Valid values include
        # various object changes such as 'contact.propertyChange', 'deal.creation', and
        # 'conversation.newMessage'.
        sig do
          returns(
            HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol
          )
        end
        attr_accessor :event_type

        # A string that provides a human-readable name for the event type. This is
        # optional.
        sig { returns(T.nilable(String)) }
        attr_reader :event_type_name

        sig { params(event_type_name: String).void }
        attr_writer :event_type_name

        # A string representing the identifier of the object type for which the
        # subscription is being created. This is optional.
        sig { returns(T.nilable(String)) }
        attr_reader :object_type_id

        sig { params(object_type_id: String).void }
        attr_writer :object_type_id

        # A string indicating the name of the property that triggers the event. This is
        # optional and used when subscribing to property change events.
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
          # A boolean indicating whether the subscription is active. This field is required.
          active:,
          # A string representing the type of event to subscribe to. Valid values include
          # various object changes such as 'contact.propertyChange', 'deal.creation', and
          # 'conversation.newMessage'.
          event_type:,
          # A string that provides a human-readable name for the event type. This is
          # optional.
          event_type_name: nil,
          # A string representing the identifier of the object type for which the
          # subscription is being created. This is optional.
          object_type_id: nil,
          # A string indicating the name of the property that triggers the event. This is
          # optional and used when subscribing to property change events.
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

        # A string representing the type of event to subscribe to. Valid values include
        # various object changes such as 'contact.propertyChange', 'deal.creation', and
        # 'conversation.newMessage'.
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
