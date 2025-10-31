# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class SchemaCreateAssociationResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse,
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
              HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Cardinality::TaggedSymbol
            )
          end
          attr_accessor :cardinality

          # The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or
          # "INTEGRATOR_DEFINED"
          sig do
            returns(
              HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Category::TaggedSymbol
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
              HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::InverseCardinality::TaggedSymbol
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
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            )
          end
          attr_reader :from_object_type

          sig do
            params(
              from_object_type:
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::OrSymbol
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
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            )
          end
          attr_reader :to_object_type

          sig do
            params(
              to_object_type:
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::OrSymbol
            ).void
          end
          attr_writer :to_object_type

          # The definition of an association
          sig do
            params(
              id: Integer,
              allows_custom_labels: T::Boolean,
              cardinality:
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Cardinality::OrSymbol,
              category:
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Category::OrSymbol,
              from_object_type_id: String,
              has_all_associated_objects: T::Boolean,
              has_cascading_deletes: T::Boolean,
              has_user_enforced_max_from_object_ids: T::Boolean,
              has_user_enforced_max_to_object_ids: T::Boolean,
              hidden: T::Boolean,
              inverse_allows_custom_labels: T::Boolean,
              inverse_cardinality:
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::InverseCardinality::OrSymbol,
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
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::OrSymbol,
              inverse_label: String,
              label: String,
              to_object_type:
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::OrSymbol
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
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Cardinality::TaggedSymbol,
                category:
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Category::TaggedSymbol,
                from_object_type_id: String,
                has_all_associated_objects: T::Boolean,
                has_cascading_deletes: T::Boolean,
                has_user_enforced_max_from_object_ids: T::Boolean,
                has_user_enforced_max_to_object_ids: T::Boolean,
                hidden: T::Boolean,
                inverse_allows_custom_labels: T::Boolean,
                inverse_cardinality:
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::InverseCardinality::TaggedSymbol,
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
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol,
                inverse_label: String,
                label: String,
                to_object_type:
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
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
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Cardinality
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ONE_TO_ONE =
              T.let(
                :ONE_TO_ONE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Cardinality::TaggedSymbol
              )
            ONE_TO_MANY =
              T.let(
                :ONE_TO_MANY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Cardinality::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Cardinality::TaggedSymbol
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
                T.all(
                  Symbol,
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Category
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HUBSPOT_DEFINED =
              T.let(
                :HUBSPOT_DEFINED,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Category::TaggedSymbol
              )
            USER_DEFINED =
              T.let(
                :USER_DEFINED,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Category::TaggedSymbol
              )
            INTEGRATOR_DEFINED =
              T.let(
                :INTEGRATOR_DEFINED,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Category::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::Category::TaggedSymbol
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
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::InverseCardinality
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ONE_TO_ONE =
              T.let(
                :ONE_TO_ONE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::InverseCardinality::TaggedSymbol
              )
            ONE_TO_MANY =
              T.let(
                :ONE_TO_MANY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::InverseCardinality::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::InverseCardinality::TaggedSymbol
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
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTACT =
              T.let(
                :CONTACT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            COMPANY =
              T.let(
                :COMPANY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DEAL =
              T.let(
                :DEAL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            ENGAGEMENT =
              T.let(
                :ENGAGEMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            TICKET =
              T.let(
                :TICKET,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            OWNER =
              T.let(
                :OWNER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PRODUCT =
              T.let(
                :PRODUCT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            LINE_ITEM =
              T.let(
                :LINE_ITEM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            BET_DELIVERABLE_SERVICE =
              T.let(
                :BET_DELIVERABLE_SERVICE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CONTENT =
              T.let(
                :CONTENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CONVERSATION =
              T.let(
                :CONVERSATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            BET_ALERT =
              T.let(
                :BET_ALERT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PORTAL =
              T.let(
                :PORTAL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            QUOTE =
              T.let(
                :QUOTE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FORM_SUBMISSION_INBOUNDDB =
              T.let(
                :FORM_SUBMISSION_INBOUNDDB,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            QUOTA =
              T.let(
                :QUOTA,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            UNSUBSCRIBE =
              T.let(
                :UNSUBSCRIBE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            COMMUNICATION =
              T.let(
                :COMMUNICATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FEEDBACK_SUBMISSION =
              T.let(
                :FEEDBACK_SUBMISSION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            ATTRIBUTION =
              T.let(
                :ATTRIBUTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SALESFORCE_SYNC_ERROR =
              T.let(
                :SALESFORCE_SYNC_ERROR,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            RESTORABLE_CRM_OBJECT =
              T.let(
                :RESTORABLE_CRM_OBJECT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            HUB =
              T.let(
                :HUB,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            LANDING_PAGE =
              T.let(
                :LANDING_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PRODUCT_OR_FOLDER =
              T.let(
                :PRODUCT_OR_FOLDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            TASK =
              T.let(
                :TASK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FORM =
              T.let(
                :FORM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MARKETING_EMAIL =
              T.let(
                :MARKETING_EMAIL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AD_ACCOUNT =
              T.let(
                :AD_ACCOUNT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AD_CAMPAIGN =
              T.let(
                :AD_CAMPAIGN,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AD_GROUP =
              T.let(
                :AD_GROUP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AD =
              T.let(
                :AD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            KEYWORD =
              T.let(
                :KEYWORD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CAMPAIGN =
              T.let(
                :CAMPAIGN,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SOCIAL_CHANNEL =
              T.let(
                :SOCIAL_CHANNEL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SOCIAL_POST =
              T.let(
                :SOCIAL_POST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SITE_PAGE =
              T.let(
                :SITE_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            BLOG_POST =
              T.let(
                :BLOG_POST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            IMPORT =
              T.let(
                :IMPORT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            EXPORT =
              T.let(
                :EXPORT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CTA =
              T.let(
                :CTA,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            TASK_TEMPLATE =
              T.let(
                :TASK_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AUTOMATION_PLATFORM_FLOW =
              T.let(
                :AUTOMATION_PLATFORM_FLOW,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            OBJECT_LIST =
              T.let(
                :OBJECT_LIST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            NOTE =
              T.let(
                :NOTE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MEETING_EVENT =
              T.let(
                :MEETING_EVENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CALL =
              T.let(
                :CALL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PUBLISHING_TASK =
              T.let(
                :PUBLISHING_TASK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CONVERSATION_SESSION =
              T.let(
                :CONVERSATION_SESSION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CONTACT_CREATE_ATTRIBUTION =
              T.let(
                :CONTACT_CREATE_ATTRIBUTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :INVOICE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MARKETING_EVENT =
              T.let(
                :MARKETING_EVENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CONVERSATION_INBOX =
              T.let(
                :CONVERSATION_INBOX,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CHATFLOW =
              T.let(
                :CHATFLOW,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MEDIA_BRIDGE =
              T.let(
                :MEDIA_BRIDGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SEQUENCE =
              T.let(
                :SEQUENCE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SEQUENCE_STEP =
              T.let(
                :SEQUENCE_STEP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FORECAST =
              T.let(
                :FORECAST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SNIPPET =
              T.let(
                :SNIPPET,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            TEMPLATE =
              T.let(
                :TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DEAL_CREATE_ATTRIBUTION =
              T.let(
                :DEAL_CREATE_ATTRIBUTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            QUOTE_TEMPLATE =
              T.let(
                :QUOTE_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            QUOTE_MODULE =
              T.let(
                :QUOTE_MODULE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            QUOTE_MODULE_FIELD =
              T.let(
                :QUOTE_MODULE_FIELD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            QUOTE_FIELD =
              T.let(
                :QUOTE_FIELD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SEQUENCE_ENROLLMENT =
              T.let(
                :SEQUENCE_ENROLLMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :SUBSCRIPTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            ACCEPTANCE_TEST =
              T.let(
                :ACCEPTANCE_TEST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SOCIAL_BROADCAST =
              T.let(
                :SOCIAL_BROADCAST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DEAL_SPLIT =
              T.let(
                :DEAL_SPLIT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DEAL_REGISTRATION =
              T.let(
                :DEAL_REGISTRATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            GOAL_TARGET =
              T.let(
                :GOAL_TARGET,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            GOAL_TARGET_GROUP =
              T.let(
                :GOAL_TARGET_GROUP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PORTAL_OBJECT_SYNC_MESSAGE =
              T.let(
                :PORTAL_OBJECT_SYNC_MESSAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FILE_MANAGER_FILE =
              T.let(
                :FILE_MANAGER_FILE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FILE_MANAGER_FOLDER =
              T.let(
                :FILE_MANAGER_FOLDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SEQUENCE_STEP_ENROLLMENT =
              T.let(
                :SEQUENCE_STEP_ENROLLMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            APPROVAL =
              T.let(
                :APPROVAL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            APPROVAL_STEP =
              T.let(
                :APPROVAL_STEP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CTA_VARIANT =
              T.let(
                :CTA_VARIANT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SALES_DOCUMENT =
              T.let(
                :SALES_DOCUMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DISCOUNT =
              T.let(
                :DISCOUNT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FEE =
              T.let(
                :FEE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            TAX =
              T.let(
                :TAX,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MARKETING_CALENDAR =
              T.let(
                :MARKETING_CALENDAR,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PERMISSIONS_TESTING =
              T.let(
                :PERMISSIONS_TESTING,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PRIVACY_SCANNER_COOKIE =
              T.let(
                :PRIVACY_SCANNER_COOKIE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DATA_SYNC_STATE =
              T.let(
                :DATA_SYNC_STATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            WEB_INTERACTIVE =
              T.let(
                :WEB_INTERACTIVE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PLAYBOOK =
              T.let(
                :PLAYBOOK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FOLDER =
              T.let(
                :FOLDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PLAYBOOK_QUESTION =
              T.let(
                :PLAYBOOK_QUESTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PLAYBOOK_SUBMISSION =
              T.let(
                :PLAYBOOK_SUBMISSION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PLAYBOOK_SUBMISSION_ANSWER =
              T.let(
                :PLAYBOOK_SUBMISSION_ANSWER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            COMMERCE_PAYMENT =
              T.let(
                :COMMERCE_PAYMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            GSC_PROPERTY =
              T.let(
                :GSC_PROPERTY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SOX_PROTECTED_DUMMY_TYPE =
              T.let(
                :SOX_PROTECTED_DUMMY_TYPE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            BLOG_LISTING_PAGE =
              T.let(
                :BLOG_LISTING_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            QUARANTINED_SUBMISSION =
              T.let(
                :QUARANTINED_SUBMISSION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PAYMENT_SCHEDULE =
              T.let(
                :PAYMENT_SCHEDULE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PAYMENT_SCHEDULE_INSTALLMENT =
              T.let(
                :PAYMENT_SCHEDULE_INSTALLMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MARKETING_CAMPAIGN_UTM =
              T.let(
                :MARKETING_CAMPAIGN_UTM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DISCOUNT_TEMPLATE =
              T.let(
                :DISCOUNT_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DISCOUNT_CODE =
              T.let(
                :DISCOUNT_CODE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            FEEDBACK_SURVEY =
              T.let(
                :FEEDBACK_SURVEY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CMS_URL =
              T.let(
                :CMS_URL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SALES_TASK =
              T.let(
                :SALES_TASK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SALES_WORKLOAD =
              T.let(
                :SALES_WORKLOAD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            USER =
              T.let(
                :USER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            POSTAL_MAIL =
              T.let(
                :POSTAL_MAIL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SCHEMAS_BACKEND_TEST =
              T.let(
                :SCHEMAS_BACKEND_TEST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PAYMENT_LINK =
              T.let(
                :PAYMENT_LINK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SUBMISSION_TAG =
              T.let(
                :SUBMISSION_TAG,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CAMPAIGN_STEP =
              T.let(
                :CAMPAIGN_STEP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SCHEDULING_PAGE =
              T.let(
                :SCHEDULING_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SOX_PROTECTED_TEST_TYPE =
              T.let(
                :SOX_PROTECTED_TEST_TYPE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            ORDER =
              T.let(
                :ORDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MARKETING_SMS =
              T.let(
                :MARKETING_SMS,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PARTNER_ACCOUNT =
              T.let(
                :PARTNER_ACCOUNT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CAMPAIGN_TEMPLATE =
              T.let(
                :CAMPAIGN_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CAMPAIGN_TEMPLATE_STEP =
              T.let(
                :CAMPAIGN_TEMPLATE_STEP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PLAYLIST =
              T.let(
                :PLAYLIST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CLIP =
              T.let(
                :CLIP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CAMPAIGN_BUDGET_ITEM =
              T.let(
                :CAMPAIGN_BUDGET_ITEM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CAMPAIGN_SPEND_ITEM =
              T.let(
                :CAMPAIGN_SPEND_ITEM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MIC =
              T.let(
                :MIC,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CONTENT_AUDIT =
              T.let(
                :CONTENT_AUDIT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CONTENT_AUDIT_PAGE =
              T.let(
                :CONTENT_AUDIT_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PLAYLIST_FOLDER =
              T.let(
                :PLAYLIST_FOLDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            LEAD =
              T.let(
                :LEAD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            ABANDONED_CART =
              T.let(
                :ABANDONED_CART,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            EXTERNAL_WEB_URL =
              T.let(
                :EXTERNAL_WEB_URL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            VIEW =
              T.let(
                :VIEW,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            VIEW_BLOCK =
              T.let(
                :VIEW_BLOCK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            ROSTER =
              T.let(
                :ROSTER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CART =
              T.let(
                :CART,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AUTOMATION_PLATFORM_FLOW_ACTION =
              T.let(
                :AUTOMATION_PLATFORM_FLOW_ACTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SOCIAL_PROFILE =
              T.let(
                :SOCIAL_PROFILE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PARTNER_CLIENT =
              T.let(
                :PARTNER_CLIENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            ROSTER_MEMBER =
              T.let(
                :ROSTER_MEMBER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            MARKETING_EVENT_ATTENDANCE =
              T.let(
                :MARKETING_EVENT_ATTENDANCE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            ALL_PAGES =
              T.let(
                :ALL_PAGES,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AI_FORECAST =
              T.let(
                :AI_FORECAST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CRM_PIPELINES_DUMMY_TYPE =
              T.let(
                :CRM_PIPELINES_DUMMY_TYPE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            KNOWLEDGE_ARTICLE =
              T.let(
                :KNOWLEDGE_ARTICLE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PROPERTY_INFO =
              T.let(
                :PROPERTY_INFO,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            DATA_PRIVACY_CONSENT =
              T.let(
                :DATA_PRIVACY_CONSENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            GOAL_TEMPLATE =
              T.let(
                :GOAL_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SCORE_CONFIGURATION =
              T.let(
                :SCORE_CONFIGURATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AUDIENCE =
              T.let(
                :AUDIENCE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PARTNER_CLIENT_REVENUE =
              T.let(
                :PARTNER_CLIENT_REVENUE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            AUTOMATION_JOURNEY =
              T.let(
                :AUTOMATION_JOURNEY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            COMBO_EVENT_CONFIGURATION =
              T.let(
                :COMBO_EVENT_CONFIGURATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CRM_OBJECTS_DUMMY_TYPE =
              T.let(
                :CRM_OBJECTS_DUMMY_TYPE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            CASE_STUDY =
              T.let(
                :CASE_STUDY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            SERVICE =
              T.let(
                :SERVICE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PODCAST_EPISODE =
              T.let(
                :PODCAST_EPISODE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            PARTNER_SERVICE =
              T.let(
                :PARTNER_SERVICE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::FromObjectType::TaggedSymbol
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
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTACT =
              T.let(
                :CONTACT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            COMPANY =
              T.let(
                :COMPANY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DEAL =
              T.let(
                :DEAL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            ENGAGEMENT =
              T.let(
                :ENGAGEMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            TICKET =
              T.let(
                :TICKET,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            OWNER =
              T.let(
                :OWNER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PRODUCT =
              T.let(
                :PRODUCT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            LINE_ITEM =
              T.let(
                :LINE_ITEM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            BET_DELIVERABLE_SERVICE =
              T.let(
                :BET_DELIVERABLE_SERVICE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CONTENT =
              T.let(
                :CONTENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CONVERSATION =
              T.let(
                :CONVERSATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            BET_ALERT =
              T.let(
                :BET_ALERT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PORTAL =
              T.let(
                :PORTAL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            QUOTE =
              T.let(
                :QUOTE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FORM_SUBMISSION_INBOUNDDB =
              T.let(
                :FORM_SUBMISSION_INBOUNDDB,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            QUOTA =
              T.let(
                :QUOTA,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            UNSUBSCRIBE =
              T.let(
                :UNSUBSCRIBE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            COMMUNICATION =
              T.let(
                :COMMUNICATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FEEDBACK_SUBMISSION =
              T.let(
                :FEEDBACK_SUBMISSION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            ATTRIBUTION =
              T.let(
                :ATTRIBUTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SALESFORCE_SYNC_ERROR =
              T.let(
                :SALESFORCE_SYNC_ERROR,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            RESTORABLE_CRM_OBJECT =
              T.let(
                :RESTORABLE_CRM_OBJECT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            HUB =
              T.let(
                :HUB,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            LANDING_PAGE =
              T.let(
                :LANDING_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PRODUCT_OR_FOLDER =
              T.let(
                :PRODUCT_OR_FOLDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            TASK =
              T.let(
                :TASK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FORM =
              T.let(
                :FORM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MARKETING_EMAIL =
              T.let(
                :MARKETING_EMAIL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AD_ACCOUNT =
              T.let(
                :AD_ACCOUNT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AD_CAMPAIGN =
              T.let(
                :AD_CAMPAIGN,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AD_GROUP =
              T.let(
                :AD_GROUP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AD =
              T.let(
                :AD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            KEYWORD =
              T.let(
                :KEYWORD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CAMPAIGN =
              T.let(
                :CAMPAIGN,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SOCIAL_CHANNEL =
              T.let(
                :SOCIAL_CHANNEL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SOCIAL_POST =
              T.let(
                :SOCIAL_POST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SITE_PAGE =
              T.let(
                :SITE_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            BLOG_POST =
              T.let(
                :BLOG_POST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            IMPORT =
              T.let(
                :IMPORT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            EXPORT =
              T.let(
                :EXPORT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CTA =
              T.let(
                :CTA,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            TASK_TEMPLATE =
              T.let(
                :TASK_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AUTOMATION_PLATFORM_FLOW =
              T.let(
                :AUTOMATION_PLATFORM_FLOW,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            OBJECT_LIST =
              T.let(
                :OBJECT_LIST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            NOTE =
              T.let(
                :NOTE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MEETING_EVENT =
              T.let(
                :MEETING_EVENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CALL =
              T.let(
                :CALL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PUBLISHING_TASK =
              T.let(
                :PUBLISHING_TASK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CONVERSATION_SESSION =
              T.let(
                :CONVERSATION_SESSION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CONTACT_CREATE_ATTRIBUTION =
              T.let(
                :CONTACT_CREATE_ATTRIBUTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :INVOICE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MARKETING_EVENT =
              T.let(
                :MARKETING_EVENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CONVERSATION_INBOX =
              T.let(
                :CONVERSATION_INBOX,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CHATFLOW =
              T.let(
                :CHATFLOW,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MEDIA_BRIDGE =
              T.let(
                :MEDIA_BRIDGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SEQUENCE =
              T.let(
                :SEQUENCE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SEQUENCE_STEP =
              T.let(
                :SEQUENCE_STEP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FORECAST =
              T.let(
                :FORECAST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SNIPPET =
              T.let(
                :SNIPPET,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            TEMPLATE =
              T.let(
                :TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DEAL_CREATE_ATTRIBUTION =
              T.let(
                :DEAL_CREATE_ATTRIBUTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            QUOTE_TEMPLATE =
              T.let(
                :QUOTE_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            QUOTE_MODULE =
              T.let(
                :QUOTE_MODULE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            QUOTE_MODULE_FIELD =
              T.let(
                :QUOTE_MODULE_FIELD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            QUOTE_FIELD =
              T.let(
                :QUOTE_FIELD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SEQUENCE_ENROLLMENT =
              T.let(
                :SEQUENCE_ENROLLMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :SUBSCRIPTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            ACCEPTANCE_TEST =
              T.let(
                :ACCEPTANCE_TEST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SOCIAL_BROADCAST =
              T.let(
                :SOCIAL_BROADCAST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DEAL_SPLIT =
              T.let(
                :DEAL_SPLIT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DEAL_REGISTRATION =
              T.let(
                :DEAL_REGISTRATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            GOAL_TARGET =
              T.let(
                :GOAL_TARGET,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            GOAL_TARGET_GROUP =
              T.let(
                :GOAL_TARGET_GROUP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PORTAL_OBJECT_SYNC_MESSAGE =
              T.let(
                :PORTAL_OBJECT_SYNC_MESSAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FILE_MANAGER_FILE =
              T.let(
                :FILE_MANAGER_FILE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FILE_MANAGER_FOLDER =
              T.let(
                :FILE_MANAGER_FOLDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SEQUENCE_STEP_ENROLLMENT =
              T.let(
                :SEQUENCE_STEP_ENROLLMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            APPROVAL =
              T.let(
                :APPROVAL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            APPROVAL_STEP =
              T.let(
                :APPROVAL_STEP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CTA_VARIANT =
              T.let(
                :CTA_VARIANT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SALES_DOCUMENT =
              T.let(
                :SALES_DOCUMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DISCOUNT =
              T.let(
                :DISCOUNT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FEE =
              T.let(
                :FEE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            TAX =
              T.let(
                :TAX,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MARKETING_CALENDAR =
              T.let(
                :MARKETING_CALENDAR,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PERMISSIONS_TESTING =
              T.let(
                :PERMISSIONS_TESTING,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PRIVACY_SCANNER_COOKIE =
              T.let(
                :PRIVACY_SCANNER_COOKIE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DATA_SYNC_STATE =
              T.let(
                :DATA_SYNC_STATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            WEB_INTERACTIVE =
              T.let(
                :WEB_INTERACTIVE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PLAYBOOK =
              T.let(
                :PLAYBOOK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FOLDER =
              T.let(
                :FOLDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PLAYBOOK_QUESTION =
              T.let(
                :PLAYBOOK_QUESTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PLAYBOOK_SUBMISSION =
              T.let(
                :PLAYBOOK_SUBMISSION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PLAYBOOK_SUBMISSION_ANSWER =
              T.let(
                :PLAYBOOK_SUBMISSION_ANSWER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            COMMERCE_PAYMENT =
              T.let(
                :COMMERCE_PAYMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            GSC_PROPERTY =
              T.let(
                :GSC_PROPERTY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SOX_PROTECTED_DUMMY_TYPE =
              T.let(
                :SOX_PROTECTED_DUMMY_TYPE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            BLOG_LISTING_PAGE =
              T.let(
                :BLOG_LISTING_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            QUARANTINED_SUBMISSION =
              T.let(
                :QUARANTINED_SUBMISSION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PAYMENT_SCHEDULE =
              T.let(
                :PAYMENT_SCHEDULE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PAYMENT_SCHEDULE_INSTALLMENT =
              T.let(
                :PAYMENT_SCHEDULE_INSTALLMENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MARKETING_CAMPAIGN_UTM =
              T.let(
                :MARKETING_CAMPAIGN_UTM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DISCOUNT_TEMPLATE =
              T.let(
                :DISCOUNT_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DISCOUNT_CODE =
              T.let(
                :DISCOUNT_CODE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            FEEDBACK_SURVEY =
              T.let(
                :FEEDBACK_SURVEY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CMS_URL =
              T.let(
                :CMS_URL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SALES_TASK =
              T.let(
                :SALES_TASK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SALES_WORKLOAD =
              T.let(
                :SALES_WORKLOAD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            USER =
              T.let(
                :USER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            POSTAL_MAIL =
              T.let(
                :POSTAL_MAIL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SCHEMAS_BACKEND_TEST =
              T.let(
                :SCHEMAS_BACKEND_TEST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PAYMENT_LINK =
              T.let(
                :PAYMENT_LINK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SUBMISSION_TAG =
              T.let(
                :SUBMISSION_TAG,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CAMPAIGN_STEP =
              T.let(
                :CAMPAIGN_STEP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SCHEDULING_PAGE =
              T.let(
                :SCHEDULING_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SOX_PROTECTED_TEST_TYPE =
              T.let(
                :SOX_PROTECTED_TEST_TYPE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            ORDER =
              T.let(
                :ORDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MARKETING_SMS =
              T.let(
                :MARKETING_SMS,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PARTNER_ACCOUNT =
              T.let(
                :PARTNER_ACCOUNT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CAMPAIGN_TEMPLATE =
              T.let(
                :CAMPAIGN_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CAMPAIGN_TEMPLATE_STEP =
              T.let(
                :CAMPAIGN_TEMPLATE_STEP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PLAYLIST =
              T.let(
                :PLAYLIST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CLIP =
              T.let(
                :CLIP,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CAMPAIGN_BUDGET_ITEM =
              T.let(
                :CAMPAIGN_BUDGET_ITEM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CAMPAIGN_SPEND_ITEM =
              T.let(
                :CAMPAIGN_SPEND_ITEM,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MIC =
              T.let(
                :MIC,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CONTENT_AUDIT =
              T.let(
                :CONTENT_AUDIT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CONTENT_AUDIT_PAGE =
              T.let(
                :CONTENT_AUDIT_PAGE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PLAYLIST_FOLDER =
              T.let(
                :PLAYLIST_FOLDER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            LEAD =
              T.let(
                :LEAD,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            ABANDONED_CART =
              T.let(
                :ABANDONED_CART,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            EXTERNAL_WEB_URL =
              T.let(
                :EXTERNAL_WEB_URL,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            VIEW =
              T.let(
                :VIEW,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            VIEW_BLOCK =
              T.let(
                :VIEW_BLOCK,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            ROSTER =
              T.let(
                :ROSTER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CART =
              T.let(
                :CART,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AUTOMATION_PLATFORM_FLOW_ACTION =
              T.let(
                :AUTOMATION_PLATFORM_FLOW_ACTION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SOCIAL_PROFILE =
              T.let(
                :SOCIAL_PROFILE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PARTNER_CLIENT =
              T.let(
                :PARTNER_CLIENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            ROSTER_MEMBER =
              T.let(
                :ROSTER_MEMBER,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            MARKETING_EVENT_ATTENDANCE =
              T.let(
                :MARKETING_EVENT_ATTENDANCE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            ALL_PAGES =
              T.let(
                :ALL_PAGES,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AI_FORECAST =
              T.let(
                :AI_FORECAST,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CRM_PIPELINES_DUMMY_TYPE =
              T.let(
                :CRM_PIPELINES_DUMMY_TYPE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            KNOWLEDGE_ARTICLE =
              T.let(
                :KNOWLEDGE_ARTICLE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PROPERTY_INFO =
              T.let(
                :PROPERTY_INFO,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            DATA_PRIVACY_CONSENT =
              T.let(
                :DATA_PRIVACY_CONSENT,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            GOAL_TEMPLATE =
              T.let(
                :GOAL_TEMPLATE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SCORE_CONFIGURATION =
              T.let(
                :SCORE_CONFIGURATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AUDIENCE =
              T.let(
                :AUDIENCE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PARTNER_CLIENT_REVENUE =
              T.let(
                :PARTNER_CLIENT_REVENUE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            AUTOMATION_JOURNEY =
              T.let(
                :AUTOMATION_JOURNEY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            COMBO_EVENT_CONFIGURATION =
              T.let(
                :COMBO_EVENT_CONFIGURATION,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CRM_OBJECTS_DUMMY_TYPE =
              T.let(
                :CRM_OBJECTS_DUMMY_TYPE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            CASE_STUDY =
              T.let(
                :CASE_STUDY,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            SERVICE =
              T.let(
                :SERVICE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PODCAST_EPISODE =
              T.let(
                :PODCAST_EPISODE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            PARTNER_SERVICE =
              T.let(
                :PARTNER_SERVICE,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationResponse::ToObjectType::TaggedSymbol
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
