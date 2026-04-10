# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicActionDefinitionRequiresObjectResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute requires_object
        #   Indicates whether a custom action definition requires an object.
        #
        #   @return [Boolean]
        required :requires_object, HubSpotSDK::Internal::Type::Boolean, api_name: :requiresObject

        # @!method initialize(requires_object:)
        #   @param requires_object [Boolean] Indicates whether a custom action definition requires an object.
      end
    end
  end
end
