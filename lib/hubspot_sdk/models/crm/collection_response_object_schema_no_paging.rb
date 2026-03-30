# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::ObjectSchemas#list
      class CollectionResponseObjectSchemaNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::ObjectSchema>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ObjectSchema] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::ObjectSchema>]
      end
    end
  end
end
