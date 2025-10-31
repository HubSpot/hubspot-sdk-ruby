# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchReadInputPropertyName < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::PropertyName>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyName] }

        # @!attribute data_sensitivity
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::BatchReadInputPropertyName::DataSensitivity, nil]
        optional :data_sensitivity,
                 enum: -> { HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity },
                 api_name: :dataSensitivity

        # @!method initialize(archived:, inputs:, data_sensitivity: nil)
        #   @param archived [Boolean]
        #   @param inputs [Array<HubspotSDK::Models::PropertyName>]
        #   @param data_sensitivity [Symbol, HubspotSDK::Models::CRM::BatchReadInputPropertyName::DataSensitivity]

        # @see HubspotSDK::Models::CRM::BatchReadInputPropertyName#data_sensitivity
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
end
