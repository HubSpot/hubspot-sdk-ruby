# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionResponse1 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the webhook subscription.
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute actions
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Webhooks::SubscriptionResponse1::Action>]
        required :actions,
                 -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Webhooks::SubscriptionResponse1::Action] }

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute created_at
        #   The timestamp when the webhook subscription was created, in ISO 8601 format
        #   (e.g., 2020-02-29T12:30:00Z).
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute object_type_id
        #   The ID of the object type for the subscription. This can be a standard CRM
        #   object (e.g., 'contact', 'company', 'deal') or a custom object ID for custom
        #   object subscriptions.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute subscription_type
        #
        #   @return [Symbol, HubspotSDK::Models::Webhooks::SubscriptionResponse1::SubscriptionType]
        required :subscription_type,
                 enum: -> { HubspotSDK::Webhooks::SubscriptionResponse1::SubscriptionType },
                 api_name: :subscriptionType

        # @!attribute updated_at
        #   The timestamp when the webhook subscription was last updated, in ISO 8601 format
        #   (e.g., 2020-02-29T12:30:00Z).
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute associated_object_type_ids
        #
        #   @return [Array<String>, nil]
        optional :associated_object_type_ids,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :associatedObjectTypeIds

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer, api_name: :createdBy

        # @!attribute deleted_at
        #
        #   @return [Time, nil]
        optional :deleted_at, Time, api_name: :deletedAt

        # @!attribute list_ids
        #
        #   @return [Array<Integer>, nil]
        optional :list_ids, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :listIds

        # @!attribute object_ids
        #
        #   @return [Array<Integer>, nil]
        optional :object_ids, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :objectIds

        # @!attribute portal_id
        #
        #   @return [Integer, nil]
        optional :portal_id, Integer, api_name: :portalId

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, actions:, app_id:, created_at:, object_type_id:, subscription_type:, updated_at:, associated_object_type_ids: nil, created_by: nil, deleted_at: nil, list_ids: nil, object_ids: nil, portal_id: nil, properties: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::SubscriptionResponse1} for more details.
        #
        #   @param id [Integer] The unique ID of the webhook subscription.
        #
        #   @param actions [Array<Symbol, HubspotSDK::Models::Webhooks::SubscriptionResponse1::Action>]
        #
        #   @param app_id [Integer]
        #
        #   @param created_at [Time] The timestamp when the webhook subscription was created, in ISO 8601 format (e.g
        #
        #   @param object_type_id [String] The ID of the object type for the subscription. This can be a standard CRM objec
        #
        #   @param subscription_type [Symbol, HubspotSDK::Models::Webhooks::SubscriptionResponse1::SubscriptionType]
        #
        #   @param updated_at [Time] The timestamp when the webhook subscription was last updated, in ISO 8601 format
        #
        #   @param associated_object_type_ids [Array<String>]
        #
        #   @param created_by [Integer]
        #
        #   @param deleted_at [Time]
        #
        #   @param list_ids [Array<Integer>]
        #
        #   @param object_ids [Array<Integer>]
        #
        #   @param portal_id [Integer]
        #
        #   @param properties [Array<String>]

        module Action
          extend HubspotSDK::Internal::Type::Enum

          CREATE = :CREATE
          UPDATE = :UPDATE
          DELETE = :DELETE
          MERGE = :MERGE
          RESTORE = :RESTORE
          ASSOCIATION_ADDED = :ASSOCIATION_ADDED
          ASSOCIATION_REMOVED = :ASSOCIATION_REMOVED
          SNAPSHOT = :SNAPSHOT
          APP_INSTALL = :APP_INSTALL
          APP_UNINSTALL = :APP_UNINSTALL
          ADDED_TO_LIST = :ADDED_TO_LIST
          REMOVED_FROM_LIST = :REMOVED_FROM_LIST

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Webhooks::SubscriptionResponse1#subscription_type
        module SubscriptionType
          extend HubspotSDK::Internal::Type::Enum

          APP_LIFECYCLE_EVENT = :APP_LIFECYCLE_EVENT
          ASSOCIATION = :ASSOCIATION
          EVENT = :EVENT
          LIST_MEMBERSHIP = :LIST_MEMBERSHIP
          OBJECT = :OBJECT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
