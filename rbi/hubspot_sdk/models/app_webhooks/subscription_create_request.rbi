# typed: strong

module HubspotSDK
  module Models
    module AppWebhooks
      class SubscriptionCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Determines if the subscription is active or paused. Defaults to false.
        sig { returns(T::Boolean) }
        attr_accessor :active

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        sig do
          returns(
            HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::OrSymbol
          )
        end
        attr_accessor :event_type

        sig { returns(T.nilable(String)) }
        attr_reader :event_type_name

        sig { params(event_type_name: String).void }
        attr_writer :event_type_name

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
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::OrSymbol,
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
          event_type_name: nil,
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
                HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::OrSymbol,
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPANY_ASSOCIATION_CHANGE =
            T.let(
              :"company.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_CREATION =
            T.let(
              :"company.creation",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_DELETION =
            T.let(
              :"company.deletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_MERGE =
            T.let(
              :"company.merge",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_PROPERTY_CHANGE =
            T.let(
              :"company.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_RESTORE =
            T.let(
              :"company.restore",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_ASSOCIATION_CHANGE =
            T.let(
              :"contact.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_CREATION =
            T.let(
              :"contact.creation",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_DELETION =
            T.let(
              :"contact.deletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_MERGE =
            T.let(
              :"contact.merge",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_PRIVACY_DELETION =
            T.let(
              :"contact.privacyDeletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_PROPERTY_CHANGE =
            T.let(
              :"contact.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_RESTORE =
            T.let(
              :"contact.restore",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_CREATION =
            T.let(
              :"conversation.creation",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_DELETION =
            T.let(
              :"conversation.deletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_NEW_MESSAGE =
            T.let(
              :"conversation.newMessage",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_PRIVACY_DELETION =
            T.let(
              :"conversation.privacyDeletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_PROPERTY_CHANGE =
            T.let(
              :"conversation.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_ASSOCIATION_CHANGE =
            T.let(
              :"deal.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_CREATION =
            T.let(
              :"deal.creation",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_DELETION =
            T.let(
              :"deal.deletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_MERGE =
            T.let(
              :"deal.merge",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_PROPERTY_CHANGE =
            T.let(
              :"deal.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_RESTORE =
            T.let(
              :"deal.restore",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          EVENT_COMPLETED =
            T.let(
              :"event.completed",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_ASSOCIATION_CHANGE =
            T.let(
              :"line_item.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_CREATION =
            T.let(
              :"line_item.creation",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_DELETION =
            T.let(
              :"line_item.deletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_MERGE =
            T.let(
              :"line_item.merge",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_PROPERTY_CHANGE =
            T.let(
              :"line_item.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_RESTORE =
            T.let(
              :"line_item.restore",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_ASSOCIATION_CHANGE =
            T.let(
              :"object.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_CREATION =
            T.let(
              :"object.creation",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_DELETION =
            T.let(
              :"object.deletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_MERGE =
            T.let(
              :"object.merge",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_PROPERTY_CHANGE =
            T.let(
              :"object.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_RESTORE =
            T.let(
              :"object.restore",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_CREATION =
            T.let(
              :"product.creation",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_DELETION =
            T.let(
              :"product.deletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_MERGE =
            T.let(
              :"product.merge",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_PROPERTY_CHANGE =
            T.let(
              :"product.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_RESTORE =
            T.let(
              :"product.restore",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_ASSOCIATION_CHANGE =
            T.let(
              :"ticket.associationChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_CREATION =
            T.let(
              :"ticket.creation",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_DELETION =
            T.let(
              :"ticket.deletion",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_MERGE =
            T.let(
              :"ticket.merge",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_PROPERTY_CHANGE =
            T.let(
              :"ticket.propertyChange",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_RESTORE =
            T.let(
              :"ticket.restore",
              HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
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
