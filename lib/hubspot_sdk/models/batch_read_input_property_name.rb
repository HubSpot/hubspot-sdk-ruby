# frozen_string_literal: true

module HubSpotSDK
  module Models
    class BatchReadInputPropertyName < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute archived
      #
      #   @return [Boolean]
      required :archived, HubSpotSDK::Internal::Type::Boolean

      # @!attribute data_sensitivity
      #
      #   @return [Symbol, HubSpotSDK::Models::BatchReadInputPropertyName::DataSensitivity]
      required :data_sensitivity,
               enum: -> { HubSpotSDK::BatchReadInputPropertyName::DataSensitivity },
               api_name: :dataSensitivity

      # @!attribute inputs
      #
      #   @return [Array<HubSpotSDK::Models::PropertyName>]
      required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyName] }

      # @!method initialize(archived:, data_sensitivity:, inputs:)
      #   @param archived [Boolean]
      #   @param data_sensitivity [Symbol, HubSpotSDK::Models::BatchReadInputPropertyName::DataSensitivity]
      #   @param inputs [Array<HubSpotSDK::Models::PropertyName>]

      # @see HubSpotSDK::Models::BatchReadInputPropertyName#data_sensitivity
      module DataSensitivity
        extend HubSpotSDK::Internal::Type::Enum

        HIGHLY_SENSITIVE = :highly_sensitive
        NON_SENSITIVE = :non_sensitive
        SENSITIVE = :sensitive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
