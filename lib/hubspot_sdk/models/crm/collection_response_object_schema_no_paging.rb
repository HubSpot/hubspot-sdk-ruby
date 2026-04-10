# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::ObjectSchemas#list
      class CollectionResponseObjectSchemaNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::ObjectSchema>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ObjectSchema] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Crm::ObjectSchema>]
      end
    end
  end
end
