# typed: strong

module HubspotSDK
  module Models
    module Events
      class AssociationDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::AssociationDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the associated object (e.g., a contact ID).
        sig { returns(Integer) }
        attr_accessor :id

        # Whether custom labels can be used in the association.
        sig { returns(T::Boolean) }
        attr_accessor :allows_custom_labels

        # The cardinality from the source object's perspective, either "ONE_TO_ONE" or
        # "ONE_TO_MANY".
        sig do
          returns(
            HubspotSDK::Events::AssociationDefinition::Cardinality::TaggedSymbol
          )
        end
        attr_accessor :cardinality

        # The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or
        # "INTEGRATOR_DEFINED"
        sig do
          returns(
            HubspotSDK::Events::AssociationDefinition::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # The ID of the source object type (e.g., 0-1 for contacts).
        sig { returns(String) }
        attr_accessor :from_object_type_id

        # Whether all potential linked objects are included in the association
        sig { returns(T::Boolean) }
        attr_accessor :has_all_associated_objects

        # Whether deletions in the association should cause cascading deletes to linked
        # objects.
        sig { returns(T::Boolean) }
        attr_accessor :has_cascading_deletes

        # Whether a user has set a limit for the number of source objects.
        sig { returns(T::Boolean) }
        attr_accessor :has_user_enforced_max_from_object_ids

        # Whether a user has set a limit for the number of destination objects.
        sig { returns(T::Boolean) }
        attr_accessor :has_user_enforced_max_to_object_ids

        # Whether the association is hidden or not.
        sig { returns(T::Boolean) }
        attr_accessor :hidden

        # Whether the reverse association can also support custom labels.
        sig { returns(T::Boolean) }
        attr_accessor :inverse_allows_custom_labels

        # The cardinality from the destination object's perspective, either "ONE_TO_ONE"
        # or "ONE_TO_MANY".
        sig do
          returns(
            HubspotSDK::Events::AssociationDefinition::InverseCardinality::TaggedSymbol
          )
        end
        attr_accessor :inverse_cardinality

        # Whether all potential reverse linked objects are included in the association.
        sig { returns(T::Boolean) }
        attr_accessor :inverse_has_all_associated_objects

        # The unique ID for the inverse side of the association.
        sig { returns(Integer) }
        attr_accessor :inverse_id

        # The name used to describe the inverse relationship in this association
        sig { returns(String) }
        attr_accessor :inverse_name

        # Whether the inverse association is considered primary.
        sig { returns(T::Boolean) }
        attr_accessor :is_inverse_primary

        # Whether the association is the primary link between the entities involved.
        sig { returns(T::Boolean) }
        attr_accessor :is_primary

        # The maximum number of source object IDs allowed in the association.
        sig { returns(Integer) }
        attr_accessor :max_from_object_ids

        # The maximum number of destination object IDs allowed in the association.
        sig { returns(Integer) }
        attr_accessor :max_to_object_ids

        # For labeled association types, the internal name of the association.
        sig { returns(String) }
        attr_accessor :name

        # A unique across-portal ID applied to the association.
        sig { returns(String) }
        attr_accessor :portal_unique_identifier

        # The ID of the destination object type (e.g., 0-3 for deals).
        sig { returns(String) }
        attr_accessor :to_object_type_id

        # The name of the source object type (e.g,. "DEAL" or "QUOTE").
        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          )
        end
        attr_reader :from_object_type

        sig do
          params(
            from_object_type:
              HubspotSDK::Events::AssociationDefinition::FromObjectType::OrSymbol
          ).void
        end
        attr_writer :from_object_type

        # The label used to describe the reverse relationship in an association.
        sig { returns(T.nilable(String)) }
        attr_reader :inverse_label

        sig { params(inverse_label: String).void }
        attr_writer :inverse_label

        # The label given to an association.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # The name of the destination object type (e.g,. "DEAL" or "QUOTE").
        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          )
        end
        attr_reader :to_object_type

        sig do
          params(
            to_object_type:
              HubspotSDK::Events::AssociationDefinition::ToObjectType::OrSymbol
          ).void
        end
        attr_writer :to_object_type

        # The definition of an association
        sig do
          params(
            id: Integer,
            allows_custom_labels: T::Boolean,
            cardinality:
              HubspotSDK::Events::AssociationDefinition::Cardinality::OrSymbol,
            category:
              HubspotSDK::Events::AssociationDefinition::Category::OrSymbol,
            from_object_type_id: String,
            has_all_associated_objects: T::Boolean,
            has_cascading_deletes: T::Boolean,
            has_user_enforced_max_from_object_ids: T::Boolean,
            has_user_enforced_max_to_object_ids: T::Boolean,
            hidden: T::Boolean,
            inverse_allows_custom_labels: T::Boolean,
            inverse_cardinality:
              HubspotSDK::Events::AssociationDefinition::InverseCardinality::OrSymbol,
            inverse_has_all_associated_objects: T::Boolean,
            inverse_id: Integer,
            inverse_name: String,
            is_inverse_primary: T::Boolean,
            is_primary: T::Boolean,
            max_from_object_ids: Integer,
            max_to_object_ids: Integer,
            name: String,
            portal_unique_identifier: String,
            to_object_type_id: String,
            from_object_type:
              HubspotSDK::Events::AssociationDefinition::FromObjectType::OrSymbol,
            inverse_label: String,
            label: String,
            to_object_type:
              HubspotSDK::Events::AssociationDefinition::ToObjectType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the associated object (e.g., a contact ID).
          id:,
          # Whether custom labels can be used in the association.
          allows_custom_labels:,
          # The cardinality from the source object's perspective, either "ONE_TO_ONE" or
          # "ONE_TO_MANY".
          cardinality:,
          # The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or
          # "INTEGRATOR_DEFINED"
          category:,
          # The ID of the source object type (e.g., 0-1 for contacts).
          from_object_type_id:,
          # Whether all potential linked objects are included in the association
          has_all_associated_objects:,
          # Whether deletions in the association should cause cascading deletes to linked
          # objects.
          has_cascading_deletes:,
          # Whether a user has set a limit for the number of source objects.
          has_user_enforced_max_from_object_ids:,
          # Whether a user has set a limit for the number of destination objects.
          has_user_enforced_max_to_object_ids:,
          # Whether the association is hidden or not.
          hidden:,
          # Whether the reverse association can also support custom labels.
          inverse_allows_custom_labels:,
          # The cardinality from the destination object's perspective, either "ONE_TO_ONE"
          # or "ONE_TO_MANY".
          inverse_cardinality:,
          # Whether all potential reverse linked objects are included in the association.
          inverse_has_all_associated_objects:,
          # The unique ID for the inverse side of the association.
          inverse_id:,
          # The name used to describe the inverse relationship in this association
          inverse_name:,
          # Whether the inverse association is considered primary.
          is_inverse_primary:,
          # Whether the association is the primary link between the entities involved.
          is_primary:,
          # The maximum number of source object IDs allowed in the association.
          max_from_object_ids:,
          # The maximum number of destination object IDs allowed in the association.
          max_to_object_ids:,
          # For labeled association types, the internal name of the association.
          name:,
          # A unique across-portal ID applied to the association.
          portal_unique_identifier:,
          # The ID of the destination object type (e.g., 0-3 for deals).
          to_object_type_id:,
          # The name of the source object type (e.g,. "DEAL" or "QUOTE").
          from_object_type: nil,
          # The label used to describe the reverse relationship in an association.
          inverse_label: nil,
          # The label given to an association.
          label: nil,
          # The name of the destination object type (e.g,. "DEAL" or "QUOTE").
          to_object_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              allows_custom_labels: T::Boolean,
              cardinality:
                HubspotSDK::Events::AssociationDefinition::Cardinality::TaggedSymbol,
              category:
                HubspotSDK::Events::AssociationDefinition::Category::TaggedSymbol,
              from_object_type_id: String,
              has_all_associated_objects: T::Boolean,
              has_cascading_deletes: T::Boolean,
              has_user_enforced_max_from_object_ids: T::Boolean,
              has_user_enforced_max_to_object_ids: T::Boolean,
              hidden: T::Boolean,
              inverse_allows_custom_labels: T::Boolean,
              inverse_cardinality:
                HubspotSDK::Events::AssociationDefinition::InverseCardinality::TaggedSymbol,
              inverse_has_all_associated_objects: T::Boolean,
              inverse_id: Integer,
              inverse_name: String,
              is_inverse_primary: T::Boolean,
              is_primary: T::Boolean,
              max_from_object_ids: Integer,
              max_to_object_ids: Integer,
              name: String,
              portal_unique_identifier: String,
              to_object_type_id: String,
              from_object_type:
                HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol,
              inverse_label: String,
              label: String,
              to_object_type:
                HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The cardinality from the source object's perspective, either "ONE_TO_ONE" or
        # "ONE_TO_MANY".
        module Cardinality
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AssociationDefinition::Cardinality
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TO_MANY =
            T.let(
              :ONE_TO_MANY,
              HubspotSDK::Events::AssociationDefinition::Cardinality::TaggedSymbol
            )
          ONE_TO_ONE =
            T.let(
              :ONE_TO_ONE,
              HubspotSDK::Events::AssociationDefinition::Cardinality::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AssociationDefinition::Cardinality::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or
        # "INTEGRATOR_DEFINED"
        module Category
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::AssociationDefinition::Category)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubspotSDK::Events::AssociationDefinition::Category::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubspotSDK::Events::AssociationDefinition::Category::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubspotSDK::Events::AssociationDefinition::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AssociationDefinition::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The cardinality from the destination object's perspective, either "ONE_TO_ONE"
        # or "ONE_TO_MANY".
        module InverseCardinality
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AssociationDefinition::InverseCardinality
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TO_MANY =
            T.let(
              :ONE_TO_MANY,
              HubspotSDK::Events::AssociationDefinition::InverseCardinality::TaggedSymbol
            )
          ONE_TO_ONE =
            T.let(
              :ONE_TO_ONE,
              HubspotSDK::Events::AssociationDefinition::InverseCardinality::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AssociationDefinition::InverseCardinality::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The name of the source object type (e.g,. "DEAL" or "QUOTE").
        module FromObjectType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AssociationDefinition::FromObjectType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED_CART =
            T.let(
              :ABANDONED_CART,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AD =
            T.let(
              :AD,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AD_ACCOUNT =
            T.let(
              :AD_ACCOUNT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AD_CAMPAIGN =
            T.let(
              :AD_CAMPAIGN,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :AD_GROUP,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AI_FORECAST =
            T.let(
              :AI_FORECAST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          ALL_PAGES =
            T.let(
              :ALL_PAGES,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          APPROVAL =
            T.let(
              :APPROVAL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          APPROVAL_STEP =
            T.let(
              :APPROVAL_STEP,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          ATTRIBUTION =
            T.let(
              :ATTRIBUTION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :AUDIENCE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW =
            T.let(
              :AUTOMATION_PLATFORM_FLOW,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW_ACTION =
            T.let(
              :AUTOMATION_PLATFORM_FLOW_ACTION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          BET_ALERT =
            T.let(
              :BET_ALERT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          BET_DELIVERABLE_SERVICE =
            T.let(
              :BET_DELIVERABLE_SERVICE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          BLOG_LISTING_PAGE =
            T.let(
              :BLOG_LISTING_PAGE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CALL =
            T.let(
              :CALL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CAMPAIGN =
            T.let(
              :CAMPAIGN,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CAMPAIGN_BUDGET_ITEM =
            T.let(
              :CAMPAIGN_BUDGET_ITEM,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CAMPAIGN_SPEND_ITEM =
            T.let(
              :CAMPAIGN_SPEND_ITEM,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CAMPAIGN_STEP =
            T.let(
              :CAMPAIGN_STEP,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE =
            T.let(
              :CAMPAIGN_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE_STEP =
            T.let(
              :CAMPAIGN_TEMPLATE_STEP,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CART =
            T.let(
              :CART,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CHATFLOW =
            T.let(
              :CHATFLOW,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CLIP =
            T.let(
              :CLIP,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CMS_URL =
            T.let(
              :CMS_URL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          COMBO_EVENT_CONFIGURATION =
            T.let(
              :COMBO_EVENT_CONFIGURATION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          COMMERCE_PAYMENT =
            T.let(
              :COMMERCE_PAYMENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          COMMUNICATION =
            T.let(
              :COMMUNICATION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          COMPANY =
            T.let(
              :COMPANY,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CONTACT =
            T.let(
              :CONTACT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CONTACT_CREATE_ATTRIBUTION =
            T.let(
              :CONTACT_CREATE_ATTRIBUTION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CONTENT_AUDIT =
            T.let(
              :CONTENT_AUDIT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CONTENT_AUDIT_PAGE =
            T.let(
              :CONTENT_AUDIT_PAGE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :CONVERSATION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CONVERSATION_INBOX =
            T.let(
              :CONVERSATION_INBOX,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CONVERSATION_SESSION =
            T.let(
              :CONVERSATION_SESSION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CRM_OBJECTS_DUMMY_TYPE =
            T.let(
              :CRM_OBJECTS_DUMMY_TYPE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CRM_PIPELINES_DUMMY_TYPE =
            T.let(
              :CRM_PIPELINES_DUMMY_TYPE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          CTA_VARIANT =
            T.let(
              :CTA_VARIANT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DATA_PRIVACY_CONSENT =
            T.let(
              :DATA_PRIVACY_CONSENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DATA_SYNC_STATE =
            T.let(
              :DATA_SYNC_STATE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DEAL =
            T.let(
              :DEAL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DEAL_CREATE_ATTRIBUTION =
            T.let(
              :DEAL_CREATE_ATTRIBUTION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DEAL_REGISTRATION =
            T.let(
              :DEAL_REGISTRATION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DEAL_SPLIT =
            T.let(
              :DEAL_SPLIT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :DISCOUNT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DISCOUNT_CODE =
            T.let(
              :DISCOUNT_CODE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          DISCOUNT_TEMPLATE =
            T.let(
              :DISCOUNT_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :ENGAGEMENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          EXTERNAL_WEB_URL =
            T.let(
              :EXTERNAL_WEB_URL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FEEDBACK_SUBMISSION =
            T.let(
              :FEEDBACK_SUBMISSION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FILE_MANAGER_FILE =
            T.let(
              :FILE_MANAGER_FILE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FILE_MANAGER_FOLDER =
            T.let(
              :FILE_MANAGER_FOLDER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FORECAST =
            T.let(
              :FORECAST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          FORM_SUBMISSION_INBOUNDDB =
            T.let(
              :FORM_SUBMISSION_INBOUNDDB,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          GOAL_TARGET =
            T.let(
              :GOAL_TARGET,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          GOAL_TARGET_GROUP =
            T.let(
              :GOAL_TARGET_GROUP,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          GOAL_TEMPLATE =
            T.let(
              :GOAL_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          GSC_PROPERTY =
            T.let(
              :GSC_PROPERTY,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          HUB =
            T.let(
              :HUB,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          KEYWORD =
            T.let(
              :KEYWORD,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          LEAD =
            T.let(
              :LEAD,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          LINE_ITEM =
            T.let(
              :LINE_ITEM,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MARKETING_CALENDAR =
            T.let(
              :MARKETING_CALENDAR,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MARKETING_CAMPAIGN_UTM =
            T.let(
              :MARKETING_CAMPAIGN_UTM,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MARKETING_EMAIL =
            T.let(
              :MARKETING_EMAIL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MARKETING_EVENT =
            T.let(
              :MARKETING_EVENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MARKETING_EVENT_ATTENDANCE =
            T.let(
              :MARKETING_EVENT_ATTENDANCE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MARKETING_SMS =
            T.let(
              :MARKETING_SMS,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MEDIA_BRIDGE =
            T.let(
              :MEDIA_BRIDGE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MEETING_EVENT =
            T.let(
              :MEETING_EVENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          MIC =
            T.let(
              :MIC,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          OBJECT_LIST =
            T.let(
              :OBJECT_LIST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          ORDER =
            T.let(
              :ORDER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          OWNER =
            T.let(
              :OWNER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PARTNER_ACCOUNT =
            T.let(
              :PARTNER_ACCOUNT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PARTNER_CLIENT =
            T.let(
              :PARTNER_CLIENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PARTNER_CLIENT_REVENUE =
            T.let(
              :PARTNER_CLIENT_REVENUE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PARTNER_SERVICE =
            T.let(
              :PARTNER_SERVICE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PAYMENT_LINK =
            T.let(
              :PAYMENT_LINK,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE =
            T.let(
              :PAYMENT_SCHEDULE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE_INSTALLMENT =
            T.let(
              :PAYMENT_SCHEDULE_INSTALLMENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PERMISSIONS_TESTING =
            T.let(
              :PERMISSIONS_TESTING,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PLAYBOOK =
            T.let(
              :PLAYBOOK,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PLAYBOOK_QUESTION =
            T.let(
              :PLAYBOOK_QUESTION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION =
            T.let(
              :PLAYBOOK_SUBMISSION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION_ANSWER =
            T.let(
              :PLAYBOOK_SUBMISSION_ANSWER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PLAYLIST =
            T.let(
              :PLAYLIST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PLAYLIST_FOLDER =
            T.let(
              :PLAYLIST_FOLDER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PODCAST_EPISODE =
            T.let(
              :PODCAST_EPISODE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC_MESSAGE =
            T.let(
              :PORTAL_OBJECT_SYNC_MESSAGE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          POSTAL_MAIL =
            T.let(
              :POSTAL_MAIL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PRIVACY_SCANNER_COOKIE =
            T.let(
              :PRIVACY_SCANNER_COOKIE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :PRODUCT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PRODUCT_OR_FOLDER =
            T.let(
              :PRODUCT_OR_FOLDER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PROPERTY_INFO =
            T.let(
              :PROPERTY_INFO,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          PUBLISHING_TASK =
            T.let(
              :PUBLISHING_TASK,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          QUARANTINED_SUBMISSION =
            T.let(
              :QUARANTINED_SUBMISSION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          QUOTA =
            T.let(
              :QUOTA,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          QUOTE_FIELD =
            T.let(
              :QUOTE_FIELD,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          QUOTE_MODULE =
            T.let(
              :QUOTE_MODULE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          QUOTE_MODULE_FIELD =
            T.let(
              :QUOTE_MODULE_FIELD,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          RESTORABLE_CRM_OBJECT =
            T.let(
              :RESTORABLE_CRM_OBJECT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          ROSTER =
            T.let(
              :ROSTER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          ROSTER_MEMBER =
            T.let(
              :ROSTER_MEMBER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SALES_DOCUMENT =
            T.let(
              :SALES_DOCUMENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SALES_TASK =
            T.let(
              :SALES_TASK,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SALES_WORKLOAD =
            T.let(
              :SALES_WORKLOAD,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SALESFORCE_SYNC_ERROR =
            T.let(
              :SALESFORCE_SYNC_ERROR,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SCHEDULING_PAGE =
            T.let(
              :SCHEDULING_PAGE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SCHEMAS_BACKEND_TEST =
            T.let(
              :SCHEMAS_BACKEND_TEST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SCORE_CONFIGURATION =
            T.let(
              :SCORE_CONFIGURATION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SEQUENCE =
            T.let(
              :SEQUENCE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT =
            T.let(
              :SEQUENCE_ENROLLMENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SEQUENCE_STEP =
            T.let(
              :SEQUENCE_STEP,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SEQUENCE_STEP_ENROLLMENT =
            T.let(
              :SEQUENCE_STEP_ENROLLMENT,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SNIPPET =
            T.let(
              :SNIPPET,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SOCIAL_BROADCAST =
            T.let(
              :SOCIAL_BROADCAST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SOCIAL_CHANNEL =
            T.let(
              :SOCIAL_CHANNEL,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SOCIAL_POST =
            T.let(
              :SOCIAL_POST,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SOCIAL_PROFILE =
            T.let(
              :SOCIAL_PROFILE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SOX_PROTECTED_DUMMY_TYPE =
            T.let(
              :SOX_PROTECTED_DUMMY_TYPE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SOX_PROTECTED_TEST_TYPE =
            T.let(
              :SOX_PROTECTED_TEST_TYPE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SUBMISSION_TAG =
            T.let(
              :SUBMISSION_TAG,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :SUBSCRIPTION,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          TASK_TEMPLATE =
            T.let(
              :TASK_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          TAX =
            T.let(
              :TAX,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          TICKET =
            T.let(
              :TICKET,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :UNSUBSCRIBE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          VIEW_BLOCK =
            T.let(
              :VIEW_BLOCK,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AssociationDefinition::FromObjectType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The name of the destination object type (e.g,. "DEAL" or "QUOTE").
        module ToObjectType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AssociationDefinition::ToObjectType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED_CART =
            T.let(
              :ABANDONED_CART,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AD =
            T.let(
              :AD,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AD_ACCOUNT =
            T.let(
              :AD_ACCOUNT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AD_CAMPAIGN =
            T.let(
              :AD_CAMPAIGN,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :AD_GROUP,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AI_FORECAST =
            T.let(
              :AI_FORECAST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          ALL_PAGES =
            T.let(
              :ALL_PAGES,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          APPROVAL =
            T.let(
              :APPROVAL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          APPROVAL_STEP =
            T.let(
              :APPROVAL_STEP,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          ATTRIBUTION =
            T.let(
              :ATTRIBUTION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :AUDIENCE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW =
            T.let(
              :AUTOMATION_PLATFORM_FLOW,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW_ACTION =
            T.let(
              :AUTOMATION_PLATFORM_FLOW_ACTION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          BET_ALERT =
            T.let(
              :BET_ALERT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          BET_DELIVERABLE_SERVICE =
            T.let(
              :BET_DELIVERABLE_SERVICE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          BLOG_LISTING_PAGE =
            T.let(
              :BLOG_LISTING_PAGE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CALL =
            T.let(
              :CALL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CAMPAIGN =
            T.let(
              :CAMPAIGN,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CAMPAIGN_BUDGET_ITEM =
            T.let(
              :CAMPAIGN_BUDGET_ITEM,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CAMPAIGN_SPEND_ITEM =
            T.let(
              :CAMPAIGN_SPEND_ITEM,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CAMPAIGN_STEP =
            T.let(
              :CAMPAIGN_STEP,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE =
            T.let(
              :CAMPAIGN_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE_STEP =
            T.let(
              :CAMPAIGN_TEMPLATE_STEP,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CART =
            T.let(
              :CART,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CHATFLOW =
            T.let(
              :CHATFLOW,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CLIP =
            T.let(
              :CLIP,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CMS_URL =
            T.let(
              :CMS_URL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          COMBO_EVENT_CONFIGURATION =
            T.let(
              :COMBO_EVENT_CONFIGURATION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          COMMERCE_PAYMENT =
            T.let(
              :COMMERCE_PAYMENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          COMMUNICATION =
            T.let(
              :COMMUNICATION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          COMPANY =
            T.let(
              :COMPANY,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CONTACT =
            T.let(
              :CONTACT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CONTACT_CREATE_ATTRIBUTION =
            T.let(
              :CONTACT_CREATE_ATTRIBUTION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CONTENT_AUDIT =
            T.let(
              :CONTENT_AUDIT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CONTENT_AUDIT_PAGE =
            T.let(
              :CONTENT_AUDIT_PAGE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :CONVERSATION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CONVERSATION_INBOX =
            T.let(
              :CONVERSATION_INBOX,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CONVERSATION_SESSION =
            T.let(
              :CONVERSATION_SESSION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CRM_OBJECTS_DUMMY_TYPE =
            T.let(
              :CRM_OBJECTS_DUMMY_TYPE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CRM_PIPELINES_DUMMY_TYPE =
            T.let(
              :CRM_PIPELINES_DUMMY_TYPE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          CTA_VARIANT =
            T.let(
              :CTA_VARIANT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DATA_PRIVACY_CONSENT =
            T.let(
              :DATA_PRIVACY_CONSENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DATA_SYNC_STATE =
            T.let(
              :DATA_SYNC_STATE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DEAL =
            T.let(
              :DEAL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DEAL_CREATE_ATTRIBUTION =
            T.let(
              :DEAL_CREATE_ATTRIBUTION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DEAL_REGISTRATION =
            T.let(
              :DEAL_REGISTRATION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DEAL_SPLIT =
            T.let(
              :DEAL_SPLIT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :DISCOUNT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DISCOUNT_CODE =
            T.let(
              :DISCOUNT_CODE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          DISCOUNT_TEMPLATE =
            T.let(
              :DISCOUNT_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :ENGAGEMENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          EXTERNAL_WEB_URL =
            T.let(
              :EXTERNAL_WEB_URL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FEEDBACK_SUBMISSION =
            T.let(
              :FEEDBACK_SUBMISSION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FILE_MANAGER_FILE =
            T.let(
              :FILE_MANAGER_FILE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FILE_MANAGER_FOLDER =
            T.let(
              :FILE_MANAGER_FOLDER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FORECAST =
            T.let(
              :FORECAST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          FORM_SUBMISSION_INBOUNDDB =
            T.let(
              :FORM_SUBMISSION_INBOUNDDB,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          GOAL_TARGET =
            T.let(
              :GOAL_TARGET,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          GOAL_TARGET_GROUP =
            T.let(
              :GOAL_TARGET_GROUP,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          GOAL_TEMPLATE =
            T.let(
              :GOAL_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          GSC_PROPERTY =
            T.let(
              :GSC_PROPERTY,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          HUB =
            T.let(
              :HUB,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          KEYWORD =
            T.let(
              :KEYWORD,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          LEAD =
            T.let(
              :LEAD,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          LINE_ITEM =
            T.let(
              :LINE_ITEM,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MARKETING_CALENDAR =
            T.let(
              :MARKETING_CALENDAR,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MARKETING_CAMPAIGN_UTM =
            T.let(
              :MARKETING_CAMPAIGN_UTM,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MARKETING_EMAIL =
            T.let(
              :MARKETING_EMAIL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MARKETING_EVENT =
            T.let(
              :MARKETING_EVENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MARKETING_EVENT_ATTENDANCE =
            T.let(
              :MARKETING_EVENT_ATTENDANCE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MARKETING_SMS =
            T.let(
              :MARKETING_SMS,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MEDIA_BRIDGE =
            T.let(
              :MEDIA_BRIDGE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MEETING_EVENT =
            T.let(
              :MEETING_EVENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          MIC =
            T.let(
              :MIC,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          OBJECT_LIST =
            T.let(
              :OBJECT_LIST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          ORDER =
            T.let(
              :ORDER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          OWNER =
            T.let(
              :OWNER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PARTNER_ACCOUNT =
            T.let(
              :PARTNER_ACCOUNT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PARTNER_CLIENT =
            T.let(
              :PARTNER_CLIENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PARTNER_CLIENT_REVENUE =
            T.let(
              :PARTNER_CLIENT_REVENUE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PARTNER_SERVICE =
            T.let(
              :PARTNER_SERVICE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PAYMENT_LINK =
            T.let(
              :PAYMENT_LINK,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE =
            T.let(
              :PAYMENT_SCHEDULE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE_INSTALLMENT =
            T.let(
              :PAYMENT_SCHEDULE_INSTALLMENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PERMISSIONS_TESTING =
            T.let(
              :PERMISSIONS_TESTING,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PLAYBOOK =
            T.let(
              :PLAYBOOK,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PLAYBOOK_QUESTION =
            T.let(
              :PLAYBOOK_QUESTION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION =
            T.let(
              :PLAYBOOK_SUBMISSION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION_ANSWER =
            T.let(
              :PLAYBOOK_SUBMISSION_ANSWER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PLAYLIST =
            T.let(
              :PLAYLIST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PLAYLIST_FOLDER =
            T.let(
              :PLAYLIST_FOLDER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PODCAST_EPISODE =
            T.let(
              :PODCAST_EPISODE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC_MESSAGE =
            T.let(
              :PORTAL_OBJECT_SYNC_MESSAGE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          POSTAL_MAIL =
            T.let(
              :POSTAL_MAIL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PRIVACY_SCANNER_COOKIE =
            T.let(
              :PRIVACY_SCANNER_COOKIE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :PRODUCT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PRODUCT_OR_FOLDER =
            T.let(
              :PRODUCT_OR_FOLDER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PROPERTY_INFO =
            T.let(
              :PROPERTY_INFO,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          PUBLISHING_TASK =
            T.let(
              :PUBLISHING_TASK,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          QUARANTINED_SUBMISSION =
            T.let(
              :QUARANTINED_SUBMISSION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          QUOTA =
            T.let(
              :QUOTA,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          QUOTE_FIELD =
            T.let(
              :QUOTE_FIELD,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          QUOTE_MODULE =
            T.let(
              :QUOTE_MODULE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          QUOTE_MODULE_FIELD =
            T.let(
              :QUOTE_MODULE_FIELD,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          RESTORABLE_CRM_OBJECT =
            T.let(
              :RESTORABLE_CRM_OBJECT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          ROSTER =
            T.let(
              :ROSTER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          ROSTER_MEMBER =
            T.let(
              :ROSTER_MEMBER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SALES_DOCUMENT =
            T.let(
              :SALES_DOCUMENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SALES_TASK =
            T.let(
              :SALES_TASK,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SALES_WORKLOAD =
            T.let(
              :SALES_WORKLOAD,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SALESFORCE_SYNC_ERROR =
            T.let(
              :SALESFORCE_SYNC_ERROR,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SCHEDULING_PAGE =
            T.let(
              :SCHEDULING_PAGE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SCHEMAS_BACKEND_TEST =
            T.let(
              :SCHEMAS_BACKEND_TEST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SCORE_CONFIGURATION =
            T.let(
              :SCORE_CONFIGURATION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SEQUENCE =
            T.let(
              :SEQUENCE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT =
            T.let(
              :SEQUENCE_ENROLLMENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SEQUENCE_STEP =
            T.let(
              :SEQUENCE_STEP,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SEQUENCE_STEP_ENROLLMENT =
            T.let(
              :SEQUENCE_STEP_ENROLLMENT,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SNIPPET =
            T.let(
              :SNIPPET,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SOCIAL_BROADCAST =
            T.let(
              :SOCIAL_BROADCAST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SOCIAL_CHANNEL =
            T.let(
              :SOCIAL_CHANNEL,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SOCIAL_POST =
            T.let(
              :SOCIAL_POST,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SOCIAL_PROFILE =
            T.let(
              :SOCIAL_PROFILE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SOX_PROTECTED_DUMMY_TYPE =
            T.let(
              :SOX_PROTECTED_DUMMY_TYPE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SOX_PROTECTED_TEST_TYPE =
            T.let(
              :SOX_PROTECTED_TEST_TYPE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SUBMISSION_TAG =
            T.let(
              :SUBMISSION_TAG,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :SUBSCRIPTION,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          TASK_TEMPLATE =
            T.let(
              :TASK_TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          TAX =
            T.let(
              :TAX,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          TICKET =
            T.let(
              :TICKET,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :UNSUBSCRIBE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          VIEW_BLOCK =
            T.let(
              :VIEW_BLOCK,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AssociationDefinition::ToObjectType::TaggedSymbol
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
