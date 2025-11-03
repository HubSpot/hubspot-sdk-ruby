# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class TimelineEventIFrame < HubspotSDK::Internal::Type::BaseModel
        # @!attribute header_label
        #   The label of the modal window that displays the iframe contents.
        #
        #   @return [String]
        required :header_label, String, api_name: :headerLabel

        # @!attribute height
        #   The height of the modal window in pixels.
        #
        #   @return [Integer]
        required :height, Integer

        # @!attribute link_label
        #   The text displaying the link that will display the iframe.
        #
        #   @return [String]
        required :link_label, String, api_name: :linkLabel

        # @!attribute url
        #   The URI of the iframe contents.
        #
        #   @return [String]
        required :url, String

        # @!attribute width
        #   The width of the modal window in pixels.
        #
        #   @return [Integer]
        required :width, Integer

        # @!method initialize(header_label:, height:, link_label:, url:, width:)
        #   @param header_label [String] The label of the modal window that displays the iframe contents.
        #
        #   @param height [Integer] The height of the modal window in pixels.
        #
        #   @param link_label [String] The text displaying the link that will display the iframe.
        #
        #   @param url [String] The URI of the iframe contents.
        #
        #   @param width [Integer] The width of the modal window in pixels.
      end
    end
  end
end
