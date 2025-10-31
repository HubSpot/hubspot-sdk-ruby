# frozen_string_literal: true

module HubspotSDK
  module Models
    class CollectionResponseObjectSchemaNoPaging < HubspotSDK::Internal::Type::BaseModel
      # @!attribute results
      #
      #   @return [Array<HubspotSDK::Models::CRM::Objects::ObjectSchema>]
      required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::ObjectSchema] }

      # @!method initialize(results:)
      #   @param results [Array<HubspotSDK::Models::CRM::Objects::ObjectSchema>]
    end
  end
end
