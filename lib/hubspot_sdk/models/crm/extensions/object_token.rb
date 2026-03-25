# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ObjectToken < HubspotSDK::Internal::Type::BaseModel
          # @!attribute value
          #   The value of the property
          #
          #   @return [String]
          required :value, String

          # @!attribute data_type
          #   The type of the property. Can be one of CURRENCY, DATE, DATETIME, EMAIL, LINK,
          #   NUMERIC, STATUS
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::ObjectToken::DataType, nil]
          optional :data_type,
                   enum: -> {
                     HubspotSDK::Crm::Extensions::ObjectToken::DataType
                   },
                   api_name: :dataType

          # @!attribute label
          #   The label of the property as it will be displayed to users
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute name
          #   The name of the property
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(value:, data_type: nil, label: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::ObjectToken} for more details.
          #
          #   @param value [String] The value of the property
          #
          #   @param data_type [Symbol, HubspotSDK::Models::Crm::Extensions::ObjectToken::DataType] The type of the property. Can be one of CURRENCY, DATE, DATETIME, EMAIL, LINK, N
          #
          #   @param label [String] The label of the property as it will be displayed to users
          #
          #   @param name [String] The name of the property

          # The type of the property. Can be one of CURRENCY, DATE, DATETIME, EMAIL, LINK,
          # NUMERIC, STATUS
          #
          # @see HubspotSDK::Models::Crm::Extensions::ObjectToken#data_type
          module DataType
            extend HubspotSDK::Internal::Type::Enum

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
