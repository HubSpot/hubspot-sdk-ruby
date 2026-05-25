# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      class SubscriptionResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the subscription, represented as an integer.
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute actions
        #   An array of actions associated with the subscription. Valid actions include
        #   'CREATE', 'UPDATE', 'DELETE', 'MERGE', 'RESTORE', 'ASSOCIATION_ADDED',
        #   'ASSOCIATION_REMOVED', 'SNAPSHOT', 'APP_INSTALL', 'APP_UNINSTALL',
        #   'ADDED_TO_LIST', 'REMOVED_FROM_LIST', and 'GDPR_DELETE'.
        #
        #   @return [Array<Symbol, HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse::Action>]
        required :actions,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action] }

        # @!attribute app_id
        #   The unique identifier for the app associated with the subscription, represented
        #   as an integer.
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute created_at
        #   The date and time when the subscription was created, in ISO 8601 format.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute object_type_id
        #   The identifier for the type of object associated with the subscription,
        #   represented as a string.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute subscription_type
        #   The type of subscription, indicating the nature of events it pertains to. Valid
        #   values include 'OBJECT', 'ASSOCIATION', 'EVENT', 'APP_LIFECYCLE_EVENT',
        #   'LIST_MEMBERSHIP', and 'GDPR_PRIVACY_DELETION'.
        #
        #   @return [Symbol, HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse::SubscriptionType]
        required :subscription_type,
                 enum: -> { HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType },
                 api_name: :subscriptionType

        # @!attribute updated_at
        #   The date and time when the subscription was last updated, in ISO 8601 format.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute action_overrides
        #   An object containing overrides for actions, where each key is an action and the
        #   value is an ActionOverrideRequest object.
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::ActionOverrideRequest}, nil]
        optional :action_overrides,
                 -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::ActionOverrideRequest] },
                 api_name: :actionOverrides

        # @!attribute associated_object_type_ids
        #   An array of strings representing the IDs of associated object types.
        #
        #   @return [Array<String>, nil]
        optional :associated_object_type_ids,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :associatedObjectTypeIds

        # @!attribute created_by
        #   The unique identifier of the user who created the subscription, represented as
        #   an integer.
        #
        #   @return [Integer, nil]
        optional :created_by, Integer, api_name: :createdBy

        # @!attribute deleted_at
        #   The date and time when the subscription was deleted, in ISO 8601 format, if
        #   applicable.
        #
        #   @return [Time, nil]
        optional :deleted_at, Time, api_name: :deletedAt

        # @!attribute list_ids
        #   An array of integers representing the IDs of lists associated with the
        #   subscription.
        #
        #   @return [Array<Integer>, nil]
        optional :list_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :listIds

        # @!attribute object_ids
        #   An array of integers representing the IDs of objects associated with the
        #   subscription.
        #
        #   @return [Array<Integer>, nil]
        optional :object_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :objectIds

        # @!attribute portal_id
        #   The unique identifier for the portal associated with the subscription,
        #   represented as an integer.
        #
        #   @return [Integer, nil]
        optional :portal_id, Integer, api_name: :portalId

        # @!attribute properties
        #   An array of strings representing the properties associated with the
        #   subscription.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, actions:, app_id:, created_at:, object_type_id:, subscription_type:, updated_at:, action_overrides: nil, associated_object_type_ids: nil, created_by: nil, deleted_at: nil, list_ids: nil, object_ids: nil, portal_id: nil, properties: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse} for more details.
        #
        #   @param id [Integer] The unique identifier for the subscription, represented as an integer.
        #
        #   @param actions [Array<Symbol, HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse::Action>] An array of actions associated with the subscription. Valid actions include 'CRE
        #
        #   @param app_id [Integer] The unique identifier for the app associated with the subscription, represented
        #
        #   @param created_at [Time] The date and time when the subscription was created, in ISO 8601 format.
        #
        #   @param object_type_id [String] The identifier for the type of object associated with the subscription, represen
        #
        #   @param subscription_type [Symbol, HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse::SubscriptionType] The type of subscription, indicating the nature of events it pertains to. Valid
        #
        #   @param updated_at [Time] The date and time when the subscription was last updated, in ISO 8601 format.
        #
        #   @param action_overrides [Hash{Symbol=>HubSpotSDK::Models::ActionOverrideRequest}] An object containing overrides for actions, where each key is an action and the
        #
        #   @param associated_object_type_ids [Array<String>] An array of strings representing the IDs of associated object types.
        #
        #   @param created_by [Integer] The unique identifier of the user who created the subscription, represented as a
        #
        #   @param deleted_at [Time] The date and time when the subscription was deleted, in ISO 8601 format, if appl
        #
        #   @param list_ids [Array<Integer>] An array of integers representing the IDs of lists associated with the subscript
        #
        #   @param object_ids [Array<Integer>] An array of integers representing the IDs of objects associated with the subscri
        #
        #   @param portal_id [Integer] The unique identifier for the portal associated with the subscription, represent
        #
        #   @param properties [Array<String>] An array of strings representing the properties associated with the subscription

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

        # The type of subscription, indicating the nature of events it pertains to. Valid
        # values include 'OBJECT', 'ASSOCIATION', 'EVENT', 'APP_LIFECYCLE_EVENT',
        # 'LIST_MEMBERSHIP', and 'GDPR_PRIVACY_DELETION'.
        #
        # @see HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse#subscription_type
        module SubscriptionType
          extend HubSpotSDK::Internal::Type::Enum

          APP_LIFECYCLE_EVENT = :APP_LIFECYCLE_EVENT
          ASSOCIATION = :ASSOCIATION
          EVENT = :EVENT
          GDPR_PRIVACY_DELETION = :GDPR_PRIVACY_DELETION
          LIST_MEMBERSHIP = :LIST_MEMBERSHIP
          OBJECT = :OBJECT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
