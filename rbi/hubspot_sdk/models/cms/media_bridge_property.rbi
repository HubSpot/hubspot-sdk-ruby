# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaBridgeProperty < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaBridgeProperty,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Object types permitted to use this property.
        sig { returns(T::Array[HubSpotSDK::Cms::ObjectTypeIDProto]) }
        attr_accessor :allowed_object_types

        # Whether the property is a calculated field.
        sig { returns(T::Boolean) }
        attr_accessor :calculated

        sig { returns(T::Boolean) }
        attr_accessor :can_archive

        sig { returns(T::Boolean) }
        attr_accessor :can_restore

        # The timestamp when the property was created, in ISO 8601 format.
        sig { returns(Integer) }
        attr_accessor :created_at

        # The ID of the user who created the property.
        sig { returns(Integer) }
        attr_accessor :created_user_id

        # The name of the related currency property.
        sig { returns(String) }
        attr_accessor :currency_property_name

        # Indicates the sensitivity level of the property, such as "non_sensitive",
        # "sensitive", or "highly_sensitive".
        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity::TaggedSymbol
          )
        end
        attr_accessor :data_sensitivity

        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint::TaggedSymbol
          )
        end
        attr_accessor :date_display_hint

        # Whether the property has been deleted.
        sig { returns(T::Boolean) }
        attr_accessor :deleted

        # A summary of the property's purpose.
        sig { returns(String) }
        attr_accessor :description

        # The mode in which the property is displayed. Can be: "current_value" or
        # "all_unique_versions".
        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode::TaggedSymbol
          )
        end
        attr_accessor :display_mode

        # The position of the item relative to others in the list.
        sig { returns(Integer) }
        attr_accessor :display_order

        sig { returns(T::Boolean) }
        attr_accessor :enforce_multivalue_uniqueness

        # Applicable only for enumeration type properties. Should be set to true with a
        # 'referencedObjectType' of 'OWNER'. Otherwise false.
        sig { returns(T::Boolean) }
        attr_accessor :external_options

        # When externalOptions is true, indicates the property's option values will be
        # populated from other systems (e.g., "OWNER" for the hubspot_owner_id property).
        sig { returns(String) }
        attr_accessor :external_options_reference_type

        # Deprecated. Whether the property is marked as a favorite.
        sig { returns(T::Boolean) }
        attr_accessor :favorited

        # Deprecated. The order position when marked as favorited.
        sig { returns(Integer) }
        attr_accessor :favorited_order

        # Determines how the property will appear in HubSpot's UI or on a form. Learn more
        # in the properties API guide.
        sig { returns(String) }
        attr_accessor :field_type

        # Whether the property can appear on forms.
        sig { returns(T::Boolean) }
        attr_accessor :form_field

        # The ID of the user who last updated the property.
        sig { returns(Integer) }
        attr_accessor :from_user_id

        # The name of the group to which the property is assigned.
        sig { returns(String) }
        attr_accessor :group_name

        # Whether the property is a unique identifier property.
        sig { returns(T::Boolean) }
        attr_accessor :has_unique_value

        # Whether or not the property will be hidden from the HubSpot UI. It's recommended
        # that this be set to false for custom properties.
        sig { returns(T::Boolean) }
        attr_accessor :hidden

        # A boolean value set to true for HubSpot default properties.
        sig { returns(T::Boolean) }
        attr_accessor :hubspot_defined

        # For default properties, whether the property has been customized. Equivalent to
        # the 'isCustomizedDefault' field.
        sig { returns(T::Boolean) }
        attr_accessor :is_customized_default

        # Whether the property can contain multiple values.
        sig { returns(T::Boolean) }
        attr_accessor :is_multi_valued

        # For default properties, whether the property has been customized. Equivalent to
        # the 'isCustomizedDefault' field.
        sig { returns(T::Boolean) }
        attr_accessor :is_partial

        # The display label for the property.
        sig { returns(String) }
        attr_accessor :label

        # Whether the property definition can be customized but not deleted.
        sig { returns(T::Boolean) }
        attr_accessor :mutable_definition_not_deletable

        # The internal name for the property.
        sig { returns(String) }
        attr_accessor :name

        # Hint for how a number property is displayed and validated in HubSpot's UI. Can
        # be: "unformatted", "formatted", "currency", "percentage", "duration", or
        # "probability".
        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol
          )
        end
        attr_accessor :number_display_hint

        # A list of valid options for the property. This field is required for enumerated
        # properties.
        sig { returns(T::Array[HubSpotSDK::AutomationActionsOption]) }
        attr_accessor :options

        # Whether options can be modified after creation.
        sig { returns(T::Boolean) }
        attr_accessor :options_are_mutable

        # Specifies how to sort property options. Can be either "DISPLAY_ORDER" to defer
        # to the displayOrder field, or "ALPHABETICAL".
        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy::TaggedSymbol
          )
        end
        attr_accessor :option_sort_strategy

        sig { returns(Integer) }
        attr_accessor :owning_app_id

        # The ID of the HubSpot account where the property is defined.
        sig { returns(Integer) }
        attr_accessor :portal_id

        # Whether the property's description is read-only.
        sig { returns(T::Boolean) }
        attr_accessor :read_only_definition

        # Indicates if the property's value is read-only.
        sig { returns(T::Boolean) }
        attr_accessor :read_only_value

        # Deprecated. Use externalOptionsReferenceType instead.
        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
          )
        end
        attr_accessor :referenced_object_type

        # Whether the property is searchable globaly.
        sig { returns(T::Boolean) }
        attr_accessor :searchable_in_global_search

        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode::TaggedSymbol
          )
        end
        attr_accessor :search_text_analysis_mode

        # When sensitiveData is true, lists the type of sensitive data contained in the
        # property (e.g., "HIPAA").
        sig { returns(T::Array[String]) }
        attr_accessor :sensitive_data_categories

        # Whether to show the currency symbol in HubSpot's UI.
        sig { returns(T::Boolean) }
        attr_accessor :show_currency_symbol

        # Hint for how the text is displayed and validated in HubSpot's UI. Can be:
        # "unformatted_single_line", "multi_line", "email", "phone_number", "domain_name",
        # "ip_address", "physical_address", or "postal_code".
        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
          )
        end
        attr_accessor :text_display_hint

        # The data type of the property, such as string or number.
        sig do
          returns(HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol)
        end
        attr_accessor :type

        # The timestamp when the property was last updated, in ISO 8601 format.
        sig { returns(Integer) }
        attr_accessor :updated_at

        # A HubSpot property
        sig do
          params(
            allowed_object_types:
              T::Array[HubSpotSDK::Cms::ObjectTypeIDProto::OrHash],
            calculated: T::Boolean,
            can_archive: T::Boolean,
            can_restore: T::Boolean,
            created_at: Integer,
            created_user_id: Integer,
            currency_property_name: String,
            data_sensitivity:
              HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity::OrSymbol,
            date_display_hint:
              HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint::OrSymbol,
            deleted: T::Boolean,
            description: String,
            display_mode:
              HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode::OrSymbol,
            display_order: Integer,
            enforce_multivalue_uniqueness: T::Boolean,
            external_options: T::Boolean,
            external_options_reference_type: String,
            favorited: T::Boolean,
            favorited_order: Integer,
            field_type: String,
            form_field: T::Boolean,
            from_user_id: Integer,
            group_name: String,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            hubspot_defined: T::Boolean,
            is_customized_default: T::Boolean,
            is_multi_valued: T::Boolean,
            is_partial: T::Boolean,
            label: String,
            mutable_definition_not_deletable: T::Boolean,
            name: String,
            number_display_hint:
              HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::OrSymbol,
            options: T::Array[HubSpotSDK::AutomationActionsOption::OrHash],
            options_are_mutable: T::Boolean,
            option_sort_strategy:
              HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy::OrSymbol,
            owning_app_id: Integer,
            portal_id: Integer,
            read_only_definition: T::Boolean,
            read_only_value: T::Boolean,
            referenced_object_type:
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::OrSymbol,
            searchable_in_global_search: T::Boolean,
            search_text_analysis_mode:
              HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode::OrSymbol,
            sensitive_data_categories: T::Array[String],
            show_currency_symbol: T::Boolean,
            text_display_hint:
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::OrSymbol,
            type: HubSpotSDK::Cms::MediaBridgeProperty::Type::OrSymbol,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Object types permitted to use this property.
          allowed_object_types:,
          # Whether the property is a calculated field.
          calculated:,
          can_archive:,
          can_restore:,
          # The timestamp when the property was created, in ISO 8601 format.
          created_at:,
          # The ID of the user who created the property.
          created_user_id:,
          # The name of the related currency property.
          currency_property_name:,
          # Indicates the sensitivity level of the property, such as "non_sensitive",
          # "sensitive", or "highly_sensitive".
          data_sensitivity:,
          date_display_hint:,
          # Whether the property has been deleted.
          deleted:,
          # A summary of the property's purpose.
          description:,
          # The mode in which the property is displayed. Can be: "current_value" or
          # "all_unique_versions".
          display_mode:,
          # The position of the item relative to others in the list.
          display_order:,
          enforce_multivalue_uniqueness:,
          # Applicable only for enumeration type properties. Should be set to true with a
          # 'referencedObjectType' of 'OWNER'. Otherwise false.
          external_options:,
          # When externalOptions is true, indicates the property's option values will be
          # populated from other systems (e.g., "OWNER" for the hubspot_owner_id property).
          external_options_reference_type:,
          # Deprecated. Whether the property is marked as a favorite.
          favorited:,
          # Deprecated. The order position when marked as favorited.
          favorited_order:,
          # Determines how the property will appear in HubSpot's UI or on a form. Learn more
          # in the properties API guide.
          field_type:,
          # Whether the property can appear on forms.
          form_field:,
          # The ID of the user who last updated the property.
          from_user_id:,
          # The name of the group to which the property is assigned.
          group_name:,
          # Whether the property is a unique identifier property.
          has_unique_value:,
          # Whether or not the property will be hidden from the HubSpot UI. It's recommended
          # that this be set to false for custom properties.
          hidden:,
          # A boolean value set to true for HubSpot default properties.
          hubspot_defined:,
          # For default properties, whether the property has been customized. Equivalent to
          # the 'isCustomizedDefault' field.
          is_customized_default:,
          # Whether the property can contain multiple values.
          is_multi_valued:,
          # For default properties, whether the property has been customized. Equivalent to
          # the 'isCustomizedDefault' field.
          is_partial:,
          # The display label for the property.
          label:,
          # Whether the property definition can be customized but not deleted.
          mutable_definition_not_deletable:,
          # The internal name for the property.
          name:,
          # Hint for how a number property is displayed and validated in HubSpot's UI. Can
          # be: "unformatted", "formatted", "currency", "percentage", "duration", or
          # "probability".
          number_display_hint:,
          # A list of valid options for the property. This field is required for enumerated
          # properties.
          options:,
          # Whether options can be modified after creation.
          options_are_mutable:,
          # Specifies how to sort property options. Can be either "DISPLAY_ORDER" to defer
          # to the displayOrder field, or "ALPHABETICAL".
          option_sort_strategy:,
          owning_app_id:,
          # The ID of the HubSpot account where the property is defined.
          portal_id:,
          # Whether the property's description is read-only.
          read_only_definition:,
          # Indicates if the property's value is read-only.
          read_only_value:,
          # Deprecated. Use externalOptionsReferenceType instead.
          referenced_object_type:,
          # Whether the property is searchable globaly.
          searchable_in_global_search:,
          search_text_analysis_mode:,
          # When sensitiveData is true, lists the type of sensitive data contained in the
          # property (e.g., "HIPAA").
          sensitive_data_categories:,
          # Whether to show the currency symbol in HubSpot's UI.
          show_currency_symbol:,
          # Hint for how the text is displayed and validated in HubSpot's UI. Can be:
          # "unformatted_single_line", "multi_line", "email", "phone_number", "domain_name",
          # "ip_address", "physical_address", or "postal_code".
          text_display_hint:,
          # The data type of the property, such as string or number.
          type:,
          # The timestamp when the property was last updated, in ISO 8601 format.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              allowed_object_types:
                T::Array[HubSpotSDK::Cms::ObjectTypeIDProto],
              calculated: T::Boolean,
              can_archive: T::Boolean,
              can_restore: T::Boolean,
              created_at: Integer,
              created_user_id: Integer,
              currency_property_name: String,
              data_sensitivity:
                HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity::TaggedSymbol,
              date_display_hint:
                HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint::TaggedSymbol,
              deleted: T::Boolean,
              description: String,
              display_mode:
                HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode::TaggedSymbol,
              display_order: Integer,
              enforce_multivalue_uniqueness: T::Boolean,
              external_options: T::Boolean,
              external_options_reference_type: String,
              favorited: T::Boolean,
              favorited_order: Integer,
              field_type: String,
              form_field: T::Boolean,
              from_user_id: Integer,
              group_name: String,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              hubspot_defined: T::Boolean,
              is_customized_default: T::Boolean,
              is_multi_valued: T::Boolean,
              is_partial: T::Boolean,
              label: String,
              mutable_definition_not_deletable: T::Boolean,
              name: String,
              number_display_hint:
                HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol,
              options: T::Array[HubSpotSDK::AutomationActionsOption],
              options_are_mutable: T::Boolean,
              option_sort_strategy:
                HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy::TaggedSymbol,
              owning_app_id: Integer,
              portal_id: Integer,
              read_only_definition: T::Boolean,
              read_only_value: T::Boolean,
              referenced_object_type:
                HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol,
              searchable_in_global_search: T::Boolean,
              search_text_analysis_mode:
                HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode::TaggedSymbol,
              sensitive_data_categories: T::Array[String],
              show_currency_symbol: T::Boolean,
              text_display_hint:
                HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol,
              type: HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the sensitivity level of the property, such as "non_sensitive",
        # "sensitive", or "highly_sensitive".
        module DataSensitivity
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGH =
            T.let(
              :high,
              HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module DateDisplayHint
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE =
            T.let(
              :absolute,
              HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint::TaggedSymbol
            )
          ABSOLUTE_WITH_RELATIVE =
            T.let(
              :absolute_with_relative,
              HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint::TaggedSymbol
            )
          TIME_SINCE =
            T.let(
              :time_since,
              HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint::TaggedSymbol
            )
          TIME_UNTIL =
            T.let(
              :time_until,
              HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The mode in which the property is displayed. Can be: "current_value" or
        # "all_unique_versions".
        module DisplayMode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL_UNIQUE_VERSIONS =
            T.let(
              :all_unique_versions,
              HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode::TaggedSymbol
            )
          CURRENT_VALUE =
            T.let(
              :current_value,
              HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Hint for how a number property is displayed and validated in HubSpot's UI. Can
        # be: "unformatted", "formatted", "currency", "percentage", "duration", or
        # "probability".
        module NumberDisplayHint
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CURRENCY =
            T.let(
              :currency,
              HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol
            )
          DURATION =
            T.let(
              :duration,
              HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol
            )
          FORMATTED =
            T.let(
              :formatted,
              HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol
            )
          PERCENTAGE =
            T.let(
              :percentage,
              HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol
            )
          PROBABILITY =
            T.let(
              :probability,
              HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol
            )
          UNFORMATTED =
            T.let(
              :unformatted,
              HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies how to sort property options. Can be either "DISPLAY_ORDER" to defer
        # to the displayOrder field, or "ALPHABETICAL".
        module OptionSortStrategy
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALPHABETICAL =
            T.let(
              :ALPHABETICAL,
              HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy::TaggedSymbol
            )
          DISPLAY_ORDER =
            T.let(
              :DISPLAY_ORDER,
              HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Deprecated. Use externalOptionsReferenceType instead.
        module ReferencedObjectType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED_CART =
            T.let(
              :ABANDONED_CART,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AD =
            T.let(
              :AD,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AD_ACCOUNT =
            T.let(
              :AD_ACCOUNT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AD_CAMPAIGN =
            T.let(
              :AD_CAMPAIGN,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :AD_GROUP,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AI_FORECAST =
            T.let(
              :AI_FORECAST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          ALL_PAGES =
            T.let(
              :ALL_PAGES,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          APPROVAL =
            T.let(
              :APPROVAL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          APPROVAL_STEP =
            T.let(
              :APPROVAL_STEP,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          ATTRIBUTION =
            T.let(
              :ATTRIBUTION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :AUDIENCE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW =
            T.let(
              :AUTOMATION_PLATFORM_FLOW,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW_ACTION =
            T.let(
              :AUTOMATION_PLATFORM_FLOW_ACTION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          BET_ALERT =
            T.let(
              :BET_ALERT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          BET_DELIVERABLE_SERVICE =
            T.let(
              :BET_DELIVERABLE_SERVICE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          BLOG_LISTING_PAGE =
            T.let(
              :BLOG_LISTING_PAGE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CALL =
            T.let(
              :CALL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN =
            T.let(
              :CAMPAIGN,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_BUDGET_ITEM =
            T.let(
              :CAMPAIGN_BUDGET_ITEM,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_SPEND_ITEM =
            T.let(
              :CAMPAIGN_SPEND_ITEM,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_STEP =
            T.let(
              :CAMPAIGN_STEP,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE =
            T.let(
              :CAMPAIGN_TEMPLATE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE_STEP =
            T.let(
              :CAMPAIGN_TEMPLATE_STEP,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CART =
            T.let(
              :CART,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CHATFLOW =
            T.let(
              :CHATFLOW,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CLIP =
            T.let(
              :CLIP,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CMS_URL =
            T.let(
              :CMS_URL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          COMBO_EVENT_CONFIGURATION =
            T.let(
              :COMBO_EVENT_CONFIGURATION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          COMMERCE_PAYMENT =
            T.let(
              :COMMERCE_PAYMENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          COMMUNICATION =
            T.let(
              :COMMUNICATION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          COMPANY =
            T.let(
              :COMPANY,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CONTACT =
            T.let(
              :CONTACT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CONTACT_CREATE_ATTRIBUTION =
            T.let(
              :CONTACT_CREATE_ATTRIBUTION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CONTENT_AUDIT =
            T.let(
              :CONTENT_AUDIT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CONTENT_AUDIT_PAGE =
            T.let(
              :CONTENT_AUDIT_PAGE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :CONVERSATION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION_INBOX =
            T.let(
              :CONVERSATION_INBOX,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION_SESSION =
            T.let(
              :CONVERSATION_SESSION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CRM_OBJECTS_DUMMY_TYPE =
            T.let(
              :CRM_OBJECTS_DUMMY_TYPE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CRM_PIPELINES_DUMMY_TYPE =
            T.let(
              :CRM_PIPELINES_DUMMY_TYPE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          CTA_VARIANT =
            T.let(
              :CTA_VARIANT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DATA_PRIVACY_CONSENT =
            T.let(
              :DATA_PRIVACY_CONSENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DATA_SYNC_STATE =
            T.let(
              :DATA_SYNC_STATE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DEAL =
            T.let(
              :DEAL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DEAL_CREATE_ATTRIBUTION =
            T.let(
              :DEAL_CREATE_ATTRIBUTION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DEAL_REGISTRATION =
            T.let(
              :DEAL_REGISTRATION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DEAL_SPLIT =
            T.let(
              :DEAL_SPLIT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :DISCOUNT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT_CODE =
            T.let(
              :DISCOUNT_CODE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT_TEMPLATE =
            T.let(
              :DISCOUNT_TEMPLATE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :ENGAGEMENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          EXTERNAL_WEB_URL =
            T.let(
              :EXTERNAL_WEB_URL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FEEDBACK_SUBMISSION =
            T.let(
              :FEEDBACK_SUBMISSION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FILE_MANAGER_FILE =
            T.let(
              :FILE_MANAGER_FILE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FILE_MANAGER_FOLDER =
            T.let(
              :FILE_MANAGER_FOLDER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FORECAST =
            T.let(
              :FORECAST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          FORM_SUBMISSION_INBOUNDDB =
            T.let(
              :FORM_SUBMISSION_INBOUNDDB,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TARGET =
            T.let(
              :GOAL_TARGET,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TARGET_GROUP =
            T.let(
              :GOAL_TARGET_GROUP,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TEMPLATE =
            T.let(
              :GOAL_TEMPLATE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          GSC_PROPERTY =
            T.let(
              :GSC_PROPERTY,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          HUB =
            T.let(
              :HUB,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          KEYWORD =
            T.let(
              :KEYWORD,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          LEAD =
            T.let(
              :LEAD,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          LINE_ITEM =
            T.let(
              :LINE_ITEM,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_CALENDAR =
            T.let(
              :MARKETING_CALENDAR,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_CAMPAIGN_UTM =
            T.let(
              :MARKETING_CAMPAIGN_UTM,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EMAIL =
            T.let(
              :MARKETING_EMAIL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EVENT =
            T.let(
              :MARKETING_EVENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EVENT_ATTENDANCE =
            T.let(
              :MARKETING_EVENT_ATTENDANCE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_SMS =
            T.let(
              :MARKETING_SMS,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MEDIA_BRIDGE =
            T.let(
              :MEDIA_BRIDGE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MEETING_EVENT =
            T.let(
              :MEETING_EVENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          MIC =
            T.let(
              :MIC,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          OBJECT_LIST =
            T.let(
              :OBJECT_LIST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          ORDER =
            T.let(
              :ORDER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          OWNER =
            T.let(
              :OWNER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_ACCOUNT =
            T.let(
              :PARTNER_ACCOUNT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_CLIENT =
            T.let(
              :PARTNER_CLIENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_CLIENT_REVENUE =
            T.let(
              :PARTNER_CLIENT_REVENUE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_SERVICE =
            T.let(
              :PARTNER_SERVICE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_LINK =
            T.let(
              :PAYMENT_LINK,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE =
            T.let(
              :PAYMENT_SCHEDULE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE_INSTALLMENT =
            T.let(
              :PAYMENT_SCHEDULE_INSTALLMENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PERMISSIONS_TESTING =
            T.let(
              :PERMISSIONS_TESTING,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK =
            T.let(
              :PLAYBOOK,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_QUESTION =
            T.let(
              :PLAYBOOK_QUESTION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION =
            T.let(
              :PLAYBOOK_SUBMISSION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION_ANSWER =
            T.let(
              :PLAYBOOK_SUBMISSION_ANSWER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PLAYLIST =
            T.let(
              :PLAYLIST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PLAYLIST_FOLDER =
            T.let(
              :PLAYLIST_FOLDER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PODCAST_EPISODE =
            T.let(
              :PODCAST_EPISODE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC_MESSAGE =
            T.let(
              :PORTAL_OBJECT_SYNC_MESSAGE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          POSTAL_MAIL =
            T.let(
              :POSTAL_MAIL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PRIVACY_SCANNER_COOKIE =
            T.let(
              :PRIVACY_SCANNER_COOKIE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :PRODUCT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PRODUCT_OR_FOLDER =
            T.let(
              :PRODUCT_OR_FOLDER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PROPERTY_INFO =
            T.let(
              :PROPERTY_INFO,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PROSPECTING_AGENT_CONTACT_ASSIGNMENT =
            T.let(
              :PROSPECTING_AGENT_CONTACT_ASSIGNMENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          PUBLISHING_TASK =
            T.let(
              :PUBLISHING_TASK,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          QUARANTINED_SUBMISSION =
            T.let(
              :QUARANTINED_SUBMISSION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          QUOTA =
            T.let(
              :QUOTA,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_FIELD =
            T.let(
              :QUOTE_FIELD,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_MODULE =
            T.let(
              :QUOTE_MODULE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_MODULE_FIELD =
            T.let(
              :QUOTE_MODULE_FIELD,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          RESTORABLE_CRM_OBJECT =
            T.let(
              :RESTORABLE_CRM_OBJECT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          ROSTER =
            T.let(
              :ROSTER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          ROSTER_MEMBER =
            T.let(
              :ROSTER_MEMBER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SALES_DOCUMENT =
            T.let(
              :SALES_DOCUMENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SALES_TASK =
            T.let(
              :SALES_TASK,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SALES_WORKLOAD =
            T.let(
              :SALES_WORKLOAD,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SALESFORCE_SYNC_ERROR =
            T.let(
              :SALESFORCE_SYNC_ERROR,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SCHEDULING_PAGE =
            T.let(
              :SCHEDULING_PAGE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SCHEMAS_BACKEND_TEST =
            T.let(
              :SCHEMAS_BACKEND_TEST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SCORE_CONFIGURATION =
            T.let(
              :SCORE_CONFIGURATION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE =
            T.let(
              :SEQUENCE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT =
            T.let(
              :SEQUENCE_ENROLLMENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_STEP =
            T.let(
              :SEQUENCE_STEP,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_STEP_ENROLLMENT =
            T.let(
              :SEQUENCE_STEP_ENROLLMENT,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SNIPPET =
            T.let(
              :SNIPPET,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_BROADCAST =
            T.let(
              :SOCIAL_BROADCAST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_CHANNEL =
            T.let(
              :SOCIAL_CHANNEL,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_POST =
            T.let(
              :SOCIAL_POST,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_PROFILE =
            T.let(
              :SOCIAL_PROFILE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SOX_PROTECTED_DUMMY_TYPE =
            T.let(
              :SOX_PROTECTED_DUMMY_TYPE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SOX_PROTECTED_TEST_TYPE =
            T.let(
              :SOX_PROTECTED_TEST_TYPE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SUBMISSION_TAG =
            T.let(
              :SUBMISSION_TAG,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :SUBSCRIPTION,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          TASK_TEMPLATE =
            T.let(
              :TASK_TEMPLATE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          TAX =
            T.let(
              :TAX,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          TICKET =
            T.let(
              :TICKET,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :UNSUBSCRIBE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          VIEW_BLOCK =
            T.let(
              :VIEW_BLOCK,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module SearchTextAnalysisMode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode::TaggedSymbol
            )
          NOT_ANALYZED_TEXT =
            T.let(
              :NOT_ANALYZED_TEXT,
              HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Hint for how the text is displayed and validated in HubSpot's UI. Can be:
        # "unformatted_single_line", "multi_line", "email", "phone_number", "domain_name",
        # "ip_address", "physical_address", or "postal_code".
        module TextDisplayHint
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOMAIN_NAME =
            T.let(
              :domain_name,
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
            )
          EMAIL =
            T.let(
              :email,
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
            )
          IP_ADDRESS =
            T.let(
              :ip_address,
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
            )
          MULTI_LINE =
            T.let(
              :multi_line,
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
            )
          PHYSICAL_ADDRESS =
            T.let(
              :physical_address,
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
            )
          POSTAL_CODE =
            T.let(
              :postal_code,
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
            )
          UNFORMATTED_SINGLE_LINE =
            T.let(
              :unformatted_single_line,
              HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The data type of the property, such as string or number.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::MediaBridgeProperty::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :bool,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          CURRENCY_NUMBER =
            T.let(
              :currency_number,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          DATETIME =
            T.let(
              :datetime,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          JSON =
            T.let(
              :json,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          OBJECT_COORDINATES =
            T.let(
              :object_coordinates,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::MediaBridgeProperty::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
