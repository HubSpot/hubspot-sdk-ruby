# frozen_string_literal: true

module HubspotSDK
  module Models
    class TaskLocator < HubspotSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the task.
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #   A collection of link names mapped to their corresponding URIs.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :links, HubspotSDK::Internal::Type::HashOf[String]

      # @!method initialize(id:, links: nil)
      #   @param id [String] The unique identifier for the task.
      #
      #   @param links [Hash{Symbol=>String}] A collection of link names mapped to their corresponding URIs.
    end
  end
end
