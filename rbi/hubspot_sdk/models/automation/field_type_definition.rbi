# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class FieldTypeDefinition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::FieldTypeDefinition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether the field's options are sourced externally.
        sig { returns(T::Boolean) }
        attr_accessor :external_options

        # The unique identifier for the field.
        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[HubSpotSDK::AutomationActionsOption]) }
        attr_accessor :options

        # Defines the structure and constraints of the field.
        sig do
          returns(
            T.any(
              HubSpotSDK::Automation::IntegerFieldSchema,
              HubSpotSDK::Automation::LongFieldSchema,
              HubSpotSDK::Automation::DoubleFieldSchema,
              HubSpotSDK::Automation::StringFieldSchema,
              HubSpotSDK::Automation::BooleanFieldSchema,
              HubSpotSDK::Automation::ArrayFieldSchema,
              HubSpotSDK::Automation::ObjectFieldSchema
            )
          )
        end
        attr_accessor :schema

        # Specifies the data type of the field, with accepted values like bool, date,
        # datetime, enumeration, json, number, object_coordinates, phone_number, string.
        sig do
          returns(HubSpotSDK::Automation::FieldTypeDefinition::Type::OrSymbol)
        end
        attr_accessor :type

        # Specifies whether the field uses the Chirp feature.
        sig { returns(T::Boolean) }
        attr_accessor :use_chirp

        # A detailed explanation of the field's purpose and usage.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Specifies the type of external reference for options.
        sig { returns(T.nilable(String)) }
        attr_reader :external_options_reference_type

        sig { params(external_options_reference_type: String).void }
        attr_writer :external_options_reference_type

        # Describes the field's type in the UI, with accepted values like booleancheckbox,
        # calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
        # select, text, textarea, unknown.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::OrSymbol
            )
          )
        end
        attr_reader :field_type

        sig do
          params(
            field_type:
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::OrSymbol
          ).void
        end
        attr_writer :field_type

        # Additional information or guidance about the field.
        sig { returns(T.nilable(String)) }
        attr_reader :help_text

        sig { params(help_text: String).void }
        attr_writer :help_text

        # The user-friendly label for the field.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # A URL that provides options for the field.
        sig { returns(T.nilable(String)) }
        attr_reader :options_url

        sig { params(options_url: String).void }
        attr_writer :options_url

        # Indicates the type of object that the field references, with accepted values
        # like OWNER.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::OrSymbol
            )
          )
        end
        attr_reader :referenced_object_type

        sig do
          params(
            referenced_object_type:
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::OrSymbol
          ).void
        end
        attr_writer :referenced_object_type

        sig do
          params(
            external_options: T::Boolean,
            name: String,
            options: T::Array[HubSpotSDK::AutomationActionsOption::OrHash],
            schema:
              T.any(
                HubSpotSDK::Automation::IntegerFieldSchema::OrHash,
                HubSpotSDK::Automation::LongFieldSchema::OrHash,
                HubSpotSDK::Automation::DoubleFieldSchema::OrHash,
                HubSpotSDK::Automation::StringFieldSchema::OrHash,
                HubSpotSDK::Automation::BooleanFieldSchema::OrHash,
                HubSpotSDK::Automation::ArrayFieldSchema::OrHash,
                HubSpotSDK::Automation::ObjectFieldSchema::OrHash
              ),
            type: HubSpotSDK::Automation::FieldTypeDefinition::Type::OrSymbol,
            use_chirp: T::Boolean,
            description: String,
            external_options_reference_type: String,
            field_type:
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::OrSymbol,
            help_text: String,
            label: String,
            options_url: String,
            referenced_object_type:
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether the field's options are sourced externally.
          external_options:,
          # The unique identifier for the field.
          name:,
          options:,
          # Defines the structure and constraints of the field.
          schema:,
          # Specifies the data type of the field, with accepted values like bool, date,
          # datetime, enumeration, json, number, object_coordinates, phone_number, string.
          type:,
          # Specifies whether the field uses the Chirp feature.
          use_chirp:,
          # A detailed explanation of the field's purpose and usage.
          description: nil,
          # Specifies the type of external reference for options.
          external_options_reference_type: nil,
          # Describes the field's type in the UI, with accepted values like booleancheckbox,
          # calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
          # select, text, textarea, unknown.
          field_type: nil,
          # Additional information or guidance about the field.
          help_text: nil,
          # The user-friendly label for the field.
          label: nil,
          # A URL that provides options for the field.
          options_url: nil,
          # Indicates the type of object that the field references, with accepted values
          # like OWNER.
          referenced_object_type: nil
        )
        end

        sig do
          override.returns(
            {
              external_options: T::Boolean,
              name: String,
              options: T::Array[HubSpotSDK::AutomationActionsOption],
              schema:
                T.any(
                  HubSpotSDK::Automation::IntegerFieldSchema,
                  HubSpotSDK::Automation::LongFieldSchema,
                  HubSpotSDK::Automation::DoubleFieldSchema,
                  HubSpotSDK::Automation::StringFieldSchema,
                  HubSpotSDK::Automation::BooleanFieldSchema,
                  HubSpotSDK::Automation::ArrayFieldSchema,
                  HubSpotSDK::Automation::ObjectFieldSchema
                ),
              type: HubSpotSDK::Automation::FieldTypeDefinition::Type::OrSymbol,
              use_chirp: T::Boolean,
              description: String,
              external_options_reference_type: String,
              field_type:
                HubSpotSDK::Automation::FieldTypeDefinition::FieldType::OrSymbol,
              help_text: String,
              label: String,
              options_url: String,
              referenced_object_type:
                HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Defines the structure and constraints of the field.
        module Schema
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Automation::IntegerFieldSchema,
                HubSpotSDK::Automation::LongFieldSchema,
                HubSpotSDK::Automation::DoubleFieldSchema,
                HubSpotSDK::Automation::StringFieldSchema,
                HubSpotSDK::Automation::BooleanFieldSchema,
                HubSpotSDK::Automation::ArrayFieldSchema,
                HubSpotSDK::Automation::ObjectFieldSchema
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::FieldTypeDefinition::Schema::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Specifies the data type of the field, with accepted values like bool, date,
        # datetime, enumeration, json, number, object_coordinates, phone_number, string.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::FieldTypeDefinition::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :bool,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          CURRENCY_NUMBER =
            T.let(
              :currency_number,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          DATETIME =
            T.let(
              :datetime,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          JSON =
            T.let(
              :json,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          OBJECT_COORDINATES =
            T.let(
              :object_coordinates,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Describes the field's type in the UI, with accepted values like booleancheckbox,
        # calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
        # select, text, textarea, unknown.
        module FieldType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Automation::FieldTypeDefinition::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_READ_TIME =
            T.let(
              :calculation_read_time,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_ROLLUP =
            T.let(
              :calculation_rollup,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_SCORE =
            T.let(
              :calculation_score,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates the type of object that the field references, with accepted values
        # like OWNER.
        module ReferencedObjectType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED_CART =
            T.let(
              :ABANDONED_CART,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AD =
            T.let(
              :AD,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AD_ACCOUNT =
            T.let(
              :AD_ACCOUNT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AD_CAMPAIGN =
            T.let(
              :AD_CAMPAIGN,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :AD_GROUP,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AI_FORECAST =
            T.let(
              :AI_FORECAST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ALL_PAGES =
            T.let(
              :ALL_PAGES,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          APPROVAL =
            T.let(
              :APPROVAL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          APPROVAL_STEP =
            T.let(
              :APPROVAL_STEP,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ATTRIBUTION =
            T.let(
              :ATTRIBUTION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :AUDIENCE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW =
            T.let(
              :AUTOMATION_PLATFORM_FLOW,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW_ACTION =
            T.let(
              :AUTOMATION_PLATFORM_FLOW_ACTION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          BET_ALERT =
            T.let(
              :BET_ALERT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          BET_DELIVERABLE_SERVICE =
            T.let(
              :BET_DELIVERABLE_SERVICE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          BLOG_LISTING_PAGE =
            T.let(
              :BLOG_LISTING_PAGE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CALL =
            T.let(
              :CALL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN =
            T.let(
              :CAMPAIGN,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_BUDGET_ITEM =
            T.let(
              :CAMPAIGN_BUDGET_ITEM,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_SPEND_ITEM =
            T.let(
              :CAMPAIGN_SPEND_ITEM,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_STEP =
            T.let(
              :CAMPAIGN_STEP,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE =
            T.let(
              :CAMPAIGN_TEMPLATE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE_STEP =
            T.let(
              :CAMPAIGN_TEMPLATE_STEP,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CART =
            T.let(
              :CART,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CHATFLOW =
            T.let(
              :CHATFLOW,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CLIP =
            T.let(
              :CLIP,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CMS_URL =
            T.let(
              :CMS_URL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          COMBO_EVENT_CONFIGURATION =
            T.let(
              :COMBO_EVENT_CONFIGURATION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          COMMERCE_PAYMENT =
            T.let(
              :COMMERCE_PAYMENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          COMMUNICATION =
            T.let(
              :COMMUNICATION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          COMPANY =
            T.let(
              :COMPANY,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTACT =
            T.let(
              :CONTACT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTACT_CREATE_ATTRIBUTION =
            T.let(
              :CONTACT_CREATE_ATTRIBUTION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTENT_AUDIT =
            T.let(
              :CONTENT_AUDIT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTENT_AUDIT_PAGE =
            T.let(
              :CONTENT_AUDIT_PAGE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :CONVERSATION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION_INBOX =
            T.let(
              :CONVERSATION_INBOX,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION_SESSION =
            T.let(
              :CONVERSATION_SESSION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CRM_OBJECTS_DUMMY_TYPE =
            T.let(
              :CRM_OBJECTS_DUMMY_TYPE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CRM_PIPELINES_DUMMY_TYPE =
            T.let(
              :CRM_PIPELINES_DUMMY_TYPE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CTA_VARIANT =
            T.let(
              :CTA_VARIANT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DATA_PRIVACY_CONSENT =
            T.let(
              :DATA_PRIVACY_CONSENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DATA_SYNC_STATE =
            T.let(
              :DATA_SYNC_STATE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DEAL =
            T.let(
              :DEAL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DEAL_CREATE_ATTRIBUTION =
            T.let(
              :DEAL_CREATE_ATTRIBUTION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DEAL_REGISTRATION =
            T.let(
              :DEAL_REGISTRATION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DEAL_SPLIT =
            T.let(
              :DEAL_SPLIT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :DISCOUNT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT_CODE =
            T.let(
              :DISCOUNT_CODE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT_TEMPLATE =
            T.let(
              :DISCOUNT_TEMPLATE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :ENGAGEMENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          EXTERNAL_WEB_URL =
            T.let(
              :EXTERNAL_WEB_URL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FEEDBACK_SUBMISSION =
            T.let(
              :FEEDBACK_SUBMISSION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FILE_MANAGER_FILE =
            T.let(
              :FILE_MANAGER_FILE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FILE_MANAGER_FOLDER =
            T.let(
              :FILE_MANAGER_FOLDER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FORECAST =
            T.let(
              :FORECAST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FORM_SUBMISSION_INBOUNDDB =
            T.let(
              :FORM_SUBMISSION_INBOUNDDB,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TARGET =
            T.let(
              :GOAL_TARGET,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TARGET_GROUP =
            T.let(
              :GOAL_TARGET_GROUP,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TEMPLATE =
            T.let(
              :GOAL_TEMPLATE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          GSC_PROPERTY =
            T.let(
              :GSC_PROPERTY,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          HUB =
            T.let(
              :HUB,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          KEYWORD =
            T.let(
              :KEYWORD,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          LEAD =
            T.let(
              :LEAD,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          LINE_ITEM =
            T.let(
              :LINE_ITEM,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_CALENDAR =
            T.let(
              :MARKETING_CALENDAR,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_CAMPAIGN_UTM =
            T.let(
              :MARKETING_CAMPAIGN_UTM,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EMAIL =
            T.let(
              :MARKETING_EMAIL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EVENT =
            T.let(
              :MARKETING_EVENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EVENT_ATTENDANCE =
            T.let(
              :MARKETING_EVENT_ATTENDANCE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_SMS =
            T.let(
              :MARKETING_SMS,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MEDIA_BRIDGE =
            T.let(
              :MEDIA_BRIDGE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MEETING_EVENT =
            T.let(
              :MEETING_EVENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MIC =
            T.let(
              :MIC,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          OBJECT_LIST =
            T.let(
              :OBJECT_LIST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ORDER =
            T.let(
              :ORDER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          OWNER =
            T.let(
              :OWNER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_ACCOUNT =
            T.let(
              :PARTNER_ACCOUNT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_CLIENT =
            T.let(
              :PARTNER_CLIENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_CLIENT_REVENUE =
            T.let(
              :PARTNER_CLIENT_REVENUE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_SERVICE =
            T.let(
              :PARTNER_SERVICE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_LINK =
            T.let(
              :PAYMENT_LINK,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE =
            T.let(
              :PAYMENT_SCHEDULE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE_INSTALLMENT =
            T.let(
              :PAYMENT_SCHEDULE_INSTALLMENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PERMISSIONS_TESTING =
            T.let(
              :PERMISSIONS_TESTING,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK =
            T.let(
              :PLAYBOOK,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_QUESTION =
            T.let(
              :PLAYBOOK_QUESTION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION =
            T.let(
              :PLAYBOOK_SUBMISSION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION_ANSWER =
            T.let(
              :PLAYBOOK_SUBMISSION_ANSWER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYLIST =
            T.let(
              :PLAYLIST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYLIST_FOLDER =
            T.let(
              :PLAYLIST_FOLDER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PODCAST_EPISODE =
            T.let(
              :PODCAST_EPISODE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC_MESSAGE =
            T.let(
              :PORTAL_OBJECT_SYNC_MESSAGE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          POSTAL_MAIL =
            T.let(
              :POSTAL_MAIL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PRIVACY_SCANNER_COOKIE =
            T.let(
              :PRIVACY_SCANNER_COOKIE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :PRODUCT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PRODUCT_OR_FOLDER =
            T.let(
              :PRODUCT_OR_FOLDER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PROPERTY_INFO =
            T.let(
              :PROPERTY_INFO,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PROSPECTING_AGENT_CONTACT_ASSIGNMENT =
            T.let(
              :PROSPECTING_AGENT_CONTACT_ASSIGNMENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PUBLISHING_TASK =
            T.let(
              :PUBLISHING_TASK,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUARANTINED_SUBMISSION =
            T.let(
              :QUARANTINED_SUBMISSION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTA =
            T.let(
              :QUOTA,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_FIELD =
            T.let(
              :QUOTE_FIELD,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_MODULE =
            T.let(
              :QUOTE_MODULE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_MODULE_FIELD =
            T.let(
              :QUOTE_MODULE_FIELD,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          RESTORABLE_CRM_OBJECT =
            T.let(
              :RESTORABLE_CRM_OBJECT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ROSTER =
            T.let(
              :ROSTER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ROSTER_MEMBER =
            T.let(
              :ROSTER_MEMBER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SALES_DOCUMENT =
            T.let(
              :SALES_DOCUMENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SALES_TASK =
            T.let(
              :SALES_TASK,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SALES_WORKLOAD =
            T.let(
              :SALES_WORKLOAD,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SALESFORCE_SYNC_ERROR =
            T.let(
              :SALESFORCE_SYNC_ERROR,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SCHEDULING_PAGE =
            T.let(
              :SCHEDULING_PAGE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SCHEMAS_BACKEND_TEST =
            T.let(
              :SCHEMAS_BACKEND_TEST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SCORE_CONFIGURATION =
            T.let(
              :SCORE_CONFIGURATION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE =
            T.let(
              :SEQUENCE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT =
            T.let(
              :SEQUENCE_ENROLLMENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_STEP =
            T.let(
              :SEQUENCE_STEP,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_STEP_ENROLLMENT =
            T.let(
              :SEQUENCE_STEP_ENROLLMENT,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SNIPPET =
            T.let(
              :SNIPPET,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_BROADCAST =
            T.let(
              :SOCIAL_BROADCAST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_CHANNEL =
            T.let(
              :SOCIAL_CHANNEL,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_POST =
            T.let(
              :SOCIAL_POST,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_PROFILE =
            T.let(
              :SOCIAL_PROFILE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOX_PROTECTED_DUMMY_TYPE =
            T.let(
              :SOX_PROTECTED_DUMMY_TYPE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOX_PROTECTED_TEST_TYPE =
            T.let(
              :SOX_PROTECTED_TEST_TYPE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SUBMISSION_TAG =
            T.let(
              :SUBMISSION_TAG,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :SUBSCRIPTION,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TASK_TEMPLATE =
            T.let(
              :TASK_TEMPLATE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TAX =
            T.let(
              :TAX,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TICKET =
            T.let(
              :TICKET,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :UNSUBSCRIBE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          VIEW_BLOCK =
            T.let(
              :VIEW_BLOCK,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
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
