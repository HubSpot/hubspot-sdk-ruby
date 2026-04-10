# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class PropertyFilterContext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!method initialize(object_type_id:)
        #   @param object_type_id [String]
      end
    end
  end
end
