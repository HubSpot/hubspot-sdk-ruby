# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Option1 < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute hidden
        #
        #   @return [Boolean]
        required :hidden, HubSpotSDK::Internal::Type::Boolean

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute display_order
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!method initialize(hidden:, label:, value:, description: nil, display_order: nil)
        #   @param hidden [Boolean]
        #   @param label [String]
        #   @param value [String]
        #   @param description [String]
        #   @param display_order [Integer]
      end
    end
  end
end
