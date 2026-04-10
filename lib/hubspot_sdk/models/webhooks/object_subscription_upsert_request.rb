# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class ObjectSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute actions
        #
        #   @return [Array<Symbol, HubSpotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest::Action>]
        required :actions,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action] }

        # @!attribute object_ids
        #
        #   @return [Array<Integer>]
        required :object_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :objectIds

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute properties
        #
        #   @return [Array<String>]
        required :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute subscription_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType]
        required :subscription_type,
                 enum: -> { HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType },
                 api_name: :subscriptionType

        # @!method initialize(actions:, object_ids:, object_type_id:, portal_id:, properties:, subscription_type:)
        #   @param actions [Array<Symbol, HubSpotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest::Action>]
        #   @param object_ids [Array<Integer>]
        #   @param object_type_id [String]
        #   @param portal_id [Integer]
        #   @param properties [Array<String>]
        #   @param subscription_type [Symbol, HubSpotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType]

        module Action
          extend HubSpotSDK::Internal::Type::Enum

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

        # @see HubSpotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest#subscription_type
        module SubscriptionType
          extend HubSpotSDK::Internal::Type::Enum

          OBJECT = :OBJECT
          ASSOCIATION = :ASSOCIATION
          EVENT = :EVENT
          APP_LIFECYCLE_EVENT = :APP_LIFECYCLE_EVENT
          LIST_MEMBERSHIP = :LIST_MEMBERSHIP

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
