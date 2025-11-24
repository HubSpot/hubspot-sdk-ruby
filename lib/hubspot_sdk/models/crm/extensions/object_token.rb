# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ObjectToken < HubspotSDK::Internal::Type::BaseModel
          # @!attribute value
          #
          #   @return [String]
          required :value, String

          # @!attribute data_type
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::ObjectToken::DataType, nil]
          optional :data_type,
                   enum: -> {
                     HubspotSDK::Crm::Extensions::ObjectToken::DataType
                   },
                   api_name: :dataType

          # @!attribute label
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(value:, data_type: nil, label: nil, name: nil)
          #   @param value [String]
          #   @param data_type [Symbol, HubspotSDK::Models::Crm::Extensions::ObjectToken::DataType]
          #   @param label [String]
          #   @param name [String]

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
