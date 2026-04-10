# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class SoftRequiredPropertiesExtensionData < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute is_soft_required_property
        #
        #   @return [Boolean]
        required :is_soft_required_property,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :isSoftRequiredProperty

        # @!method initialize(is_soft_required_property:)
        #   @param is_soft_required_property [Boolean]
      end
    end
  end
end
