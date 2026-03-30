# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class IFrameActionBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute height
          #   The height of the iframe in pixels.
          #
          #   @return [Integer]
          required :height, Integer

          # @!attribute property_names_included
          #   A list of property names that will be included on the url of the iframe.
          #
          #   @return [Array<String>]
          required :property_names_included,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :propertyNamesIncluded

          # @!attribute type
          #   The type of status.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::IFrameActionBody::Type]
          required :type, enum: -> { HubspotSDK::Crm::Extensions::IFrameActionBody::Type }

          # @!attribute url
          #   The URL endpoint that will be loaded in the iframe when triggered.
          #
          #   @return [String]
          required :url, String

          # @!attribute width
          #   The width of the iframe in pixels.
          #
          #   @return [Integer]
          required :width, Integer

          # @!attribute label
          #   The label for this property as you'd like it displayed to users.
          #
          #   @return [String, nil]
          optional :label, String

          # @!method initialize(height:, property_names_included:, type:, url:, width:, label: nil)
          #   @param height [Integer] The height of the iframe in pixels.
          #
          #   @param property_names_included [Array<String>] A list of property names that will be included on the url of the iframe.
          #
          #   @param type [Symbol, HubspotSDK::Models::Crm::Extensions::IFrameActionBody::Type] The type of status.
          #
          #   @param url [String] The URL endpoint that will be loaded in the iframe when triggered.
          #
          #   @param width [Integer] The width of the iframe in pixels.
          #
          #   @param label [String] The label for this property as you'd like it displayed to users.

          # The type of status.
          #
          # @see HubspotSDK::Models::Crm::Extensions::IFrameActionBody#type
          module Type
            extend HubspotSDK::Internal::Type::Enum

            IFRAME = :IFRAME

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
