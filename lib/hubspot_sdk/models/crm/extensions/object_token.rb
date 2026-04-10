# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class ObjectToken < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute value
          #   The value of the property
          #
          #   @return [String]
          required :value, String

          # @!attribute data_type
          #   Type of data represented by this property.
          #
          #   @return [Symbol, HubSpotSDK::Models::Crm::Extensions::ObjectToken::DataType, nil]
          optional :data_type,
                   enum: -> {
                     HubSpotSDK::Crm::Extensions::ObjectToken::DataType
                   },
                   api_name: :dataType

          # @!attribute label
          #   The label for this property as you'd like it displayed to users.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute name
          #   An internal identifier for this property. This value must be unique TODO.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(value:, data_type: nil, label: nil, name: nil)
          #   @param value [String] The value of the property
          #
          #   @param data_type [Symbol, HubSpotSDK::Models::Crm::Extensions::ObjectToken::DataType] Type of data represented by this property.
          #
          #   @param label [String] The label for this property as you'd like it displayed to users.
          #
          #   @param name [String] An internal identifier for this property. This value must be unique TODO.

          # Type of data represented by this property.
          #
          # @see HubSpotSDK::Models::Crm::Extensions::ObjectToken#data_type
          module DataType
            extend HubSpotSDK::Internal::Type::Enum

            BOOLEAN = :BOOLEAN
            CURRENCY = :CURRENCY
            DATE = :DATE
            DATETIME = :DATETIME
            EMAIL = :EMAIL
            LINK = :LINK
            NUMERIC = :NUMERIC
            STATUS = :STATUS
            STRING = :STRING

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
