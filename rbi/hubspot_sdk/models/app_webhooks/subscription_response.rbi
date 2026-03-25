# typed: strong

module HubspotSDK
  module Models
    module AppWebhooks
      class SubscriptionResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::AppWebhooks::SubscriptionResponse,
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
            HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        sig { returns(T.nilable(String)) }
        attr_reader :event_type_name

        sig { params(event_type_name: String).void }
        attr_writer :event_type_name

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

        sig do
          params(
            id: String,
            active: T::Boolean,
            created_at: Time,
            event_type:
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::OrSymbol,
            event_type_name: String,
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
          event_type_name: nil,
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
                HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol,
              event_type_name: String,
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
                HubspotSDK::AppWebhooks::SubscriptionResponse::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPANY_ASSOCIATION_CHANGE =
            T.let(
              :"company.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_CREATION =
            T.let(
              :"company.creation",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_DELETION =
            T.let(
              :"company.deletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_MERGE =
            T.let(
              :"company.merge",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_PROPERTY_CHANGE =
            T.let(
              :"company.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          COMPANY_RESTORE =
            T.let(
              :"company.restore",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_ASSOCIATION_CHANGE =
            T.let(
              :"contact.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_CREATION =
            T.let(
              :"contact.creation",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_DELETION =
            T.let(
              :"contact.deletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_MERGE =
            T.let(
              :"contact.merge",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_PRIVACY_DELETION =
            T.let(
              :"contact.privacyDeletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_PROPERTY_CHANGE =
            T.let(
              :"contact.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONTACT_RESTORE =
            T.let(
              :"contact.restore",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_CREATION =
            T.let(
              :"conversation.creation",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_DELETION =
            T.let(
              :"conversation.deletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_NEW_MESSAGE =
            T.let(
              :"conversation.newMessage",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_PRIVACY_DELETION =
            T.let(
              :"conversation.privacyDeletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          CONVERSATION_PROPERTY_CHANGE =
            T.let(
              :"conversation.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_ASSOCIATION_CHANGE =
            T.let(
              :"deal.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_CREATION =
            T.let(
              :"deal.creation",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_DELETION =
            T.let(
              :"deal.deletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_MERGE =
            T.let(
              :"deal.merge",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_PROPERTY_CHANGE =
            T.let(
              :"deal.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          DEAL_RESTORE =
            T.let(
              :"deal.restore",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          EVENT_COMPLETED =
            T.let(
              :"event.completed",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_ASSOCIATION_CHANGE =
            T.let(
              :"line_item.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_CREATION =
            T.let(
              :"line_item.creation",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_DELETION =
            T.let(
              :"line_item.deletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_MERGE =
            T.let(
              :"line_item.merge",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_PROPERTY_CHANGE =
            T.let(
              :"line_item.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          LINE_ITEM_RESTORE =
            T.let(
              :"line_item.restore",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_ASSOCIATION_CHANGE =
            T.let(
              :"object.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_CREATION =
            T.let(
              :"object.creation",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_DELETION =
            T.let(
              :"object.deletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_MERGE =
            T.let(
              :"object.merge",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_PROPERTY_CHANGE =
            T.let(
              :"object.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          OBJECT_RESTORE =
            T.let(
              :"object.restore",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_CREATION =
            T.let(
              :"product.creation",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_DELETION =
            T.let(
              :"product.deletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_MERGE =
            T.let(
              :"product.merge",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_PROPERTY_CHANGE =
            T.let(
              :"product.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          PRODUCT_RESTORE =
            T.let(
              :"product.restore",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_ASSOCIATION_CHANGE =
            T.let(
              :"ticket.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_CREATION =
            T.let(
              :"ticket.creation",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_DELETION =
            T.let(
              :"ticket.deletion",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_MERGE =
            T.let(
              :"ticket.merge",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_PROPERTY_CHANGE =
            T.let(
              :"ticket.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )
          TICKET_RESTORE =
            T.let(
              :"ticket.restore",
              HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::AppWebhooks::SubscriptionResponse::EventType::TaggedSymbol
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
