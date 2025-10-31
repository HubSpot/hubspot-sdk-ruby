# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class LifecycleStage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #   The objectTypeId for both contact and company
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute value
        #   The internal name of the contact's lifecycle stage set when submitting a form
        #
        #   @return [String]
        required :value, String

        # @!method initialize(object_type_id:, value:)
        #   @param object_type_id [String] The objectTypeId for both contact and company
        #
        #   @param value [String] The internal name of the contact's lifecycle stage set when submitting a form
      end
    end
  end
end
