# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Workflows#list
      class APIFlowListing < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID for this flow. This is auto-generated when creating the flow.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The timestamp this flow was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute flow_type
        #   Deprecated. Will be removed.
        #
        #   @return [String]
        required :flow_type, String, api_name: :flowType

        # @!attribute is_enabled
        #   This controls whether or not the flow is "enabled" if it's actively listening
        #   for enrollment triggers and executing actions. If this is `false` the flow is
        #   not accepting any enrollments or executing any actions.
        #
        #   @return [Boolean]
        required :is_enabled, HubspotSDK::Internal::Type::Boolean, api_name: :isEnabled

        # @!attribute object_type_id
        #   The CRM object type for objects that can be enrolled into this flow.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute revision_id
        #   Deprecated. Will be removed.
        #
        #   @return [String]
        required :revision_id, String, api_name: :revisionId

        # @!attribute updated_at
        #   The timestamp this flow was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute name
        #   The user-provided name for this flow. Names get auto-created for workflows that
        #   are created without a name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute uuid
        #   An optional unique key for this flow. This is only unique per-portal.
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!method initialize(id:, created_at:, flow_type:, is_enabled:, object_type_id:, revision_id:, updated_at:, name: nil, uuid: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIFlowListing} for more details.
        #
        #   @param id [String] The unique ID for this flow. This is auto-generated when creating the flow.
        #
        #   @param created_at [Time] The timestamp this flow was created.
        #
        #   @param flow_type [String] Deprecated. Will be removed.
        #
        #   @param is_enabled [Boolean] This controls whether or not the flow is "enabled" if it's actively listening fo
        #
        #   @param object_type_id [String] The CRM object type for objects that can be enrolled into this flow.
        #
        #   @param revision_id [String] Deprecated. Will be removed.
        #
        #   @param updated_at [Time] The timestamp this flow was last updated.
        #
        #   @param name [String] The user-provided name for this flow. Names get auto-created for workflows that
        #
        #   @param uuid [String] An optional unique key for this flow. This is only unique per-portal.
      end
    end
  end
end
