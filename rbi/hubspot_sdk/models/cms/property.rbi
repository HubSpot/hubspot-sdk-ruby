# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Property < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Property, HubspotSDK::Internal::AnyHash)
          end

        # Object types permitted to use this property.
        sig { returns(T::Array[HubspotSDK::Cms::ObjectTypeIDProto]) }
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
          returns(HubspotSDK::Cms::Property::DataSensitivity::TaggedSymbol)
        end
        attr_accessor :data_sensitivity

        sig do
          returns(HubspotSDK::Cms::Property::DateDisplayHint::TaggedSymbol)
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
        sig { returns(HubspotSDK::Cms::Property::DisplayMode::TaggedSymbol) }
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
          returns(HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol)
        end
        attr_accessor :number_display_hint

        # A list of valid options for the property. This field is required for enumerated
        # properties.
        sig { returns(T::Array[HubspotSDK::AutomationActionsOption]) }
        attr_accessor :options

        # Whether options can be modified after creation.
        sig { returns(T::Boolean) }
        attr_accessor :options_are_mutable

        # Specifies how to sort property options. Can be either "DISPLAY_ORDER" to defer
        # to the displayOrder field, or "ALPHABETICAL".
        sig do
          returns(HubspotSDK::Cms::Property::OptionSortStrategy::TaggedSymbol)
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
          returns(HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol)
        end
        attr_accessor :referenced_object_type

        # Whether the property is searchable globaly.
        sig { returns(T::Boolean) }
        attr_accessor :searchable_in_global_search

        sig do
          returns(
            HubspotSDK::Cms::Property::SearchTextAnalysisMode::TaggedSymbol
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
          returns(HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol)
        end
        attr_accessor :text_display_hint

        # The data type of the property, such as string or number.
        sig { returns(HubspotSDK::Cms::Property::Type::TaggedSymbol) }
        attr_accessor :type

        # The timestamp when the property was last updated, in ISO 8601 format.
        sig { returns(Integer) }
        attr_accessor :updated_at

        # A HubSpot property
        sig do
          params(
            allowed_object_types:
              T::Array[HubspotSDK::Cms::ObjectTypeIDProto::OrHash],
            calculated: T::Boolean,
            can_archive: T::Boolean,
            can_restore: T::Boolean,
            created_at: Integer,
            created_user_id: Integer,
            currency_property_name: String,
            data_sensitivity:
              HubspotSDK::Cms::Property::DataSensitivity::OrSymbol,
            date_display_hint:
              HubspotSDK::Cms::Property::DateDisplayHint::OrSymbol,
            deleted: T::Boolean,
            description: String,
            display_mode: HubspotSDK::Cms::Property::DisplayMode::OrSymbol,
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
              HubspotSDK::Cms::Property::NumberDisplayHint::OrSymbol,
            options: T::Array[HubspotSDK::AutomationActionsOption::OrHash],
            options_are_mutable: T::Boolean,
            option_sort_strategy:
              HubspotSDK::Cms::Property::OptionSortStrategy::OrSymbol,
            owning_app_id: Integer,
            portal_id: Integer,
            read_only_definition: T::Boolean,
            read_only_value: T::Boolean,
            referenced_object_type:
              HubspotSDK::Cms::Property::ReferencedObjectType::OrSymbol,
            searchable_in_global_search: T::Boolean,
            search_text_analysis_mode:
              HubspotSDK::Cms::Property::SearchTextAnalysisMode::OrSymbol,
            sensitive_data_categories: T::Array[String],
            show_currency_symbol: T::Boolean,
            text_display_hint:
              HubspotSDK::Cms::Property::TextDisplayHint::OrSymbol,
            type: HubspotSDK::Cms::Property::Type::OrSymbol,
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
                T::Array[HubspotSDK::Cms::ObjectTypeIDProto],
              calculated: T::Boolean,
              can_archive: T::Boolean,
              can_restore: T::Boolean,
              created_at: Integer,
              created_user_id: Integer,
              currency_property_name: String,
              data_sensitivity:
                HubspotSDK::Cms::Property::DataSensitivity::TaggedSymbol,
              date_display_hint:
                HubspotSDK::Cms::Property::DateDisplayHint::TaggedSymbol,
              deleted: T::Boolean,
              description: String,
              display_mode:
                HubspotSDK::Cms::Property::DisplayMode::TaggedSymbol,
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
                HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol,
              options: T::Array[HubspotSDK::AutomationActionsOption],
              options_are_mutable: T::Boolean,
              option_sort_strategy:
                HubspotSDK::Cms::Property::OptionSortStrategy::TaggedSymbol,
              owning_app_id: Integer,
              portal_id: Integer,
              read_only_definition: T::Boolean,
              read_only_value: T::Boolean,
              referenced_object_type:
                HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol,
              searchable_in_global_search: T::Boolean,
              search_text_analysis_mode:
                HubspotSDK::Cms::Property::SearchTextAnalysisMode::TaggedSymbol,
              sensitive_data_categories: T::Array[String],
              show_currency_symbol: T::Boolean,
              text_display_hint:
                HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol,
              type: HubspotSDK::Cms::Property::Type::TaggedSymbol,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the sensitivity level of the property, such as "non_sensitive",
        # "sensitive", or "highly_sensitive".
        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Property::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGH =
            T.let(
              :high,
              HubspotSDK::Cms::Property::DataSensitivity::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              HubspotSDK::Cms::Property::DataSensitivity::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              HubspotSDK::Cms::Property::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Property::DataSensitivity::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module DateDisplayHint
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Property::DateDisplayHint)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE =
            T.let(
              :absolute,
              HubspotSDK::Cms::Property::DateDisplayHint::TaggedSymbol
            )
          ABSOLUTE_WITH_RELATIVE =
            T.let(
              :absolute_with_relative,
              HubspotSDK::Cms::Property::DateDisplayHint::TaggedSymbol
            )
          TIME_SINCE =
            T.let(
              :time_since,
              HubspotSDK::Cms::Property::DateDisplayHint::TaggedSymbol
            )
          TIME_UNTIL =
            T.let(
              :time_until,
              HubspotSDK::Cms::Property::DateDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Property::DateDisplayHint::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The mode in which the property is displayed. Can be: "current_value" or
        # "all_unique_versions".
        module DisplayMode
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Property::DisplayMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL_UNIQUE_VERSIONS =
            T.let(
              :all_unique_versions,
              HubspotSDK::Cms::Property::DisplayMode::TaggedSymbol
            )
          CURRENT_VALUE =
            T.let(
              :current_value,
              HubspotSDK::Cms::Property::DisplayMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Property::DisplayMode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Hint for how a number property is displayed and validated in HubSpot's UI. Can
        # be: "unformatted", "formatted", "currency", "percentage", "duration", or
        # "probability".
        module NumberDisplayHint
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Property::NumberDisplayHint)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CURRENCY =
            T.let(
              :currency,
              HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol
            )
          DURATION =
            T.let(
              :duration,
              HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol
            )
          FORMATTED =
            T.let(
              :formatted,
              HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol
            )
          PERCENTAGE =
            T.let(
              :percentage,
              HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol
            )
          PROBABILITY =
            T.let(
              :probability,
              HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol
            )
          UNFORMATTED =
            T.let(
              :unformatted,
              HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::Property::NumberDisplayHint::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies how to sort property options. Can be either "DISPLAY_ORDER" to defer
        # to the displayOrder field, or "ALPHABETICAL".
        module OptionSortStrategy
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Property::OptionSortStrategy)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALPHABETICAL =
            T.let(
              :ALPHABETICAL,
              HubspotSDK::Cms::Property::OptionSortStrategy::TaggedSymbol
            )
          DISPLAY_ORDER =
            T.let(
              :DISPLAY_ORDER,
              HubspotSDK::Cms::Property::OptionSortStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::Property::OptionSortStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Deprecated. Use externalOptionsReferenceType instead.
        module ReferencedObjectType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Property::ReferencedObjectType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED_CART =
            T.let(
              :ABANDONED_CART,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AD =
            T.let(
              :AD,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AD_ACCOUNT =
            T.let(
              :AD_ACCOUNT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AD_CAMPAIGN =
            T.let(
              :AD_CAMPAIGN,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :AD_GROUP,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AI_FORECAST =
            T.let(
              :AI_FORECAST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          ALL_PAGES =
            T.let(
              :ALL_PAGES,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          APPROVAL =
            T.let(
              :APPROVAL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          APPROVAL_STEP =
            T.let(
              :APPROVAL_STEP,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          ATTRIBUTION =
            T.let(
              :ATTRIBUTION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :AUDIENCE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW =
            T.let(
              :AUTOMATION_PLATFORM_FLOW,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW_ACTION =
            T.let(
              :AUTOMATION_PLATFORM_FLOW_ACTION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          BET_ALERT =
            T.let(
              :BET_ALERT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          BET_DELIVERABLE_SERVICE =
            T.let(
              :BET_DELIVERABLE_SERVICE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          BLOG_LISTING_PAGE =
            T.let(
              :BLOG_LISTING_PAGE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CALL =
            T.let(
              :CALL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN =
            T.let(
              :CAMPAIGN,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_BUDGET_ITEM =
            T.let(
              :CAMPAIGN_BUDGET_ITEM,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_SPEND_ITEM =
            T.let(
              :CAMPAIGN_SPEND_ITEM,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_STEP =
            T.let(
              :CAMPAIGN_STEP,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE =
            T.let(
              :CAMPAIGN_TEMPLATE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE_STEP =
            T.let(
              :CAMPAIGN_TEMPLATE_STEP,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CART =
            T.let(
              :CART,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CHATFLOW =
            T.let(
              :CHATFLOW,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CLIP =
            T.let(
              :CLIP,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CMS_URL =
            T.let(
              :CMS_URL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          COMBO_EVENT_CONFIGURATION =
            T.let(
              :COMBO_EVENT_CONFIGURATION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          COMMERCE_PAYMENT =
            T.let(
              :COMMERCE_PAYMENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          COMMUNICATION =
            T.let(
              :COMMUNICATION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          COMPANY =
            T.let(
              :COMPANY,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CONTACT =
            T.let(
              :CONTACT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CONTACT_CREATE_ATTRIBUTION =
            T.let(
              :CONTACT_CREATE_ATTRIBUTION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CONTENT_AUDIT =
            T.let(
              :CONTENT_AUDIT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CONTENT_AUDIT_PAGE =
            T.let(
              :CONTENT_AUDIT_PAGE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :CONVERSATION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION_INBOX =
            T.let(
              :CONVERSATION_INBOX,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION_SESSION =
            T.let(
              :CONVERSATION_SESSION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CRM_OBJECTS_DUMMY_TYPE =
            T.let(
              :CRM_OBJECTS_DUMMY_TYPE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CRM_PIPELINES_DUMMY_TYPE =
            T.let(
              :CRM_PIPELINES_DUMMY_TYPE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          CTA_VARIANT =
            T.let(
              :CTA_VARIANT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DATA_PRIVACY_CONSENT =
            T.let(
              :DATA_PRIVACY_CONSENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DATA_SYNC_STATE =
            T.let(
              :DATA_SYNC_STATE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DEAL =
            T.let(
              :DEAL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DEAL_CREATE_ATTRIBUTION =
            T.let(
              :DEAL_CREATE_ATTRIBUTION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DEAL_REGISTRATION =
            T.let(
              :DEAL_REGISTRATION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DEAL_SPLIT =
            T.let(
              :DEAL_SPLIT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :DISCOUNT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT_CODE =
            T.let(
              :DISCOUNT_CODE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT_TEMPLATE =
            T.let(
              :DISCOUNT_TEMPLATE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :ENGAGEMENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          EXTERNAL_WEB_URL =
            T.let(
              :EXTERNAL_WEB_URL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FEEDBACK_SUBMISSION =
            T.let(
              :FEEDBACK_SUBMISSION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FILE_MANAGER_FILE =
            T.let(
              :FILE_MANAGER_FILE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FILE_MANAGER_FOLDER =
            T.let(
              :FILE_MANAGER_FOLDER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FORECAST =
            T.let(
              :FORECAST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          FORM_SUBMISSION_INBOUNDDB =
            T.let(
              :FORM_SUBMISSION_INBOUNDDB,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TARGET =
            T.let(
              :GOAL_TARGET,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TARGET_GROUP =
            T.let(
              :GOAL_TARGET_GROUP,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TEMPLATE =
            T.let(
              :GOAL_TEMPLATE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          GSC_PROPERTY =
            T.let(
              :GSC_PROPERTY,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          HUB =
            T.let(
              :HUB,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          KEYWORD =
            T.let(
              :KEYWORD,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          LEAD =
            T.let(
              :LEAD,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          LINE_ITEM =
            T.let(
              :LINE_ITEM,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_CALENDAR =
            T.let(
              :MARKETING_CALENDAR,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_CAMPAIGN_UTM =
            T.let(
              :MARKETING_CAMPAIGN_UTM,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EMAIL =
            T.let(
              :MARKETING_EMAIL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EVENT =
            T.let(
              :MARKETING_EVENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EVENT_ATTENDANCE =
            T.let(
              :MARKETING_EVENT_ATTENDANCE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_SMS =
            T.let(
              :MARKETING_SMS,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MEDIA_BRIDGE =
            T.let(
              :MEDIA_BRIDGE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MEETING_EVENT =
            T.let(
              :MEETING_EVENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          MIC =
            T.let(
              :MIC,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          OBJECT_LIST =
            T.let(
              :OBJECT_LIST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          ORDER =
            T.let(
              :ORDER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          OWNER =
            T.let(
              :OWNER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_ACCOUNT =
            T.let(
              :PARTNER_ACCOUNT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_CLIENT =
            T.let(
              :PARTNER_CLIENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_CLIENT_REVENUE =
            T.let(
              :PARTNER_CLIENT_REVENUE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_SERVICE =
            T.let(
              :PARTNER_SERVICE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_LINK =
            T.let(
              :PAYMENT_LINK,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE =
            T.let(
              :PAYMENT_SCHEDULE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE_INSTALLMENT =
            T.let(
              :PAYMENT_SCHEDULE_INSTALLMENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PERMISSIONS_TESTING =
            T.let(
              :PERMISSIONS_TESTING,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK =
            T.let(
              :PLAYBOOK,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_QUESTION =
            T.let(
              :PLAYBOOK_QUESTION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION =
            T.let(
              :PLAYBOOK_SUBMISSION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION_ANSWER =
            T.let(
              :PLAYBOOK_SUBMISSION_ANSWER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PLAYLIST =
            T.let(
              :PLAYLIST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PLAYLIST_FOLDER =
            T.let(
              :PLAYLIST_FOLDER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PODCAST_EPISODE =
            T.let(
              :PODCAST_EPISODE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC_MESSAGE =
            T.let(
              :PORTAL_OBJECT_SYNC_MESSAGE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          POSTAL_MAIL =
            T.let(
              :POSTAL_MAIL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PRIVACY_SCANNER_COOKIE =
            T.let(
              :PRIVACY_SCANNER_COOKIE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :PRODUCT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PRODUCT_OR_FOLDER =
            T.let(
              :PRODUCT_OR_FOLDER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PROPERTY_INFO =
            T.let(
              :PROPERTY_INFO,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PROSPECTING_AGENT_CONTACT_ASSIGNMENT =
            T.let(
              :PROSPECTING_AGENT_CONTACT_ASSIGNMENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          PUBLISHING_TASK =
            T.let(
              :PUBLISHING_TASK,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          QUARANTINED_SUBMISSION =
            T.let(
              :QUARANTINED_SUBMISSION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          QUOTA =
            T.let(
              :QUOTA,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_FIELD =
            T.let(
              :QUOTE_FIELD,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_MODULE =
            T.let(
              :QUOTE_MODULE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_MODULE_FIELD =
            T.let(
              :QUOTE_MODULE_FIELD,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          RESTORABLE_CRM_OBJECT =
            T.let(
              :RESTORABLE_CRM_OBJECT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          ROSTER =
            T.let(
              :ROSTER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          ROSTER_MEMBER =
            T.let(
              :ROSTER_MEMBER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SALES_DOCUMENT =
            T.let(
              :SALES_DOCUMENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SALES_TASK =
            T.let(
              :SALES_TASK,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SALES_WORKLOAD =
            T.let(
              :SALES_WORKLOAD,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SALESFORCE_SYNC_ERROR =
            T.let(
              :SALESFORCE_SYNC_ERROR,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SCHEDULING_PAGE =
            T.let(
              :SCHEDULING_PAGE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SCHEMAS_BACKEND_TEST =
            T.let(
              :SCHEMAS_BACKEND_TEST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SCORE_CONFIGURATION =
            T.let(
              :SCORE_CONFIGURATION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE =
            T.let(
              :SEQUENCE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT =
            T.let(
              :SEQUENCE_ENROLLMENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_STEP =
            T.let(
              :SEQUENCE_STEP,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_STEP_ENROLLMENT =
            T.let(
              :SEQUENCE_STEP_ENROLLMENT,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SNIPPET =
            T.let(
              :SNIPPET,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_BROADCAST =
            T.let(
              :SOCIAL_BROADCAST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_CHANNEL =
            T.let(
              :SOCIAL_CHANNEL,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_POST =
            T.let(
              :SOCIAL_POST,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_PROFILE =
            T.let(
              :SOCIAL_PROFILE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SOX_PROTECTED_DUMMY_TYPE =
            T.let(
              :SOX_PROTECTED_DUMMY_TYPE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SOX_PROTECTED_TEST_TYPE =
            T.let(
              :SOX_PROTECTED_TEST_TYPE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SUBMISSION_TAG =
            T.let(
              :SUBMISSION_TAG,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :SUBSCRIPTION,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          TASK_TEMPLATE =
            T.let(
              :TASK_TEMPLATE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          TAX =
            T.let(
              :TAX,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          TICKET =
            T.let(
              :TICKET,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :UNSUBSCRIBE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          VIEW_BLOCK =
            T.let(
              :VIEW_BLOCK,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::Property::ReferencedObjectType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module SearchTextAnalysisMode
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Property::SearchTextAnalysisMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              HubspotSDK::Cms::Property::SearchTextAnalysisMode::TaggedSymbol
            )
          NOT_ANALYZED_TEXT =
            T.let(
              :NOT_ANALYZED_TEXT,
              HubspotSDK::Cms::Property::SearchTextAnalysisMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::Property::SearchTextAnalysisMode::TaggedSymbol
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Property::TextDisplayHint)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOMAIN_NAME =
            T.let(
              :domain_name,
              HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol
            )
          EMAIL =
            T.let(
              :email,
              HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol
            )
          IP_ADDRESS =
            T.let(
              :ip_address,
              HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol
            )
          MULTI_LINE =
            T.let(
              :multi_line,
              HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol
            )
          PHYSICAL_ADDRESS =
            T.let(
              :physical_address,
              HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol
            )
          POSTAL_CODE =
            T.let(
              :postal_code,
              HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol
            )
          UNFORMATTED_SINGLE_LINE =
            T.let(
              :unformatted_single_line,
              HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Property::TextDisplayHint::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The data type of the property, such as string or number.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Property::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL = T.let(:bool, HubspotSDK::Cms::Property::Type::TaggedSymbol)
          CURRENCY_NUMBER =
            T.let(
              :currency_number,
              HubspotSDK::Cms::Property::Type::TaggedSymbol
            )
          DATE = T.let(:date, HubspotSDK::Cms::Property::Type::TaggedSymbol)
          DATETIME =
            T.let(:datetime, HubspotSDK::Cms::Property::Type::TaggedSymbol)
          ENUMERATION =
            T.let(:enumeration, HubspotSDK::Cms::Property::Type::TaggedSymbol)
          JSON = T.let(:json, HubspotSDK::Cms::Property::Type::TaggedSymbol)
          NUMBER = T.let(:number, HubspotSDK::Cms::Property::Type::TaggedSymbol)
          OBJECT_COORDINATES =
            T.let(
              :object_coordinates,
              HubspotSDK::Cms::Property::Type::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(:phone_number, HubspotSDK::Cms::Property::Type::TaggedSymbol)
          STRING = T.let(:string, HubspotSDK::Cms::Property::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Property::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
