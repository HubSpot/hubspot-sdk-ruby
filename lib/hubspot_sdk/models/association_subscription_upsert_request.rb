# frozen_string_literal: true

module HubSpotSDK
  module Models
    class AssociationSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute actions
      #
      #   @return [Array<Symbol, HubSpotSDK::Models::AssociationSubscriptionUpsertRequest::Action>]
      required :actions,
               -> { HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::AssociationSubscriptionUpsertRequest::Action] }

      # @!attribute associated_object_type_ids
      #
      #   @return [Array<String>]
      required :associated_object_type_ids,
               HubSpotSDK::Internal::Type::ArrayOf[String],
               api_name: :associatedObjectTypeIds

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

      # @!attribute subscription_type
      #
      #   @return [Symbol, HubSpotSDK::Models::AssociationSubscriptionUpsertRequest::SubscriptionType]
      required :subscription_type,
               enum: -> { HubSpotSDK::AssociationSubscriptionUpsertRequest::SubscriptionType },
               api_name: :subscriptionType

      # @!method initialize(actions:, associated_object_type_ids:, object_ids:, object_type_id:, portal_id:, subscription_type:)
      #   @param actions [Array<Symbol, HubSpotSDK::Models::AssociationSubscriptionUpsertRequest::Action>]
      #   @param associated_object_type_ids [Array<String>]
      #   @param object_ids [Array<Integer>]
      #   @param object_type_id [String]
      #   @param portal_id [Integer]
      #   @param subscription_type [Symbol, HubSpotSDK::Models::AssociationSubscriptionUpsertRequest::SubscriptionType]

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

      # @see HubSpotSDK::Models::AssociationSubscriptionUpsertRequest#subscription_type
      module SubscriptionType
        extend HubSpotSDK::Internal::Type::Enum

        ASSOCIATION = :ASSOCIATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
