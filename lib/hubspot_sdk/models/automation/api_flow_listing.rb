# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Workflows#list
      class APIFlowListing < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute flow_type
        #
        #   @return [String]
        required :flow_type, String, api_name: :flowType

        # @!attribute is_enabled
        #
        #   @return [Boolean]
        required :is_enabled, HubspotSDK::Internal::Type::Boolean, api_name: :isEnabled

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute revision_id
        #
        #   @return [String]
        required :revision_id, String, api_name: :revisionId

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute uuid
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!method initialize(id:, created_at:, flow_type:, is_enabled:, object_type_id:, revision_id:, updated_at:, name: nil, uuid: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param flow_type [String]
        #   @param is_enabled [Boolean]
        #   @param object_type_id [String]
        #   @param revision_id [String]
        #   @param updated_at [Time]
        #   @param name [String]
        #   @param uuid [String]
      end
    end
  end
end
