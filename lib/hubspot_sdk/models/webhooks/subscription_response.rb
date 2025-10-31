# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
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
        #   @return [Symbol, HubspotSDK::Models::Webhooks::SubscriptionResponse::EventType]
        required :event_type,
                 enum: -> { HubspotSDK::Webhooks::SubscriptionResponse::EventType },
                 api_name: :eventType

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

        # @!method initialize(id:, active:, created_at:, event_type:, object_type_id: nil, property_name: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::SubscriptionResponse} for more details.
        #
        #   Complete details for an event subscription.
        #
        #   @param id [String] The unique ID of the subscription.
        #
        #   @param active [Boolean] Determines if the subscription is active or paused.
        #
        #   @param created_at [Time] When this subscription was created. Formatted as milliseconds from the [Unix epo
        #
        #   @param event_type [Symbol, HubspotSDK::Models::Webhooks::SubscriptionResponse::EventType] Type of event to listen for. Can be one of `create`, `delete`, `deletedForPrivac
        #
        #   @param object_type_id [String] The identifier of the object type associated with the subscription.
        #
        #   @param property_name [String] The internal name of the property being monitored for changes. Only applies when
        #
        #   @param updated_at [Time] When this subscription was last updated. Formatted as milliseconds from the [Uni

        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        #
        # @see HubspotSDK::Models::Webhooks::SubscriptionResponse#event_type
        module EventType
          extend HubspotSDK::Internal::Type::Enum

          CONTACT_PROPERTY_CHANGE = :"contact.propertyChange"
          COMPANY_PROPERTY_CHANGE = :"company.propertyChange"
          DEAL_PROPERTY_CHANGE = :"deal.propertyChange"
          TICKET_PROPERTY_CHANGE = :"ticket.propertyChange"
          PRODUCT_PROPERTY_CHANGE = :"product.propertyChange"
          LINE_ITEM_PROPERTY_CHANGE = :"line_item.propertyChange"
          CONTACT_CREATION = :"contact.creation"
          CONTACT_DELETION = :"contact.deletion"
          CONTACT_PRIVACY_DELETION = :"contact.privacyDeletion"
          COMPANY_CREATION = :"company.creation"
          COMPANY_DELETION = :"company.deletion"
          DEAL_CREATION = :"deal.creation"
          DEAL_DELETION = :"deal.deletion"
          TICKET_CREATION = :"ticket.creation"
          TICKET_DELETION = :"ticket.deletion"
          PRODUCT_CREATION = :"product.creation"
          PRODUCT_DELETION = :"product.deletion"
          LINE_ITEM_CREATION = :"line_item.creation"
          LINE_ITEM_DELETION = :"line_item.deletion"
          CONVERSATION_CREATION = :"conversation.creation"
          CONVERSATION_DELETION = :"conversation.deletion"
          CONVERSATION_NEW_MESSAGE = :"conversation.newMessage"
          CONVERSATION_PRIVACY_DELETION = :"conversation.privacyDeletion"
          CONVERSATION_PROPERTY_CHANGE = :"conversation.propertyChange"
          CONTACT_MERGE = :"contact.merge"
          COMPANY_MERGE = :"company.merge"
          DEAL_MERGE = :"deal.merge"
          TICKET_MERGE = :"ticket.merge"
          PRODUCT_MERGE = :"product.merge"
          LINE_ITEM_MERGE = :"line_item.merge"
          CONTACT_RESTORE = :"contact.restore"
          COMPANY_RESTORE = :"company.restore"
          DEAL_RESTORE = :"deal.restore"
          TICKET_RESTORE = :"ticket.restore"
          PRODUCT_RESTORE = :"product.restore"
          LINE_ITEM_RESTORE = :"line_item.restore"
          CONTACT_ASSOCIATION_CHANGE = :"contact.associationChange"
          COMPANY_ASSOCIATION_CHANGE = :"company.associationChange"
          DEAL_ASSOCIATION_CHANGE = :"deal.associationChange"
          TICKET_ASSOCIATION_CHANGE = :"ticket.associationChange"
          LINE_ITEM_ASSOCIATION_CHANGE = :"line_item.associationChange"
          OBJECT_PROPERTY_CHANGE = :"object.propertyChange"
          OBJECT_CREATION = :"object.creation"
          OBJECT_DELETION = :"object.deletion"
          OBJECT_MERGE = :"object.merge"
          OBJECT_RESTORE = :"object.restore"
          OBJECT_ASSOCIATION_CHANGE = :"object.associationChange"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
