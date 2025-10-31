# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalOption < HubspotSDK::Internal::Type::BaseModel
        # @!attribute description
        #
        #   @return [String]
        required :description, String

        # @!attribute display_order
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute double_data
        #
        #   @return [Float]
        required :double_data, Float, api_name: :doubleData

        # @!attribute hidden
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute read_only
        #
        #   @return [Boolean]
        required :read_only, HubspotSDK::Internal::Type::Boolean, api_name: :readOnly

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!method initialize(description:, display_order:, double_data:, hidden:, label:, read_only:, value:)
        #   @param description [String]
        #   @param display_order [Integer]
        #   @param double_data [Float]
        #   @param hidden [Boolean]
        #   @param label [String]
        #   @param read_only [Boolean]
        #   @param value [String]
      end
    end
  end
end
