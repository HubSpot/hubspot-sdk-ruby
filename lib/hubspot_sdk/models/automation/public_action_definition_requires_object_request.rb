# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicActionDefinitionRequiresObjectRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute requires_object
        #
        #   @return [Boolean]
        required :requires_object, HubspotSDK::Internal::Type::Boolean, api_name: :requiresObject

        # @!method initialize(requires_object:)
        #   @param requires_object [Boolean]
      end
    end
  end
end
