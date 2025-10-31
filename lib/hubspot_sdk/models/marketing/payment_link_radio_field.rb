# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PaymentLinkRadioField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute default_values
        #
        #   @return [Array<String>]
        required :default_values, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :defaultValues

        # @!attribute dependent_fields
        #
        #   @return [Array<HubspotSDK::Models::Marketing::DependentField>]
        required :dependent_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::DependentField] },
                 api_name: :dependentFields

        # @!attribute field_type
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PaymentLinkRadioField::FieldType]
        required :field_type,
                 enum: -> { HubspotSDK::Marketing::PaymentLinkRadioField::FieldType },
                 api_name: :fieldType

        # @!attribute hidden
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute options
        #
        #   @return [Array<HubspotSDK::Models::Marketing::EnumeratedFieldOption>]
        required :options,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::EnumeratedFieldOption] }

        # @!attribute required
        #
        #   @return [Boolean]
        required :required, HubspotSDK::Internal::Type::Boolean

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(default_values:, dependent_fields:, field_type:, hidden:, label:, name:, object_type_id:, options:, required:, description: nil)
        #   @param default_values [Array<String>]
        #   @param dependent_fields [Array<HubspotSDK::Models::Marketing::DependentField>]
        #   @param field_type [Symbol, HubspotSDK::Models::Marketing::PaymentLinkRadioField::FieldType]
        #   @param hidden [Boolean]
        #   @param label [String]
        #   @param name [String]
        #   @param object_type_id [String]
        #   @param options [Array<HubspotSDK::Models::Marketing::EnumeratedFieldOption>]
        #   @param required [Boolean]
        #   @param description [String]

        # @see HubspotSDK::Models::Marketing::PaymentLinkRadioField#field_type
        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          PAYMENT_LINK_RADIO = :payment_link_radio

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
