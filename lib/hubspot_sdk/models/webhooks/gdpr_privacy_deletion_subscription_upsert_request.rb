# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class GdprPrivacyDeletionSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute actions
        #
        #   @return [Array<Symbol, HubSpotSDK::Models::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest::Action>]
        required :actions,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest::Action] }

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute subscription_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType]
        required :subscription_type,
                 enum: -> {
                   HubSpotSDK::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType
                 },
                 api_name: :subscriptionType

        # @!method initialize(actions:, object_type_id:, portal_id:, subscription_type:)
        #   @param actions [Array<Symbol, HubSpotSDK::Models::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest::Action>]
        #   @param object_type_id [String]
        #   @param portal_id [Integer]
        #   @param subscription_type [Symbol, HubSpotSDK::Models::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType]

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
          GDPR_DELETE = :GDPR_DELETE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest#subscription_type
        module SubscriptionType
          extend HubSpotSDK::Internal::Type::Enum

          OBJECT = :OBJECT
          ASSOCIATION = :ASSOCIATION
          EVENT = :EVENT
          APP_LIFECYCLE_EVENT = :APP_LIFECYCLE_EVENT
          LIST_MEMBERSHIP = :LIST_MEMBERSHIP
          GDPR_PRIVACY_DELETION = :GDPR_PRIVACY_DELETION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
