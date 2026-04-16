# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SubscriptionResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the subscription, represented as an integer.
        sig { returns(String) }
        attr_accessor :id

        # A boolean indicating whether the subscription is currently active.
        sig { returns(T::Boolean) }
        attr_accessor :active

        # The date and time when the subscription was created, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of event that triggers the subscription. Valid values include various
        # object changes such as 'contact.propertyChange', 'deal.creation', and
        # 'ticket.deletion'.
        sig do
          returns(
            HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        # A descriptive name for the event type.
        sig { returns(T.nilable(String)) }
        attr_reader :event_type_name

        sig { params(event_type_name: String).void }
        attr_writer :event_type_name

        # The identifier for the object type associated with the subscription, represented
        # as a string.
        sig { returns(T.nilable(String)) }
        attr_reader :object_type_id

        sig { params(object_type_id: String).void }
        attr_writer :object_type_id

        # The name of the property associated with the event, if applicable.
        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        # The date and time when the subscription was last updated, in ISO 8601 format.
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
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::OrSymbol,
            event_type_name: String,
            object_type_id: String,
            property_name: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the subscription, represented as an integer.
          id:,
          # A boolean indicating whether the subscription is currently active.
          active:,
          # The date and time when the subscription was created, in ISO 8601 format.
          created_at:,
          # The type of event that triggers the subscription. Valid values include various
          # object changes such as 'contact.propertyChange', 'deal.creation', and
          # 'ticket.deletion'.
          event_type:,
          # A descriptive name for the event type.
          event_type_name: nil,
          # The identifier for the object type associated with the subscription, represented
          # as a string.
          object_type_id: nil,
          # The name of the property associated with the event, if applicable.
          property_name: nil,
          # The date and time when the subscription was last updated, in ISO 8601 format.
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
                HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol,
              event_type_name: String,
              object_type_id: String,
              property_name: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The type of event that triggers the subscription. Valid values include various
        # object changes such as 'contact.propertyChange', 'deal.creation', and
        # 'ticket.deletion'.
        module EventType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Webhooks::SubscriptionResponse::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPANY_ASSOCIATION_CHANGE =
            T.let(
              :"company.associationChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_CREATION =
            T.let(
              :"company.creation",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_DELETION =
            T.let(
              :"company.deletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_MERGE =
            T.let(
              :"company.merge",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_PROPERTY_CHANGE =
            T.let(
              :"company.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_RESTORE =
            T.let(
              :"company.restore",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_ASSOCIATION_CHANGE =
            T.let(
              :"contact.associationChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_CREATION =
            T.let(
              :"contact.creation",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_DELETION =
            T.let(
              :"contact.deletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_MERGE =
            T.let(
              :"contact.merge",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_PRIVACY_DELETION =
            T.let(
              :"contact.privacyDeletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_PROPERTY_CHANGE =
            T.let(
              :"contact.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_RESTORE =
            T.let(
              :"contact.restore",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_CREATION =
            T.let(
              :"conversation.creation",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_DELETION =
            T.let(
              :"conversation.deletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_NEW_MESSAGE =
            T.let(
              :"conversation.newMessage",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_PRIVACY_DELETION =
            T.let(
              :"conversation.privacyDeletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_PROPERTY_CHANGE =
            T.let(
              :"conversation.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_ASSOCIATION_CHANGE =
            T.let(
              :"deal.associationChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_CREATION =
            T.let(
              :"deal.creation",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_DELETION =
            T.let(
              :"deal.deletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_MERGE =
            T.let(
              :"deal.merge",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_PROPERTY_CHANGE =
            T.let(
              :"deal.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_RESTORE =
            T.let(
              :"deal.restore",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          EVENT_COMPLETED =
            T.let(
              :"event.completed",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_ASSOCIATION_CHANGE =
            T.let(
              :"line_item.associationChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_CREATION =
            T.let(
              :"line_item.creation",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_DELETION =
            T.let(
              :"line_item.deletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_MERGE =
            T.let(
              :"line_item.merge",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_PROPERTY_CHANGE =
            T.let(
              :"line_item.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_RESTORE =
            T.let(
              :"line_item.restore",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_ASSOCIATION_CHANGE =
            T.let(
              :"object.associationChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_CREATION =
            T.let(
              :"object.creation",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_DELETION =
            T.let(
              :"object.deletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_MERGE =
            T.let(
              :"object.merge",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_PROPERTY_CHANGE =
            T.let(
              :"object.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_RESTORE =
            T.let(
              :"object.restore",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_CREATION =
            T.let(
              :"product.creation",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_DELETION =
            T.let(
              :"product.deletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_MERGE =
            T.let(
              :"product.merge",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_PROPERTY_CHANGE =
            T.let(
              :"product.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_RESTORE =
            T.let(
              :"product.restore",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_ASSOCIATION_CHANGE =
            T.let(
              :"ticket.associationChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_CREATION =
            T.let(
              :"ticket.creation",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_DELETION =
            T.let(
              :"ticket.deletion",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_MERGE =
            T.let(
              :"ticket.merge",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_PROPERTY_CHANGE =
            T.let(
              :"ticket.propertyChange",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_RESTORE =
            T.let(
              :"ticket.restore",
              HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::SubscriptionResponse::EventType::TaggedSymbol
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
