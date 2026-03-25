# frozen_string_literal: true

module HubspotSDK
  module Models
    module AppWebhooks
      # @see HubspotSDK::Resources::AppWebhooks#create_subscription
      class SubscriptionResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the subscription.
        #
        #   @return [String]
        required :id, String

        # @!attribute active
        #   Determines if the subscription is active or paused.
        #
        #   @return [Boolean]
        required :active, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #   When this subscription was created. Formatted as milliseconds from the
        #   [Unix epoch](#).
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute event_type
        #   Type of event to listen for. Can be one of `create`, `delete`,
        #   `deletedForPrivacy`, or `propertyChange`.
        #
        #   @return [Symbol, HubspotSDK::Models::AppWebhooks::SubscriptionResponse::EventType]
        required :event_type,
                 enum: -> { HubspotSDK::AppWebhooks::SubscriptionResponse::EventType },
                 api_name: :eventType

        # @!attribute event_type_name
        #
        #   @return [String, nil]
        optional :event_type_name, String, api_name: :eventTypeName

        # @!attribute object_type_id
        #   The identifier of the object type associated with the subscription.
        #
        #   @return [String, nil]
        optional :object_type_id, String, api_name: :objectTypeId

        # @!attribute property_name
        #   The internal name of the property being monitored for changes. Only applies when
        #   `eventType` is `propertyChange`.
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute updated_at
        #   When this subscription was last updated. Formatted as milliseconds from the
        #   [Unix epoch](#).
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, active:, created_at:, event_type:, event_type_name: nil, object_type_id: nil, property_name: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::AppWebhooks::SubscriptionResponse} for more details.
        #
        #   @param id [String] The unique ID of the subscription.
        #
        #   @param active [Boolean] Determines if the subscription is active or paused.
        #
        #   @param created_at [Time] When this subscription was created. Formatted as milliseconds from the [Unix epo
        #
        #   @param event_type [Symbol, HubspotSDK::Models::AppWebhooks::SubscriptionResponse::EventType] Type of event to listen for. Can be one of `create`, `delete`, `deletedForPrivac
        #
        #   @param event_type_name [String]
        #
        #   @param object_type_id [String] The identifier of the object type associated with the subscription.
        #
        #   @param property_name [String] The internal name of the property being monitored for changes. Only applies when
        #
        #   @param updated_at [Time] When this subscription was last updated. Formatted as milliseconds from the [Uni

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        #
        # @see HubspotSDK::Models::AppWebhooks::SubscriptionResponse#event_type
        module EventType
          extend HubspotSDK::Internal::Type::Enum

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
