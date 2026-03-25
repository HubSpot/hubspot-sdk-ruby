# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class RecordIDInput < HubspotSDK::Internal::Type::BaseModel
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
