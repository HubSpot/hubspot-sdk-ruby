# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ExtractMostRecentEmailReplyText < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::ExtractMostRecentEmailReplyText::Operator }

        # @!attribute inputs
        #
        #   @return [Array<Object>, nil]
        optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT = :EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
