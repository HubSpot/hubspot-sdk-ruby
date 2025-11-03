# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicCrmSearchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Array<HubspotSDK::Models::Crm::Filter>]
        required :filters, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Filter] }

        # @!attribute query
        #
        #   @return [String]
        required :query, String

        # @!attribute sorts
        #
        #   @return [Array<String>]
        required :sorts, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(filters:, query:, sorts:)
        #   @param filters [Array<HubspotSDK::Models::Crm::Filter>]
        #   @param query [String]
        #   @param sorts [Array<String>]
      end
    end
  end
end
