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
      #   A map of link names to associated URIs containing documentation about the error
      #   or recommended remediation steps
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :links, HubspotSDK::Internal::Type::HashOf[String]

      # @!method initialize(id:, links: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubspotSDK::Models::TaskLocator} for more details.
      #
      #   @param id [String] The unique identifier for the task.
      #
      #   @param links [Hash{Symbol=>String}] A map of link names to associated URIs containing documentation about the error
    end
  end
end
