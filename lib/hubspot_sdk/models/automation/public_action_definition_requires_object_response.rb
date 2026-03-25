# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Actions#get_requires_object
      class PublicActionDefinitionRequiresObjectResponse < HubspotSDK::Internal::Type::BaseModel
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
