# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicOption < HubspotSDK::Internal::Type::BaseModel
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

        # @!method initialize(label:, value:, description: nil, display_order: nil)
        #   @param label [String]
        #   @param value [String]
        #   @param description [String]
        #   @param display_order [Integer]
      end
    end
  end
end
