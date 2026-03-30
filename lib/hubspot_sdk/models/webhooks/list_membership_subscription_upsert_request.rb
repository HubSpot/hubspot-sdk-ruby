# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class ListMembershipSubscriptionUpsertRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute actions
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest::Action>]
        required :actions,
                 -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action] }

        # @!attribute list_ids
        #
        #   @return [Array<Integer>]
        required :list_ids, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :listIds

        # @!attribute object_ids
        #
        #   @return [Array<Integer>]
        required :object_ids, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :objectIds

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute subscription_type
        #
        #   @return [Symbol, HubspotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType]
        required :subscription_type,
                 enum: -> { HubspotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType },
                 api_name: :subscriptionType

        # @!method initialize(actions:, list_ids:, object_ids:, portal_id:, subscription_type:)
        #   @param actions [Array<Symbol, HubspotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest::Action>]
        #   @param list_ids [Array<Integer>]
        #   @param object_ids [Array<Integer>]
        #   @param portal_id [Integer]
        #   @param subscription_type [Symbol, HubspotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType]

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

        # @see HubspotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest#subscription_type
        module SubscriptionType
          extend HubspotSDK::Internal::Type::Enum

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
