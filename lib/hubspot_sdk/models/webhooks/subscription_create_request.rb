# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute active
        #   A boolean indicating whether the subscription is active.
        #
        #   @return [Boolean]
        required :active, HubSpotSDK::Internal::Type::Boolean

        # @!attribute event_type
        #   A string representing the type of event to subscribe to. Valid values include
        #   various property changes, creations, deletions, merges, restorations,
        #   association changes, and event completions.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType]
        required :event_type,
                 enum: -> { HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType },
                 api_name: :eventType

        # @!attribute event_type_name
        #   A string providing a human-readable name for the event type.
        #
        #   @return [String, nil]
        optional :event_type_name, String, api_name: :eventTypeName

        # @!attribute object_type_id
        #   A string representing the ID of the object type associated with the
        #   subscription.
        #
        #   @return [String, nil]
        optional :object_type_id, String, api_name: :objectTypeId

        # @!attribute property_name
        #   A string indicating the specific property name related to the event type, if
        #   applicable.
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!method initialize(active:, event_type:, event_type_name: nil, object_type_id: nil, property_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest} for more details.
        #
        #   @param active [Boolean] A boolean indicating whether the subscription is active.
        #
        #   @param event_type [Symbol, HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType] A string representing the type of event to subscribe to. Valid values include va
        #
        #   @param event_type_name [String] A string providing a human-readable name for the event type.
        #
        #   @param object_type_id [String] A string representing the ID of the object type associated with the subscription
        #
        #   @param property_name [String] A string indicating the specific property name related to the event type, if app

        # A string representing the type of event to subscribe to. Valid values include
        # various property changes, creations, deletions, merges, restorations,
        # association changes, and event completions.
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
