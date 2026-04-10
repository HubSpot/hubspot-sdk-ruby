# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class RecordIDInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute record_id
        #
        #   @return [String]
        required :record_id, String, api_name: :recordId

        # @!method initialize(object_type_id:, record_id:)
        #   @param object_type_id [String]
        #   @param record_id [String]
      end
    end
  end
end
