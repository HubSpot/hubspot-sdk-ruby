# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class Condition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::Condition::FilterType]
        required :filter_type, enum: -> { HubSpotSDK::Webhooks::Condition::FilterType }, api_name: :filterType

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::Condition::Operator]
        required :operator, enum: -> { HubSpotSDK::Webhooks::Condition::Operator }

        # @!attribute property
        #
        #   @return [String]
        required :property, String

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!attribute values
        #
        #   @return [Array<String>, nil]
        optional :values, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(filter_type:, operator:, property:, value: nil, values: nil)
        #   @param filter_type [Symbol, HubSpotSDK::Models::Webhooks::Condition::FilterType]
        #   @param operator [Symbol, HubSpotSDK::Models::Webhooks::Condition::Operator]
        #   @param property [String]
        #   @param value [String]
        #   @param values [Array<String>]

        # @see HubSpotSDK::Models::Webhooks::Condition#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          CRM_OBJECT_PROPERTY = :CRM_OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Webhooks::Condition#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          CONTAINS = :CONTAINS
          ENDS_WITH = :ENDS_WITH
          EQ = :EQ
          GT = :GT
          GTE = :GTE
          IN = :IN
          IS_EMPTY = :IS_EMPTY
          IS_NOT_EMPTY = :IS_NOT_EMPTY
          LT = :LT
          LTE = :LTE
          N_EQ = :N_EQ
          NOT_IN = :NOT_IN
          STARTS_WITH = :STARTS_WITH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
