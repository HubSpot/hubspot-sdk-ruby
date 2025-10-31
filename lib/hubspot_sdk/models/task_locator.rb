# frozen_string_literal: true

module HubspotSDK
  module Models
    class TaskLocator < HubspotSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :links, HubspotSDK::Internal::Type::HashOf[String]

      # @!method initialize(id:, links: nil)
      #   @param id [String]
      #   @param links [Hash{Symbol=>String}]
    end
  end
end
