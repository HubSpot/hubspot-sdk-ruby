# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class RequiredPropertiesExtensionData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute is_required_property
        #
        #   @return [Boolean]
        required :is_required_property, HubspotSDK::Internal::Type::Boolean, api_name: :isRequiredProperty

        # @!method initialize(is_required_property:)
        #   @param is_required_property [Boolean]
      end
    end
  end
end
