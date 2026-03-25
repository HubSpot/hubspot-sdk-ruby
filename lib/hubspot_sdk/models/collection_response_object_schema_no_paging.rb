# frozen_string_literal: true

module HubspotSDK
  module Models
    class CollectionResponseObjectSchemaNoPaging < HubspotSDK::Internal::Type::BaseModel
      # @!attribute results
      #
      #   @return [Array<HubspotSDK::Models::ObjectSchema>]
      required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::ObjectSchema] }

      # @!method initialize(results:)
      #   @param results [Array<HubspotSDK::Models::ObjectSchema>]
    end
  end
end
