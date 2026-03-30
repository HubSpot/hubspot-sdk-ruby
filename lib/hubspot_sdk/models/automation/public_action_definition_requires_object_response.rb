# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Actions#get_requires_object
      class PublicActionDefinitionRequiresObjectResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute requires_object
        #   Indicates whether a custom action definition requires an object.
        #
        #   @return [Boolean]
        required :requires_object, HubspotSDK::Internal::Type::Boolean, api_name: :requiresObject

        # @!method initialize(requires_object:)
        #   @param requires_object [Boolean] Indicates whether a custom action definition requires an object.
      end
    end
  end
end
