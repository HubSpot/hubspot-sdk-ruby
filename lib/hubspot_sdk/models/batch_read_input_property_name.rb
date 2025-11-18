# frozen_string_literal: true

module HubspotSDK
  module Models
    class BatchReadInputPropertyName < HubspotSDK::Internal::Type::BaseModel
      # @!attribute archived
      #
      #   @return [Boolean]
      required :archived, HubspotSDK::Internal::Type::Boolean

      # @!attribute data_sensitivity
      #
      #   @return [Symbol, HubspotSDK::Models::BatchReadInputPropertyName::DataSensitivity]
      required :data_sensitivity,
               enum: -> { HubspotSDK::BatchReadInputPropertyName::DataSensitivity },
               api_name: :dataSensitivity

      # @!attribute inputs
      #
      #   @return [Array<HubspotSDK::Models::PropertyName>]
      required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyName] }

      # @!method initialize(archived:, data_sensitivity:, inputs:)
      #   @param archived [Boolean]
      #   @param data_sensitivity [Symbol, HubspotSDK::Models::BatchReadInputPropertyName::DataSensitivity]
      #   @param inputs [Array<HubspotSDK::Models::PropertyName>]

      # @see HubspotSDK::Models::BatchReadInputPropertyName#data_sensitivity
      module DataSensitivity
        extend HubspotSDK::Internal::Type::Enum

        NON_SENSITIVE = :non_sensitive
        SENSITIVE = :sensitive
        HIGHLY_SENSITIVE = :highly_sensitive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
