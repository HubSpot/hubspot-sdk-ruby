# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class ObjectTypePropertyCreate < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate,
                HubspotSDK::Internal::AnyHash
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
            returns(
              HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::OrSymbol
            )
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

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :hidden

          sig { params(hidden: T::Boolean).void }
          attr_writer :hidden

          # Controls how numeric properties are formatted in the HubSpot UI
          sig do
            returns(
              T.nilable(
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::OrSymbol
              )
            )
          end
          attr_reader :number_display_hint

          sig do
            params(
              number_display_hint:
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::OrSymbol
            ).void
          end
          attr_writer :number_display_hint

          # A list of available options for the property. This field is only required for
          # enumerated properties.
          sig { returns(T.nilable(T::Array[HubspotSDK::OptionInput])) }
          attr_reader :options

          sig do
            params(options: T::Array[HubspotSDK::OptionInput::OrHash]).void
          end
          attr_writer :options

          # Controls how the property options will be sorted in the HubSpot UI.
          sig do
            returns(
              T.nilable(
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OptionSortStrategy::OrSymbol
              )
            )
          end
          attr_reader :option_sort_strategy

          sig do
            params(
              option_sort_strategy:
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OptionSortStrategy::OrSymbol
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
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::OrSymbol
              )
            )
          end
          attr_reader :text_display_hint

          sig do
            params(
              text_display_hint:
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::OrSymbol
            ).void
          end
          attr_writer :text_display_hint

          # Defines a property to create.
          sig do
            params(
              field_type: String,
              label: String,
              name: String,
              type:
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::OrSymbol,
              description: String,
              display_order: Integer,
              form_field: T::Boolean,
              group_name: String,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              number_display_hint:
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::OrSymbol,
              options: T::Array[HubspotSDK::OptionInput::OrHash],
              option_sort_strategy:
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OptionSortStrategy::OrSymbol,
              referenced_object_type: String,
              searchable_in_global_search: T::Boolean,
              show_currency_symbol: T::Boolean,
              text_display_hint:
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::OrSymbol
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
            # Whether the property can be used in a HubSpot form.
            form_field: nil,
            # The name of the group this property belongs to.
            group_name: nil,
            # Whether or not the property's value must be unique. Once set, this can't be
            # changed.
            has_unique_value: nil,
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
                type:
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::OrSymbol,
                description: String,
                display_order: Integer,
                form_field: T::Boolean,
                group_name: String,
                has_unique_value: T::Boolean,
                hidden: T::Boolean,
                number_display_hint:
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::OrSymbol,
                options: T::Array[HubspotSDK::OptionInput],
                option_sort_strategy:
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OptionSortStrategy::OrSymbol,
                referenced_object_type: String,
                searchable_in_global_search: T::Boolean,
                show_currency_symbol: T::Boolean,
                text_display_hint:
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The data type of the property.
          module Type
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRING =
              T.let(
                :string,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::TaggedSymbol
              )
            NUMBER =
              T.let(
                :number,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::TaggedSymbol
              )
            DATE =
              T.let(
                :date,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::TaggedSymbol
              )
            DATETIME =
              T.let(
                :datetime,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::TaggedSymbol
              )
            ENUMERATION =
              T.let(
                :enumeration,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::TaggedSymbol
              )
            BOOL =
              T.let(
                :bool,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Controls how numeric properties are formatted in the HubSpot UI
          module NumberDisplayHint
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNFORMATTED =
              T.let(
                :unformatted,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
              )
            FORMATTED =
              T.let(
                :formatted,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
              )
            PERCENTAGE =
              T.let(
                :percentage,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
              )
            DURATION =
              T.let(
                :duration,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
              )
            PROBABILITY =
              T.let(
                :probability,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::NumberDisplayHint::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Controls how the property options will be sorted in the HubSpot UI.
          module OptionSortStrategy
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OptionSortStrategy
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DISPLAY_ORDER =
              T.let(
                :DISPLAY_ORDER,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OptionSortStrategy::TaggedSymbol
              )
            ALPHABETICAL =
              T.let(
                :ALPHABETICAL,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OptionSortStrategy::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OptionSortStrategy::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Controls how text properties are formatted in the HubSpot UI
          module TextDisplayHint
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNFORMATTED_SINGLE_LINE =
              T.let(
                :unformatted_single_line,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              )
            MULTI_LINE =
              T.let(
                :multi_line,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              )
            EMAIL =
              T.let(
                :email,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              )
            PHONE_NUMBER =
              T.let(
                :phone_number,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              )
            DOMAIN_NAME =
              T.let(
                :domain_name,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              )
            IP_ADDRESS =
              T.let(
                :ip_address,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              )
            PHYSICAL_ADDRESS =
              T.let(
                :physical_address,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              )
            POSTAL_CODE =
              T.let(
                :postal_code,
                HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::TextDisplayHint::TaggedSymbol
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
end
