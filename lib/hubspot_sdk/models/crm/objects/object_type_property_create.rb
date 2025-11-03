# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class ObjectTypePropertyCreate < HubspotSDK::Internal::Type::BaseModel
          # @!attribute field_type
          #   Controls how the property appears in HubSpot.
          #
          #   @return [String]
          required :field_type, String, api_name: :fieldType

          # @!attribute label
          #   A human-readable property label that will be shown in HubSpot.
          #
          #   @return [String]
          required :label, String

          # @!attribute name
          #   The internal property name, which must be used when referencing the property
          #   from the API.
          #
          #   @return [String]
          required :name, String

          # @!attribute type
          #   The data type of the property.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate::Type]
          required :type, enum: -> { HubspotSDK::Crm::Objects::ObjectTypePropertyCreate::Type }

          # @!attribute description
          #   A description of the property that will be shown as help text in HubSpot.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute display_order
          #   The order that this property should be displayed in the HubSpot UI relative to
          #   other properties for this object type. Properties are displayed in order
          #   starting with the lowest positive integer value. A value of -1 will cause the
          #   property to be displayed **after** any positive values.
          #
          #   @return [Integer, nil]
          optional :display_order, Integer, api_name: :displayOrder

          # @!attribute form_field
          #   Whether the property can be used in a HubSpot form.
          #
          #   @return [Boolean, nil]
          optional :form_field, HubspotSDK::Internal::Type::Boolean, api_name: :formField

          # @!attribute group_name
          #   The name of the group this property belongs to.
          #
          #   @return [String, nil]
          optional :group_name, String, api_name: :groupName

          # @!attribute has_unique_value
          #   Whether or not the property's value must be unique. Once set, this can't be
          #   changed.
          #
          #   @return [Boolean, nil]
          optional :has_unique_value, HubspotSDK::Internal::Type::Boolean, api_name: :hasUniqueValue

          # @!attribute hidden
          #
          #   @return [Boolean, nil]
          optional :hidden, HubspotSDK::Internal::Type::Boolean

          # @!attribute number_display_hint
          #   Controls how numeric properties are formatted in the HubSpot UI
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate::NumberDisplayHint, nil]
          optional :number_display_hint,
                   enum: -> { HubspotSDK::Crm::Objects::ObjectTypePropertyCreate::NumberDisplayHint },
                   api_name: :numberDisplayHint

          # @!attribute options
          #   A list of available options for the property. This field is only required for
          #   enumerated properties.
          #
          #   @return [Array<HubspotSDK::Models::OptionInput>, nil]
          optional :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::OptionInput] }

          # @!attribute option_sort_strategy
          #   Controls how the property options will be sorted in the HubSpot UI.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate::OptionSortStrategy, nil]
          optional :option_sort_strategy,
                   enum: -> { HubspotSDK::Crm::Objects::ObjectTypePropertyCreate::OptionSortStrategy },
                   api_name: :optionSortStrategy

          # @!attribute referenced_object_type
          #   Defines the options this property will return, e.g. OWNER would return name of
          #   users on the portal.
          #
          #   @return [String, nil]
          optional :referenced_object_type, String, api_name: :referencedObjectType

          # @!attribute searchable_in_global_search
          #   Allow users to search for information entered to this field (limited to 3
          #   properties)
          #
          #   @return [Boolean, nil]
          optional :searchable_in_global_search,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :searchableInGlobalSearch

          # @!attribute show_currency_symbol
          #   Whether the property will display the currency symbol in the HubSpot UI.
          #
          #   @return [Boolean, nil]
          optional :show_currency_symbol, HubspotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

          # @!attribute text_display_hint
          #   Controls how text properties are formatted in the HubSpot UI
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate::TextDisplayHint, nil]
          optional :text_display_hint,
                   enum: -> { HubspotSDK::Crm::Objects::ObjectTypePropertyCreate::TextDisplayHint },
                   api_name: :textDisplayHint

          # @!method initialize(field_type:, label:, name:, type:, description: nil, display_order: nil, form_field: nil, group_name: nil, has_unique_value: nil, hidden: nil, number_display_hint: nil, options: nil, option_sort_strategy: nil, referenced_object_type: nil, searchable_in_global_search: nil, show_currency_symbol: nil, text_display_hint: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate} for more details.
          #
          #   Defines a property to create.
          #
          #   @param field_type [String] Controls how the property appears in HubSpot.
          #
          #   @param label [String] A human-readable property label that will be shown in HubSpot.
          #
          #   @param name [String] The internal property name, which must be used when referencing the property fro
          #
          #   @param type [Symbol, HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate::Type] The data type of the property.
          #
          #   @param description [String] A description of the property that will be shown as help text in HubSpot.
          #
          #   @param display_order [Integer] The order that this property should be displayed in the HubSpot UI relative to o
          #
          #   @param form_field [Boolean] Whether the property can be used in a HubSpot form.
          #
          #   @param group_name [String] The name of the group this property belongs to.
          #
          #   @param has_unique_value [Boolean] Whether or not the property's value must be unique. Once set, this can't be chan
          #
          #   @param hidden [Boolean]
          #
          #   @param number_display_hint [Symbol, HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate::NumberDisplayHint] Controls how numeric properties are formatted in the HubSpot UI
          #
          #   @param options [Array<HubspotSDK::Models::OptionInput>] A list of available options for the property. This field is only required for en
          #
          #   @param option_sort_strategy [Symbol, HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate::OptionSortStrategy] Controls how the property options will be sorted in the HubSpot UI.
          #
          #   @param referenced_object_type [String] Defines the options this property will return, e.g. OWNER would return name of u
          #
          #   @param searchable_in_global_search [Boolean] Allow users to search for information entered to this field (limited to 3 proper
          #
          #   @param show_currency_symbol [Boolean] Whether the property will display the currency symbol in the HubSpot UI.
          #
          #   @param text_display_hint [Symbol, HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate::TextDisplayHint] Controls how text properties are formatted in the HubSpot UI

          # The data type of the property.
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate#type
          module Type
            extend HubspotSDK::Internal::Type::Enum

            STRING = :string
            NUMBER = :number
            DATE = :date
            DATETIME = :datetime
            ENUMERATION = :enumeration
            BOOL = :bool

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Controls how numeric properties are formatted in the HubSpot UI
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate#number_display_hint
          module NumberDisplayHint
            extend HubspotSDK::Internal::Type::Enum

            UNFORMATTED = :unformatted
            FORMATTED = :formatted
            CURRENCY = :currency
            PERCENTAGE = :percentage
            DURATION = :duration
            PROBABILITY = :probability

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Controls how the property options will be sorted in the HubSpot UI.
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate#option_sort_strategy
          module OptionSortStrategy
            extend HubspotSDK::Internal::Type::Enum

            DISPLAY_ORDER = :DISPLAY_ORDER
            ALPHABETICAL = :ALPHABETICAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Controls how text properties are formatted in the HubSpot UI
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate#text_display_hint
          module TextDisplayHint
            extend HubspotSDK::Internal::Type::Enum

            UNFORMATTED_SINGLE_LINE = :unformatted_single_line
            MULTI_LINE = :multi_line
            EMAIL = :email
            PHONE_NUMBER = :phone_number
            DOMAIN_NAME = :domain_name
            IP_ADDRESS = :ip_address
            PHYSICAL_ADDRESS = :physical_address
            POSTAL_CODE = :postal_code

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
