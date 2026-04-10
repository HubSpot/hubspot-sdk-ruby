# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ObjectTypePropertyCreate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ObjectTypePropertyCreate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Controls how the property appears in HubSpot.
        sig { returns(String) }
        attr_accessor :field_type

        # A human-readable property label that will be shown in HubSpot.
        sig { returns(String) }
        attr_accessor :label

        # The internal property name, which must be used when referencing the property
        # from the API.
        sig { returns(String) }
        attr_accessor :name

        # The data type of the property.
        sig do
          returns(HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::OrSymbol)
        end
        attr_accessor :type

        # A description of the property that will be shown as help text in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The order that this property should be displayed in the HubSpot UI relative to
        # other properties for this object type. Properties are displayed in order
        # starting with the lowest positive integer value. A value of -1 will cause the
        # property to be displayed **after** any positive values.
        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        # Specifies the reference type for external options associated with the property.
        sig { returns(T.nilable(String)) }
        attr_reader :external_options_reference_type

        sig { params(external_options_reference_type: String).void }
        attr_writer :external_options_reference_type

        # Whether the property can be used in a HubSpot form.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :form_field

        sig { params(form_field: T::Boolean).void }
        attr_writer :form_field

        # The name of the group this property belongs to.
        sig { returns(T.nilable(String)) }
        attr_reader :group_name

        sig { params(group_name: String).void }
        attr_writer :group_name

        # Whether or not the property's value must be unique. Once set, this can't be
        # changed.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_unique_value

        sig { params(has_unique_value: T::Boolean).void }
        attr_writer :has_unique_value

        # Hidden options won't be shown in HubSpot.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hidden

        sig { params(hidden: T::Boolean).void }
        attr_writer :hidden

        # Controls how numeric properties are formatted in the HubSpot UI
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::OrSymbol
            )
          )
        end
        attr_reader :number_display_hint

        sig do
          params(
            number_display_hint:
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::OrSymbol
          ).void
        end
        attr_writer :number_display_hint

        # A list of available options for the property. This field is only required for
        # enumerated properties.
        sig { returns(T.nilable(T::Array[HubSpotSDK::OptionInput])) }
        attr_reader :options

        sig { params(options: T::Array[HubSpotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        # Controls how the property options will be sorted in the HubSpot UI.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Crm::ObjectTypePropertyCreate::OptionSortStrategy::OrSymbol
            )
          )
        end
        attr_reader :option_sort_strategy

        sig do
          params(
            option_sort_strategy:
              HubSpotSDK::Crm::ObjectTypePropertyCreate::OptionSortStrategy::OrSymbol
          ).void
        end
        attr_writer :option_sort_strategy

        # Defines the options this property will return, e.g. OWNER would return name of
        # users on the portal.
        sig { returns(T.nilable(String)) }
        attr_reader :referenced_object_type

        sig { params(referenced_object_type: String).void }
        attr_writer :referenced_object_type

        # Allow users to search for information entered to this field (limited to 3
        # properties)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :searchable_in_global_search

        sig { params(searchable_in_global_search: T::Boolean).void }
        attr_writer :searchable_in_global_search

        # Whether the property will display the currency symbol in the HubSpot UI.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_currency_symbol

        sig { params(show_currency_symbol: T::Boolean).void }
        attr_writer :show_currency_symbol

        # Controls how text properties are formatted in the HubSpot UI
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::OrSymbol
            )
          )
        end
        attr_reader :text_display_hint

        sig do
          params(
            text_display_hint:
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::OrSymbol
          ).void
        end
        attr_writer :text_display_hint

        sig do
          params(
            field_type: String,
            label: String,
            name: String,
            type: HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::OrSymbol,
            description: String,
            display_order: Integer,
            external_options_reference_type: String,
            form_field: T::Boolean,
            group_name: String,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            number_display_hint:
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::OrSymbol,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
            option_sort_strategy:
              HubSpotSDK::Crm::ObjectTypePropertyCreate::OptionSortStrategy::OrSymbol,
            referenced_object_type: String,
            searchable_in_global_search: T::Boolean,
            show_currency_symbol: T::Boolean,
            text_display_hint:
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Controls how the property appears in HubSpot.
          field_type:,
          # A human-readable property label that will be shown in HubSpot.
          label:,
          # The internal property name, which must be used when referencing the property
          # from the API.
          name:,
          # The data type of the property.
          type:,
          # A description of the property that will be shown as help text in HubSpot.
          description: nil,
          # The order that this property should be displayed in the HubSpot UI relative to
          # other properties for this object type. Properties are displayed in order
          # starting with the lowest positive integer value. A value of -1 will cause the
          # property to be displayed **after** any positive values.
          display_order: nil,
          # Specifies the reference type for external options associated with the property.
          external_options_reference_type: nil,
          # Whether the property can be used in a HubSpot form.
          form_field: nil,
          # The name of the group this property belongs to.
          group_name: nil,
          # Whether or not the property's value must be unique. Once set, this can't be
          # changed.
          has_unique_value: nil,
          # Hidden options won't be shown in HubSpot.
          hidden: nil,
          # Controls how numeric properties are formatted in the HubSpot UI
          number_display_hint: nil,
          # A list of available options for the property. This field is only required for
          # enumerated properties.
          options: nil,
          # Controls how the property options will be sorted in the HubSpot UI.
          option_sort_strategy: nil,
          # Defines the options this property will return, e.g. OWNER would return name of
          # users on the portal.
          referenced_object_type: nil,
          # Allow users to search for information entered to this field (limited to 3
          # properties)
          searchable_in_global_search: nil,
          # Whether the property will display the currency symbol in the HubSpot UI.
          show_currency_symbol: nil,
          # Controls how text properties are formatted in the HubSpot UI
          text_display_hint: nil
        )
        end

        sig do
          override.returns(
            {
              field_type: String,
              label: String,
              name: String,
              type: HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::OrSymbol,
              description: String,
              display_order: Integer,
              external_options_reference_type: String,
              form_field: T::Boolean,
              group_name: String,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              number_display_hint:
                HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::OrSymbol,
              options: T::Array[HubSpotSDK::OptionInput],
              option_sort_strategy:
                HubSpotSDK::Crm::ObjectTypePropertyCreate::OptionSortStrategy::OrSymbol,
              referenced_object_type: String,
              searchable_in_global_search: T::Boolean,
              show_currency_symbol: T::Boolean,
              text_display_hint:
                HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The data type of the property.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::ObjectTypePropertyCreate::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :bool,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::TaggedSymbol
            )
          DATETIME =
            T.let(
              :datetime,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::ObjectTypePropertyCreate::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Controls how numeric properties are formatted in the HubSpot UI
        module NumberDisplayHint
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CURRENCY =
            T.let(
              :currency,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
            )
          DURATION =
            T.let(
              :duration,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
            )
          FORMATTED =
            T.let(
              :formatted,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
            )
          PERCENTAGE =
            T.let(
              :percentage,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
            )
          PROBABILITY =
            T.let(
              :probability,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
            )
          UNFORMATTED =
            T.let(
              :unformatted,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Controls how the property options will be sorted in the HubSpot UI.
        module OptionSortStrategy
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::ObjectTypePropertyCreate::OptionSortStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALPHABETICAL =
            T.let(
              :ALPHABETICAL,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::OptionSortStrategy::TaggedSymbol
            )
          DISPLAY_ORDER =
            T.let(
              :DISPLAY_ORDER,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::OptionSortStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::ObjectTypePropertyCreate::OptionSortStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Controls how text properties are formatted in the HubSpot UI
        module TextDisplayHint
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOMAIN_NAME =
            T.let(
              :domain_name,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
            )
          EMAIL =
            T.let(
              :email,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
            )
          IP_ADDRESS =
            T.let(
              :ip_address,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
            )
          MULTI_LINE =
            T.let(
              :multi_line,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
            )
          PHYSICAL_ADDRESS =
            T.let(
              :physical_address,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
            )
          POSTAL_CODE =
            T.let(
              :postal_code,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
            )
          UNFORMATTED_SINGLE_LINE =
            T.let(
              :unformatted_single_line,
              HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
