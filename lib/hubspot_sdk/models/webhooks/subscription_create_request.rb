# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute active
        #   Determines if the subscription is active or paused. Defaults to false.
        #
        #   @return [Boolean]
        required :active, HubSpotSDK::Internal::Type::Boolean

        # @!attribute event_type
        #   Type of event to listen for. Can be one of `create`, `delete`,
        #   `deletedForPrivacy`, or `propertyChange`.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType]
        required :event_type,
                 enum: -> { HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType },
                 api_name: :eventType

        # @!attribute event_type_name
        #   The name of the event to listen for. This is used with custom objects to specify
        #   custom event types beyond the standard eventType enum values.
        #
        #   @return [String, nil]
        optional :event_type_name, String, api_name: :eventTypeName

        # @!attribute object_type_id
        #   The ID of the object type for the subscription. This can be a standard CRM
        #   object (e.g., 'contact', 'company', 'deal') or a custom object ID for custom
        #   object subscriptions.
        #
        #   @return [String, nil]
        optional :object_type_id, String, api_name: :objectTypeId

        # @!attribute property_name
        #   The internal name of the property to monitor for changes. Only applies when
        #   `eventType` is `propertyChange`.
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!method initialize(active:, event_type:, event_type_name: nil, object_type_id: nil, property_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest} for more details.
        #
        #   @param active [Boolean] Determines if the subscription is active or paused. Defaults to false.
        #
        #   @param event_type [Symbol, HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType] Type of event to listen for. Can be one of `create`, `delete`, `deletedForPrivac
        #
        #   @param event_type_name [String] The name of the event to listen for. This is used with custom objects to specify
        #
        #   @param object_type_id [String] The ID of the object type for the subscription. This can be a standard CRM objec
        #
        #   @param property_name [String] The internal name of the property to monitor for changes. Only applies when `eve

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        #
        # @see HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest#event_type
        module EventType
          extend HubSpotSDK::Internal::Type::Enum

          COMPANY_ASSOCIATION_CHANGE = :"company.associationChange"
          COMPANY_CREATION = :"company.creation"
          COMPANY_DELETION = :"company.deletion"
          COMPANY_MERGE = :"company.merge"
          COMPANY_PROPERTY_CHANGE = :"company.propertyChange"
          COMPANY_RESTORE = :"company.restore"
          CONTACT_ASSOCIATION_CHANGE = :"contact.associationChange"
          CONTACT_CREATION = :"contact.creation"
          CONTACT_DELETION = :"contact.deletion"
          CONTACT_MERGE = :"contact.merge"
          CONTACT_PRIVACY_DELETION = :"contact.privacyDeletion"
          CONTACT_PROPERTY_CHANGE = :"contact.propertyChange"
          CONTACT_RESTORE = :"contact.restore"
          CONVERSATION_CREATION = :"conversation.creation"
          CONVERSATION_DELETION = :"conversation.deletion"
          CONVERSATION_NEW_MESSAGE = :"conversation.newMessage"
          CONVERSATION_PRIVACY_DELETION = :"conversation.privacyDeletion"
          CONVERSATION_PROPERTY_CHANGE = :"conversation.propertyChange"
          DEAL_ASSOCIATION_CHANGE = :"deal.associationChange"
          DEAL_CREATION = :"deal.creation"
          DEAL_DELETION = :"deal.deletion"
          DEAL_MERGE = :"deal.merge"
          DEAL_PROPERTY_CHANGE = :"deal.propertyChange"
          DEAL_RESTORE = :"deal.restore"
          EVENT_COMPLETED = :"event.completed"
          LINE_ITEM_ASSOCIATION_CHANGE = :"line_item.associationChange"
          LINE_ITEM_CREATION = :"line_item.creation"
          LINE_ITEM_DELETION = :"line_item.deletion"
          LINE_ITEM_MERGE = :"line_item.merge"
          LINE_ITEM_PROPERTY_CHANGE = :"line_item.propertyChange"
          LINE_ITEM_RESTORE = :"line_item.restore"
          OBJECT_ASSOCIATION_CHANGE = :"object.associationChange"
          OBJECT_CREATION = :"object.creation"
          OBJECT_DELETION = :"object.deletion"
          OBJECT_MERGE = :"object.merge"
          OBJECT_PROPERTY_CHANGE = :"object.propertyChange"
          OBJECT_RESTORE = :"object.restore"
          PRODUCT_CREATION = :"product.creation"
          PRODUCT_DELETION = :"product.deletion"
          PRODUCT_MERGE = :"product.merge"
          PRODUCT_PROPERTY_CHANGE = :"product.propertyChange"
          PRODUCT_RESTORE = :"product.restore"
          TICKET_ASSOCIATION_CHANGE = :"ticket.associationChange"
          TICKET_CREATION = :"ticket.creation"
          TICKET_DELETION = :"ticket.deletion"
          TICKET_MERGE = :"ticket.merge"
          TICKET_PROPERTY_CHANGE = :"ticket.propertyChange"
          TICKET_RESTORE = :"ticket.restore"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
