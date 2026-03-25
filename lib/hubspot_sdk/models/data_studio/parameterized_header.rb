# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class ParameterizedHeader < HubspotSDK::Internal::Type::BaseModel
        # @!attribute parameters
        #   An object containing additional parameters for the header, where each key is a
        #   parameter name and each value is a string representing the parameter's value.
        #
        #   @return [Hash{Symbol=>String}]
        required :parameters, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute value
        #   A string representing the main value of the header.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(parameters:, value:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::ParameterizedHeader} for more details.
        #
        #   @param parameters [Hash{Symbol=>String}] An object containing additional parameters for the header, where each key is a p
        #
        #   @param value [String] A string representing the main value of the header.
      end
    end
  end
end
