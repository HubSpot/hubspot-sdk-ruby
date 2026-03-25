# typed: strong

module HubspotSDK
  module Models
    module Automation
      class FieldTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::FieldTypeDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :external_options

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[HubspotSDK::Option]) }
        attr_accessor :options

        sig do
          returns(
            T.any(
              HubspotSDK::Automation::IntegerFieldSchema,
              HubspotSDK::Automation::LongFieldSchema,
              HubspotSDK::Automation::DoubleFieldSchema,
              HubspotSDK::Automation::StringFieldSchema,
              HubspotSDK::Automation::BooleanFieldSchema,
              HubspotSDK::Automation::ArrayFieldSchema,
              HubspotSDK::Automation::ObjectFieldSchema
            )
          )
        end
        attr_accessor :schema

        sig do
          returns(HubspotSDK::Automation::FieldTypeDefinition::Type::OrSymbol)
        end
        attr_accessor :type

        sig { returns(T::Boolean) }
        attr_accessor :use_chirp

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :external_options_reference_type

        sig { params(external_options_reference_type: String).void }
        attr_writer :external_options_reference_type

        sig do
          returns(
            T.nilable(
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::OrSymbol
            )
          )
        end
        attr_reader :field_type

        sig do
          params(
            field_type:
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::OrSymbol
          ).void
        end
        attr_writer :field_type

        sig { returns(T.nilable(String)) }
        attr_reader :help_text

        sig { params(help_text: String).void }
        attr_writer :help_text

        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig { returns(T.nilable(String)) }
        attr_reader :options_url

        sig { params(options_url: String).void }
        attr_writer :options_url

        sig do
          returns(
            T.nilable(
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::OrSymbol
            )
          )
        end
        attr_reader :referenced_object_type

        sig do
          params(
            referenced_object_type:
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::OrSymbol
          ).void
        end
        attr_writer :referenced_object_type

        sig do
          params(
            external_options: T::Boolean,
            name: String,
            options: T::Array[HubspotSDK::Option::OrHash],
            schema:
              T.any(
                HubspotSDK::Automation::IntegerFieldSchema::OrHash,
                HubspotSDK::Automation::LongFieldSchema::OrHash,
                HubspotSDK::Automation::DoubleFieldSchema::OrHash,
                HubspotSDK::Automation::StringFieldSchema::OrHash,
                HubspotSDK::Automation::BooleanFieldSchema::OrHash,
                HubspotSDK::Automation::ArrayFieldSchema::OrHash,
                HubspotSDK::Automation::ObjectFieldSchema::OrHash
              ),
            type: HubspotSDK::Automation::FieldTypeDefinition::Type::OrSymbol,
            use_chirp: T::Boolean,
            description: String,
            external_options_reference_type: String,
            field_type:
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::OrSymbol,
            help_text: String,
            label: String,
            options_url: String,
            referenced_object_type:
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          external_options:,
          name:,
          options:,
          schema:,
          type:,
          use_chirp:,
          description: nil,
          external_options_reference_type: nil,
          field_type: nil,
          help_text: nil,
          label: nil,
          options_url: nil,
          referenced_object_type: nil
        )
        end

        sig do
          override.returns(
            {
              external_options: T::Boolean,
              name: String,
              options: T::Array[HubspotSDK::Option],
              schema:
                T.any(
                  HubspotSDK::Automation::IntegerFieldSchema,
                  HubspotSDK::Automation::LongFieldSchema,
                  HubspotSDK::Automation::DoubleFieldSchema,
                  HubspotSDK::Automation::StringFieldSchema,
                  HubspotSDK::Automation::BooleanFieldSchema,
                  HubspotSDK::Automation::ArrayFieldSchema,
                  HubspotSDK::Automation::ObjectFieldSchema
                ),
              type: HubspotSDK::Automation::FieldTypeDefinition::Type::OrSymbol,
              use_chirp: T::Boolean,
              description: String,
              external_options_reference_type: String,
              field_type:
                HubspotSDK::Automation::FieldTypeDefinition::FieldType::OrSymbol,
              help_text: String,
              label: String,
              options_url: String,
              referenced_object_type:
                HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Schema
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::IntegerFieldSchema,
                HubspotSDK::Automation::LongFieldSchema,
                HubspotSDK::Automation::DoubleFieldSchema,
                HubspotSDK::Automation::StringFieldSchema,
                HubspotSDK::Automation::BooleanFieldSchema,
                HubspotSDK::Automation::ArrayFieldSchema,
                HubspotSDK::Automation::ObjectFieldSchema
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::FieldTypeDefinition::Schema::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::FieldTypeDefinition::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :bool,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          CURRENCY_NUMBER =
            T.let(
              :currency_number,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          DATETIME =
            T.let(
              :datetime,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          JSON =
            T.let(
              :json,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          OBJECT_COORDINATES =
            T.let(
              :object_coordinates,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::FieldTypeDefinition::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::FieldTypeDefinition::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_READ_TIME =
            T.let(
              :calculation_read_time,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_ROLLUP =
            T.let(
              :calculation_rollup,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_SCORE =
            T.let(
              :calculation_score,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::FieldTypeDefinition::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ReferencedObjectType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED_CART =
            T.let(
              :ABANDONED_CART,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AD =
            T.let(
              :AD,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AD_ACCOUNT =
            T.let(
              :AD_ACCOUNT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AD_CAMPAIGN =
            T.let(
              :AD_CAMPAIGN,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :AD_GROUP,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AI_FORECAST =
            T.let(
              :AI_FORECAST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ALL_PAGES =
            T.let(
              :ALL_PAGES,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          APPROVAL =
            T.let(
              :APPROVAL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          APPROVAL_STEP =
            T.let(
              :APPROVAL_STEP,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ATTRIBUTION =
            T.let(
              :ATTRIBUTION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :AUDIENCE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW =
            T.let(
              :AUTOMATION_PLATFORM_FLOW,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW_ACTION =
            T.let(
              :AUTOMATION_PLATFORM_FLOW_ACTION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          BET_ALERT =
            T.let(
              :BET_ALERT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          BET_DELIVERABLE_SERVICE =
            T.let(
              :BET_DELIVERABLE_SERVICE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          BLOG_LISTING_PAGE =
            T.let(
              :BLOG_LISTING_PAGE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CALL =
            T.let(
              :CALL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN =
            T.let(
              :CAMPAIGN,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_BUDGET_ITEM =
            T.let(
              :CAMPAIGN_BUDGET_ITEM,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_SPEND_ITEM =
            T.let(
              :CAMPAIGN_SPEND_ITEM,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_STEP =
            T.let(
              :CAMPAIGN_STEP,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE =
            T.let(
              :CAMPAIGN_TEMPLATE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE_STEP =
            T.let(
              :CAMPAIGN_TEMPLATE_STEP,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CART =
            T.let(
              :CART,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CHATFLOW =
            T.let(
              :CHATFLOW,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CLIP =
            T.let(
              :CLIP,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CMS_URL =
            T.let(
              :CMS_URL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          COMBO_EVENT_CONFIGURATION =
            T.let(
              :COMBO_EVENT_CONFIGURATION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          COMMERCE_PAYMENT =
            T.let(
              :COMMERCE_PAYMENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          COMMUNICATION =
            T.let(
              :COMMUNICATION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          COMPANY =
            T.let(
              :COMPANY,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTACT =
            T.let(
              :CONTACT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTACT_CREATE_ATTRIBUTION =
            T.let(
              :CONTACT_CREATE_ATTRIBUTION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTENT_AUDIT =
            T.let(
              :CONTENT_AUDIT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONTENT_AUDIT_PAGE =
            T.let(
              :CONTENT_AUDIT_PAGE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :CONVERSATION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION_INBOX =
            T.let(
              :CONVERSATION_INBOX,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CONVERSATION_SESSION =
            T.let(
              :CONVERSATION_SESSION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CRM_OBJECTS_DUMMY_TYPE =
            T.let(
              :CRM_OBJECTS_DUMMY_TYPE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CRM_PIPELINES_DUMMY_TYPE =
            T.let(
              :CRM_PIPELINES_DUMMY_TYPE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          CTA_VARIANT =
            T.let(
              :CTA_VARIANT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DATA_PRIVACY_CONSENT =
            T.let(
              :DATA_PRIVACY_CONSENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DATA_SYNC_STATE =
            T.let(
              :DATA_SYNC_STATE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DEAL =
            T.let(
              :DEAL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DEAL_CREATE_ATTRIBUTION =
            T.let(
              :DEAL_CREATE_ATTRIBUTION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DEAL_REGISTRATION =
            T.let(
              :DEAL_REGISTRATION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DEAL_SPLIT =
            T.let(
              :DEAL_SPLIT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :DISCOUNT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT_CODE =
            T.let(
              :DISCOUNT_CODE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          DISCOUNT_TEMPLATE =
            T.let(
              :DISCOUNT_TEMPLATE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :ENGAGEMENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          EXTERNAL_WEB_URL =
            T.let(
              :EXTERNAL_WEB_URL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FEEDBACK_SUBMISSION =
            T.let(
              :FEEDBACK_SUBMISSION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FILE_MANAGER_FILE =
            T.let(
              :FILE_MANAGER_FILE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FILE_MANAGER_FOLDER =
            T.let(
              :FILE_MANAGER_FOLDER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FORECAST =
            T.let(
              :FORECAST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          FORM_SUBMISSION_INBOUNDDB =
            T.let(
              :FORM_SUBMISSION_INBOUNDDB,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TARGET =
            T.let(
              :GOAL_TARGET,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TARGET_GROUP =
            T.let(
              :GOAL_TARGET_GROUP,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          GOAL_TEMPLATE =
            T.let(
              :GOAL_TEMPLATE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          GSC_PROPERTY =
            T.let(
              :GSC_PROPERTY,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          HUB =
            T.let(
              :HUB,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          KEYWORD =
            T.let(
              :KEYWORD,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          LEAD =
            T.let(
              :LEAD,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          LINE_ITEM =
            T.let(
              :LINE_ITEM,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_CALENDAR =
            T.let(
              :MARKETING_CALENDAR,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_CAMPAIGN_UTM =
            T.let(
              :MARKETING_CAMPAIGN_UTM,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EMAIL =
            T.let(
              :MARKETING_EMAIL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EVENT =
            T.let(
              :MARKETING_EVENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_EVENT_ATTENDANCE =
            T.let(
              :MARKETING_EVENT_ATTENDANCE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MARKETING_SMS =
            T.let(
              :MARKETING_SMS,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MEDIA_BRIDGE =
            T.let(
              :MEDIA_BRIDGE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MEETING_EVENT =
            T.let(
              :MEETING_EVENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          MIC =
            T.let(
              :MIC,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          OBJECT_LIST =
            T.let(
              :OBJECT_LIST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ORDER =
            T.let(
              :ORDER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          OWNER =
            T.let(
              :OWNER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_ACCOUNT =
            T.let(
              :PARTNER_ACCOUNT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_CLIENT =
            T.let(
              :PARTNER_CLIENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_CLIENT_REVENUE =
            T.let(
              :PARTNER_CLIENT_REVENUE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PARTNER_SERVICE =
            T.let(
              :PARTNER_SERVICE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_LINK =
            T.let(
              :PAYMENT_LINK,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE =
            T.let(
              :PAYMENT_SCHEDULE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE_INSTALLMENT =
            T.let(
              :PAYMENT_SCHEDULE_INSTALLMENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PERMISSIONS_TESTING =
            T.let(
              :PERMISSIONS_TESTING,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK =
            T.let(
              :PLAYBOOK,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_QUESTION =
            T.let(
              :PLAYBOOK_QUESTION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION =
            T.let(
              :PLAYBOOK_SUBMISSION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION_ANSWER =
            T.let(
              :PLAYBOOK_SUBMISSION_ANSWER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYLIST =
            T.let(
              :PLAYLIST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PLAYLIST_FOLDER =
            T.let(
              :PLAYLIST_FOLDER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PODCAST_EPISODE =
            T.let(
              :PODCAST_EPISODE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC_MESSAGE =
            T.let(
              :PORTAL_OBJECT_SYNC_MESSAGE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          POSTAL_MAIL =
            T.let(
              :POSTAL_MAIL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PRIVACY_SCANNER_COOKIE =
            T.let(
              :PRIVACY_SCANNER_COOKIE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :PRODUCT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PRODUCT_OR_FOLDER =
            T.let(
              :PRODUCT_OR_FOLDER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PROPERTY_INFO =
            T.let(
              :PROPERTY_INFO,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PROSPECTING_AGENT_CONTACT_ASSIGNMENT =
            T.let(
              :PROSPECTING_AGENT_CONTACT_ASSIGNMENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          PUBLISHING_TASK =
            T.let(
              :PUBLISHING_TASK,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUARANTINED_SUBMISSION =
            T.let(
              :QUARANTINED_SUBMISSION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTA =
            T.let(
              :QUOTA,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_FIELD =
            T.let(
              :QUOTE_FIELD,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_MODULE =
            T.let(
              :QUOTE_MODULE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_MODULE_FIELD =
            T.let(
              :QUOTE_MODULE_FIELD,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          RESTORABLE_CRM_OBJECT =
            T.let(
              :RESTORABLE_CRM_OBJECT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ROSTER =
            T.let(
              :ROSTER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          ROSTER_MEMBER =
            T.let(
              :ROSTER_MEMBER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SALES_DOCUMENT =
            T.let(
              :SALES_DOCUMENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SALES_TASK =
            T.let(
              :SALES_TASK,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SALES_WORKLOAD =
            T.let(
              :SALES_WORKLOAD,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SALESFORCE_SYNC_ERROR =
            T.let(
              :SALESFORCE_SYNC_ERROR,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SCHEDULING_PAGE =
            T.let(
              :SCHEDULING_PAGE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SCHEMAS_BACKEND_TEST =
            T.let(
              :SCHEMAS_BACKEND_TEST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SCORE_CONFIGURATION =
            T.let(
              :SCORE_CONFIGURATION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE =
            T.let(
              :SEQUENCE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT =
            T.let(
              :SEQUENCE_ENROLLMENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_STEP =
            T.let(
              :SEQUENCE_STEP,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SEQUENCE_STEP_ENROLLMENT =
            T.let(
              :SEQUENCE_STEP_ENROLLMENT,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SNIPPET =
            T.let(
              :SNIPPET,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_BROADCAST =
            T.let(
              :SOCIAL_BROADCAST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_CHANNEL =
            T.let(
              :SOCIAL_CHANNEL,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_POST =
            T.let(
              :SOCIAL_POST,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOCIAL_PROFILE =
            T.let(
              :SOCIAL_PROFILE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOX_PROTECTED_DUMMY_TYPE =
            T.let(
              :SOX_PROTECTED_DUMMY_TYPE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SOX_PROTECTED_TEST_TYPE =
            T.let(
              :SOX_PROTECTED_TEST_TYPE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SUBMISSION_TAG =
            T.let(
              :SUBMISSION_TAG,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :SUBSCRIPTION,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TASK_TEMPLATE =
            T.let(
              :TASK_TEMPLATE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TAX =
            T.let(
              :TAX,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          TICKET =
            T.let(
              :TICKET,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :UNSUBSCRIBE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          VIEW_BLOCK =
            T.let(
              :VIEW_BLOCK,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType::TaggedSymbol
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
