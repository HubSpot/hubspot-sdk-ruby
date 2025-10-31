# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MultipleCheckboxesField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute default_values
        #   The values selected by default. Those values will be submitted unless the
        #   customer modifies them.
        #
        #   @return [Array<String>]
        required :default_values, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :defaultValues

        # @!attribute dependent_fields
        #   A list of other fields to make visible based on the value filled in for this
        #   field.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::DependentField>]
        required :dependent_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::DependentField] },
                 api_name: :dependentFields

        # @!attribute field_type
        #   Determines how the field will be displayed and validated.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::MultipleCheckboxesField::FieldType]
        required :field_type,
                 enum: -> { HubspotSDK::Marketing::MultipleCheckboxesField::FieldType },
                 api_name: :fieldType

        # @!attribute hidden
        #   Whether a field should be hidden or not. Hidden fields won't appear on the form,
        #   but can be used to pass a value to a property without requiring the customer to
        #   fill it in.
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute label
        #   The main label for the form field.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The identifier of the field. In combination with the object type ID, it must be
        #   unique.
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #   A unique ID for this field's CRM object type. For example a CONTACT field will
        #   have the object type ID 0-1.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute options
        #   The list of available choices for this field.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::EnumeratedFieldOption>]
        required :options,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::EnumeratedFieldOption] }

        # @!attribute required
        #   Whether a value for this field is required when submitting the form.
        #
        #   @return [Boolean]
        required :required, HubspotSDK::Internal::Type::Boolean

        # @!attribute description
        #   Additional text helping the customer to complete the field.
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(default_values:, dependent_fields:, field_type:, hidden:, label:, name:, object_type_id:, options:, required:, description: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::MultipleCheckboxesField} for more details.
        #
        #   A form field consisting of a set of checkboxes allowing multiple choices to be
        #   selected at one time.
        #
        #   @param default_values [Array<String>] The values selected by default. Those values will be submitted unless the custom
        #
        #   @param dependent_fields [Array<HubspotSDK::Models::Marketing::DependentField>] A list of other fields to make visible based on the value filled in for this fie
        #
        #   @param field_type [Symbol, HubspotSDK::Models::Marketing::MultipleCheckboxesField::FieldType] Determines how the field will be displayed and validated.
        #
        #   @param hidden [Boolean] Whether a field should be hidden or not. Hidden fields won't appear on the form,
        #
        #   @param label [String] The main label for the form field.
        #
        #   @param name [String] The identifier of the field. In combination with the object type ID, it must be
        #
        #   @param object_type_id [String] A unique ID for this field's CRM object type. For example a CONTACT field will h
        #
        #   @param options [Array<HubspotSDK::Models::Marketing::EnumeratedFieldOption>] The list of available choices for this field.
        #
        #   @param required [Boolean] Whether a value for this field is required when submitting the form.
        #
        #   @param description [String] Additional text helping the customer to complete the field.

        # Determines how the field will be displayed and validated.
        #
        # @see HubspotSDK::Models::Marketing::MultipleCheckboxesField#field_type
        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          MULTIPLE_CHECKBOXES = :multiple_checkboxes

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
