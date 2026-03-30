# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicActionDefinitionRequiresObjectRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute requires_object
        #   Indicates whether a custom action definition requires an associated object.
        #
        #   @return [Boolean]
        required :requires_object, HubspotSDK::Internal::Type::Boolean, api_name: :requiresObject

        # @!method initialize(requires_object:)
        #   @param requires_object [Boolean] Indicates whether a custom action definition requires an associated object.
      end
    end
  end
end
