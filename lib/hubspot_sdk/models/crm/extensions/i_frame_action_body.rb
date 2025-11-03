# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class IFrameActionBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute height
          #
          #   @return [Integer]
          required :height, Integer

          # @!attribute property_names_included
          #
          #   @return [Array<String>]
          required :property_names_included,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :propertyNamesIncluded

          # @!attribute type
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::IFrameActionBody::Type]
          required :type, enum: -> { HubspotSDK::Crm::Extensions::IFrameActionBody::Type }

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!attribute width
          #
          #   @return [Integer]
          required :width, Integer

          # @!attribute label
          #
          #   @return [String, nil]
          optional :label, String

          # @!method initialize(height:, property_names_included:, type:, url:, width:, label: nil)
          #   @param height [Integer]
          #   @param property_names_included [Array<String>]
          #   @param type [Symbol, HubspotSDK::Models::Crm::Extensions::IFrameActionBody::Type]
          #   @param url [String]
          #   @param width [Integer]
          #   @param label [String]

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
