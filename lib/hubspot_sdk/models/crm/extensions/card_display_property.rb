# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardDisplayProperty < HubspotSDK::Internal::Type::BaseModel
          # @!attribute data_type
          #   Type of data represented by this property.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::CardDisplayProperty::DataType]
          required :data_type,
                   enum: -> { HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType },
                   api_name: :dataType

          # @!attribute label
          #   The label for this property as you'd like it displayed to users.
          #
          #   @return [String]
          required :label, String

          # @!attribute name
          #   An internal identifier for this property. This value must be unique TODO.
          #
          #   @return [String]
          required :name, String

          # @!attribute options
          #   An array of available options that can be displayed. Only used in when
          #   `dataType` is `STATUS`.
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::DisplayOption>]
          required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Extensions::DisplayOption] }

          # @!method initialize(data_type:, label:, name:, options:)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::CardDisplayProperty} for more details.
          #
          #   @param data_type [Symbol, HubspotSDK::Models::Crm::Extensions::CardDisplayProperty::DataType] Type of data represented by this property.
          #
          #   @param label [String] The label for this property as you'd like it displayed to users.
          #
          #   @param name [String] An internal identifier for this property. This value must be unique TODO.
          #
          #   @param options [Array<HubspotSDK::Models::Crm::Extensions::DisplayOption>] An array of available options that can be displayed. Only used in when `dataType

          # Type of data represented by this property.
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardDisplayProperty#data_type
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
