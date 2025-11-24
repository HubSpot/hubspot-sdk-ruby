# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::SubscriptionCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        sig do
          returns(
            HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol
          )
        end
        attr_accessor :event_type

        # Determines if the subscription is active or paused. Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active

        sig { params(active: T::Boolean).void }
        attr_writer :active

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

        # New webhook settings for an app.
        sig do
          params(
            event_type:
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol,
            active: T::Boolean,
            object_type_id: String,
            property_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of event to listen for. Can be one of `create`, `delete`,
          # `deletedForPrivacy`, or `propertyChange`.
          event_type:,
          # Determines if the subscription is active or paused. Defaults to false.
          active: nil,
          object_type_id: nil,
          # The internal name of the property to monitor for changes. Only applies when
          # `eventType` is `propertyChange`.
          property_name: nil
        )
        end

        sig do
          override.returns(
            {
              event_type:
                HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol,
              active: T::Boolean,
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
                HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPANY_ASSOCIATION_CHANGE =
            T.let(
              :"company.associationChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_CREATION =
            T.let(
              :"company.creation",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_DELETION =
            T.let(
              :"company.deletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_MERGE =
            T.let(
              :"company.merge",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_PROPERTY_CHANGE =
            T.let(
              :"company.propertyChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          COMPANY_RESTORE =
            T.let(
              :"company.restore",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_ASSOCIATION_CHANGE =
            T.let(
              :"contact.associationChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_CREATION =
            T.let(
              :"contact.creation",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_DELETION =
            T.let(
              :"contact.deletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_MERGE =
            T.let(
              :"contact.merge",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_PRIVACY_DELETION =
            T.let(
              :"contact.privacyDeletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_PROPERTY_CHANGE =
            T.let(
              :"contact.propertyChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONTACT_RESTORE =
            T.let(
              :"contact.restore",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_CREATION =
            T.let(
              :"conversation.creation",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_DELETION =
            T.let(
              :"conversation.deletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_NEW_MESSAGE =
            T.let(
              :"conversation.newMessage",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_PRIVACY_DELETION =
            T.let(
              :"conversation.privacyDeletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          CONVERSATION_PROPERTY_CHANGE =
            T.let(
              :"conversation.propertyChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_ASSOCIATION_CHANGE =
            T.let(
              :"deal.associationChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_CREATION =
            T.let(
              :"deal.creation",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_DELETION =
            T.let(
              :"deal.deletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_MERGE =
            T.let(
              :"deal.merge",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_PROPERTY_CHANGE =
            T.let(
              :"deal.propertyChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          DEAL_RESTORE =
            T.let(
              :"deal.restore",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_ASSOCIATION_CHANGE =
            T.let(
              :"line_item.associationChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_CREATION =
            T.let(
              :"line_item.creation",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_DELETION =
            T.let(
              :"line_item.deletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_MERGE =
            T.let(
              :"line_item.merge",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_PROPERTY_CHANGE =
            T.let(
              :"line_item.propertyChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          LINE_ITEM_RESTORE =
            T.let(
              :"line_item.restore",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_ASSOCIATION_CHANGE =
            T.let(
              :"object.associationChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_CREATION =
            T.let(
              :"object.creation",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_DELETION =
            T.let(
              :"object.deletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_MERGE =
            T.let(
              :"object.merge",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_PROPERTY_CHANGE =
            T.let(
              :"object.propertyChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          OBJECT_RESTORE =
            T.let(
              :"object.restore",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_CREATION =
            T.let(
              :"product.creation",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_DELETION =
            T.let(
              :"product.deletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_MERGE =
            T.let(
              :"product.merge",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_PROPERTY_CHANGE =
            T.let(
              :"product.propertyChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          PRODUCT_RESTORE =
            T.let(
              :"product.restore",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_ASSOCIATION_CHANGE =
            T.let(
              :"ticket.associationChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_CREATION =
            T.let(
              :"ticket.creation",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_DELETION =
            T.let(
              :"ticket.deletion",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_MERGE =
            T.let(
              :"ticket.merge",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_PROPERTY_CHANGE =
            T.let(
              :"ticket.propertyChange",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )
          TICKET_RESTORE =
            T.let(
              :"ticket.restore",
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::TaggedSymbol
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
