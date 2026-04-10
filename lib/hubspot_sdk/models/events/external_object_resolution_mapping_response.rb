# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class ExternalObjectResolutionMappingResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute primary_object_rule
        #
        #   @return [HubSpotSDK::Models::Events::ExternalPrimaryObjectResolutionRule]
        required :primary_object_rule,
                 -> { HubSpotSDK::Events::ExternalPrimaryObjectResolutionRule },
                 api_name: :primaryObjectRule

        # @!method initialize(primary_object_rule:)
        #   @param primary_object_rule [HubSpotSDK::Models::Events::ExternalPrimaryObjectResolutionRule]
      end
    end
  end
end
