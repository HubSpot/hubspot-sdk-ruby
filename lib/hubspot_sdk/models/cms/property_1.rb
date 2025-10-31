# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Property1 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute description
        #
        #   @return [String]
        required :description, String

        # @!attribute field_type
        #
        #   @return [String]
        required :field_type, String, api_name: :fieldType

        # @!attribute group_name
        #
        #   @return [String]
        required :group_name, String, api_name: :groupName

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #
        #   @return [Array<HubspotSDK::Models::Cms::Option1>]
        required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Option1] }

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute archived
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!attribute calculated
        #
        #   @return [Boolean, nil]
        optional :calculated, HubspotSDK::Internal::Type::Boolean

        # @!attribute calculation_formula
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_user_id
        #
        #   @return [String, nil]
        optional :created_user_id, String, api_name: :createdUserId

        # @!attribute data_sensitivity
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property1::DataSensitivity, nil]
        optional :data_sensitivity,
                 enum: -> { HubspotSDK::Cms::Property1::DataSensitivity },
                 api_name: :dataSensitivity

        # @!attribute date_display_hint
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property1::DateDisplayHint, nil]
        optional :date_display_hint,
                 enum: -> { HubspotSDK::Cms::Property1::DateDisplayHint },
                 api_name: :dateDisplayHint

        # @!attribute display_order
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute external_options
        #
        #   @return [Boolean, nil]
        optional :external_options, HubspotSDK::Internal::Type::Boolean, api_name: :externalOptions

        # @!attribute form_field
        #
        #   @return [Boolean, nil]
        optional :form_field, HubspotSDK::Internal::Type::Boolean, api_name: :formField

        # @!attribute has_unique_value
        #
        #   @return [Boolean, nil]
        optional :has_unique_value, HubspotSDK::Internal::Type::Boolean, api_name: :hasUniqueValue

        # @!attribute hidden
        #
        #   @return [Boolean, nil]
        optional :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute hubspot_defined
        #
        #   @return [Boolean, nil]
        optional :hubspot_defined, HubspotSDK::Internal::Type::Boolean, api_name: :hubspotDefined

        # @!attribute modification_metadata
        #
        #   @return [HubspotSDK::Models::PropertyModificationMetadata, nil]
        optional :modification_metadata,
                 -> { HubspotSDK::PropertyModificationMetadata },
                 api_name: :modificationMetadata

        # @!attribute referenced_object_type
        #
        #   @return [String, nil]
        optional :referenced_object_type, String, api_name: :referencedObjectType

        # @!attribute sensitive_data_categories
        #
        #   @return [Array<String>, nil]
        optional :sensitive_data_categories,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :sensitiveDataCategories

        # @!attribute show_currency_symbol
        #
        #   @return [Boolean, nil]
        optional :show_currency_symbol, HubspotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_user_id
        #
        #   @return [String, nil]
        optional :updated_user_id, String, api_name: :updatedUserId

        # @!method initialize(description:, field_type:, group_name:, label:, name:, options:, type:, archived: nil, archived_at: nil, calculated: nil, calculation_formula: nil, created_at: nil, created_user_id: nil, data_sensitivity: nil, date_display_hint: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, hubspot_defined: nil, modification_metadata: nil, referenced_object_type: nil, sensitive_data_categories: nil, show_currency_symbol: nil, updated_at: nil, updated_user_id: nil)
        #   @param description [String]
        #   @param field_type [String]
        #   @param group_name [String]
        #   @param label [String]
        #   @param name [String]
        #   @param options [Array<HubspotSDK::Models::Cms::Option1>]
        #   @param type [String]
        #   @param archived [Boolean]
        #   @param archived_at [Time]
        #   @param calculated [Boolean]
        #   @param calculation_formula [String]
        #   @param created_at [Time]
        #   @param created_user_id [String]
        #   @param data_sensitivity [Symbol, HubspotSDK::Models::Cms::Property1::DataSensitivity]
        #   @param date_display_hint [Symbol, HubspotSDK::Models::Cms::Property1::DateDisplayHint]
        #   @param display_order [Integer]
        #   @param external_options [Boolean]
        #   @param form_field [Boolean]
        #   @param has_unique_value [Boolean]
        #   @param hidden [Boolean]
        #   @param hubspot_defined [Boolean]
        #   @param modification_metadata [HubspotSDK::Models::PropertyModificationMetadata]
        #   @param referenced_object_type [String]
        #   @param sensitive_data_categories [Array<String>]
        #   @param show_currency_symbol [Boolean]
        #   @param updated_at [Time]
        #   @param updated_user_id [String]

        # @see HubspotSDK::Models::Cms::Property1#data_sensitivity
        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          NON_SENSITIVE = :non_sensitive
          SENSITIVE = :sensitive
          HIGHLY_SENSITIVE = :highly_sensitive

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Cms::Property1#date_display_hint
        module DateDisplayHint
          extend HubspotSDK::Internal::Type::Enum

          ABSOLUTE = :absolute
          ABSOLUTE_WITH_RELATIVE = :absolute_with_relative
          TIME_SINCE = :time_since
          TIME_UNTIL = :time_until

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
