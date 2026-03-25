# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class ExternalObjectResolutionMappingResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute primary_object_rule
        #
        #   @return [HubspotSDK::Models::Events::ExternalPrimaryObjectResolutionRule]
        required :primary_object_rule,
                 -> { HubspotSDK::Events::ExternalPrimaryObjectResolutionRule },
                 api_name: :primaryObjectRule

        # @!method initialize(primary_object_rule:)
        #   @param primary_object_rule [HubspotSDK::Models::Events::ExternalPrimaryObjectResolutionRule]
      end
    end
  end
end
