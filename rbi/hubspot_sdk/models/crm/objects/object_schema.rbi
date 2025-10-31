# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class ObjectSchema < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::ObjectSchema,
                HubspotSDK::Internal::AnyHash
              )
            end

          # A unique ID for this schema's object type. Will be defined as
          # {meta-type}-{unique ID}.
          sig { returns(String) }
          attr_accessor :id

          # Associations defined for a given object type.
          sig do
            returns(
              T::Array[HubspotSDK::CRM::Objects::ObjectSchema::Association]
            )
          end
          attr_accessor :associations

          sig { returns(HubspotSDK::ObjectTypeDefinitionLabels) }
          attr_reader :labels

          sig do
            params(labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash).void
          end
          attr_writer :labels

          # A unique name for the schema's object type.
          sig { returns(String) }
          attr_accessor :name

          # Properties defined for this object type.
          sig { returns(T::Array[HubspotSDK::Property]) }
          attr_accessor :properties

          # The names of properties that should be **required** when creating an object of
          # this type.
          sig { returns(T::Array[String]) }
          attr_accessor :required_properties

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # When the object schema was created.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :created_by_user_id

          sig { params(created_by_user_id: Integer).void }
          attr_writer :created_by_user_id

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # An assigned unique ID for the object, including portal ID and object name.
          sig { returns(T.nilable(String)) }
          attr_reader :fully_qualified_name

          sig { params(fully_qualified_name: String).void }
          attr_writer :fully_qualified_name

          sig { returns(T.nilable(String)) }
          attr_reader :object_type_id

          sig { params(object_type_id: String).void }
          attr_writer :object_type_id

          # The name of the primary property for this object. This will be displayed as
          # primary on the HubSpot record page for this object type.
          sig { returns(T.nilable(String)) }
          attr_reader :primary_display_property

          sig { params(primary_display_property: String).void }
          attr_writer :primary_display_property

          # Names of properties that will be indexed for this object type in by HubSpot's
          # product search.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :searchable_properties

          sig { params(searchable_properties: T::Array[String]).void }
          attr_writer :searchable_properties

          # The names of secondary properties for this object. These will be displayed as
          # secondary on the HubSpot record page for this object type.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :secondary_display_properties

          sig { params(secondary_display_properties: T::Array[String]).void }
          attr_writer :secondary_display_properties

          # When the object schema was last updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :updated_by_user_id

          sig { params(updated_by_user_id: Integer).void }
          attr_writer :updated_by_user_id

          # Defines an object schema, including its properties and associations.
          sig do
            params(
              id: String,
              associations:
                T::Array[
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::OrHash
                ],
              labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
              name: String,
              properties: T::Array[HubspotSDK::Property::OrHash],
              required_properties: T::Array[String],
              archived: T::Boolean,
              created_at: Time,
              created_by_user_id: Integer,
              description: String,
              fully_qualified_name: String,
              object_type_id: String,
              primary_display_property: String,
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String],
              updated_at: Time,
              updated_by_user_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique ID for this schema's object type. Will be defined as
            # {meta-type}-{unique ID}.
            id:,
            # Associations defined for a given object type.
            associations:,
            labels:,
            # A unique name for the schema's object type.
            name:,
            # Properties defined for this object type.
            properties:,
            # The names of properties that should be **required** when creating an object of
            # this type.
            required_properties:,
            archived: nil,
            # When the object schema was created.
            created_at: nil,
            created_by_user_id: nil,
            description: nil,
            # An assigned unique ID for the object, including portal ID and object name.
            fully_qualified_name: nil,
            object_type_id: nil,
            # The name of the primary property for this object. This will be displayed as
            # primary on the HubSpot record page for this object type.
            primary_display_property: nil,
            # Names of properties that will be indexed for this object type in by HubSpot's
            # product search.
            searchable_properties: nil,
            # The names of secondary properties for this object. These will be displayed as
            # secondary on the HubSpot record page for this object type.
            secondary_display_properties: nil,
            # When the object schema was last updated.
            updated_at: nil,
            updated_by_user_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                associations:
                  T::Array[HubspotSDK::CRM::Objects::ObjectSchema::Association],
                labels: HubspotSDK::ObjectTypeDefinitionLabels,
                name: String,
                properties: T::Array[HubspotSDK::Property],
                required_properties: T::Array[String],
                archived: T::Boolean,
                created_at: Time,
                created_by_user_id: Integer,
                description: String,
                fully_qualified_name: String,
                object_type_id: String,
                primary_display_property: String,
                searchable_properties: T::Array[String],
                secondary_display_properties: T::Array[String],
                updated_at: Time,
                updated_by_user_id: Integer
              }
            )
          end
          def to_hash
          end

          class Association < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Objects::ObjectSchema::Association,
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
                HubspotSDK::CRM::Objects::ObjectSchema::Association::Cardinality::TaggedSymbol
              )
            end
            attr_accessor :cardinality

            # The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or
            # "INTEGRATOR_DEFINED"
            sig do
              returns(
                HubspotSDK::CRM::Objects::ObjectSchema::Association::Category::TaggedSymbol
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
                HubspotSDK::CRM::Objects::ObjectSchema::Association::InverseCardinality::TaggedSymbol
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
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              )
            end
            attr_reader :from_object_type

            sig do
              params(
                from_object_type:
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::OrSymbol
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
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              )
            end
            attr_reader :to_object_type

            sig do
              params(
                to_object_type:
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::OrSymbol
              ).void
            end
            attr_writer :to_object_type

            # The definition of an association
            sig do
              params(
                id: Integer,
                allows_custom_labels: T::Boolean,
                cardinality:
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::Cardinality::OrSymbol,
                category:
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::Category::OrSymbol,
                from_object_type_id: String,
                has_all_associated_objects: T::Boolean,
                has_cascading_deletes: T::Boolean,
                has_user_enforced_max_from_object_ids: T::Boolean,
                has_user_enforced_max_to_object_ids: T::Boolean,
                hidden: T::Boolean,
                inverse_allows_custom_labels: T::Boolean,
                inverse_cardinality:
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::InverseCardinality::OrSymbol,
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
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::OrSymbol,
                inverse_label: String,
                label: String,
                to_object_type:
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::OrSymbol
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
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::Cardinality::TaggedSymbol,
                  category:
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::Category::TaggedSymbol,
                  from_object_type_id: String,
                  has_all_associated_objects: T::Boolean,
                  has_cascading_deletes: T::Boolean,
                  has_user_enforced_max_from_object_ids: T::Boolean,
                  has_user_enforced_max_to_object_ids: T::Boolean,
                  hidden: T::Boolean,
                  inverse_allows_custom_labels: T::Boolean,
                  inverse_cardinality:
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::InverseCardinality::TaggedSymbol,
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
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol,
                  inverse_label: String,
                  label: String,
                  to_object_type:
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
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
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE_TO_ONE =
                T.let(
                  :ONE_TO_ONE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::Cardinality::TaggedSymbol
                )
              ONE_TO_MANY =
                T.let(
                  :ONE_TO_MANY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::Cardinality::TaggedSymbol
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
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::Category
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HUBSPOT_DEFINED =
                T.let(
                  :HUBSPOT_DEFINED,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::Category::TaggedSymbol
                )
              USER_DEFINED =
                T.let(
                  :USER_DEFINED,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::Category::TaggedSymbol
                )
              INTEGRATOR_DEFINED =
                T.let(
                  :INTEGRATOR_DEFINED,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::Category::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::Category::TaggedSymbol
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
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::InverseCardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE_TO_ONE =
                T.let(
                  :ONE_TO_ONE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::InverseCardinality::TaggedSymbol
                )
              ONE_TO_MANY =
                T.let(
                  :ONE_TO_MANY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::InverseCardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::InverseCardinality::TaggedSymbol
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
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONTACT =
                T.let(
                  :CONTACT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              COMPANY =
                T.let(
                  :COMPANY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DEAL =
                T.let(
                  :DEAL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              ENGAGEMENT =
                T.let(
                  :ENGAGEMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              TICKET =
                T.let(
                  :TICKET,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              OWNER =
                T.let(
                  :OWNER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PRODUCT =
                T.let(
                  :PRODUCT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              LINE_ITEM =
                T.let(
                  :LINE_ITEM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              BET_DELIVERABLE_SERVICE =
                T.let(
                  :BET_DELIVERABLE_SERVICE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CONTENT =
                T.let(
                  :CONTENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CONVERSATION =
                T.let(
                  :CONVERSATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              BET_ALERT =
                T.let(
                  :BET_ALERT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PORTAL =
                T.let(
                  :PORTAL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              QUOTE =
                T.let(
                  :QUOTE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FORM_SUBMISSION_INBOUNDDB =
                T.let(
                  :FORM_SUBMISSION_INBOUNDDB,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              QUOTA =
                T.let(
                  :QUOTA,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              UNSUBSCRIBE =
                T.let(
                  :UNSUBSCRIBE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              COMMUNICATION =
                T.let(
                  :COMMUNICATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FEEDBACK_SUBMISSION =
                T.let(
                  :FEEDBACK_SUBMISSION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              ATTRIBUTION =
                T.let(
                  :ATTRIBUTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SALESFORCE_SYNC_ERROR =
                T.let(
                  :SALESFORCE_SYNC_ERROR,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              RESTORABLE_CRM_OBJECT =
                T.let(
                  :RESTORABLE_CRM_OBJECT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              HUB =
                T.let(
                  :HUB,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              LANDING_PAGE =
                T.let(
                  :LANDING_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PRODUCT_OR_FOLDER =
                T.let(
                  :PRODUCT_OR_FOLDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              TASK =
                T.let(
                  :TASK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FORM =
                T.let(
                  :FORM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MARKETING_EMAIL =
                T.let(
                  :MARKETING_EMAIL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AD_ACCOUNT =
                T.let(
                  :AD_ACCOUNT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AD_CAMPAIGN =
                T.let(
                  :AD_CAMPAIGN,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AD_GROUP =
                T.let(
                  :AD_GROUP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AD =
                T.let(
                  :AD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              KEYWORD =
                T.let(
                  :KEYWORD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CAMPAIGN =
                T.let(
                  :CAMPAIGN,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SOCIAL_CHANNEL =
                T.let(
                  :SOCIAL_CHANNEL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SOCIAL_POST =
                T.let(
                  :SOCIAL_POST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SITE_PAGE =
                T.let(
                  :SITE_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              BLOG_POST =
                T.let(
                  :BLOG_POST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              IMPORT =
                T.let(
                  :IMPORT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              EXPORT =
                T.let(
                  :EXPORT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CTA =
                T.let(
                  :CTA,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              TASK_TEMPLATE =
                T.let(
                  :TASK_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AUTOMATION_PLATFORM_FLOW =
                T.let(
                  :AUTOMATION_PLATFORM_FLOW,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              OBJECT_LIST =
                T.let(
                  :OBJECT_LIST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              NOTE =
                T.let(
                  :NOTE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MEETING_EVENT =
                T.let(
                  :MEETING_EVENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CALL =
                T.let(
                  :CALL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              EMAIL =
                T.let(
                  :EMAIL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PUBLISHING_TASK =
                T.let(
                  :PUBLISHING_TASK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CONVERSATION_SESSION =
                T.let(
                  :CONVERSATION_SESSION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CONTACT_CREATE_ATTRIBUTION =
                T.let(
                  :CONTACT_CREATE_ATTRIBUTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              INVOICE =
                T.let(
                  :INVOICE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MARKETING_EVENT =
                T.let(
                  :MARKETING_EVENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CONVERSATION_INBOX =
                T.let(
                  :CONVERSATION_INBOX,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CHATFLOW =
                T.let(
                  :CHATFLOW,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MEDIA_BRIDGE =
                T.let(
                  :MEDIA_BRIDGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SEQUENCE =
                T.let(
                  :SEQUENCE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SEQUENCE_STEP =
                T.let(
                  :SEQUENCE_STEP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FORECAST =
                T.let(
                  :FORECAST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SNIPPET =
                T.let(
                  :SNIPPET,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              TEMPLATE =
                T.let(
                  :TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DEAL_CREATE_ATTRIBUTION =
                T.let(
                  :DEAL_CREATE_ATTRIBUTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              QUOTE_TEMPLATE =
                T.let(
                  :QUOTE_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              QUOTE_MODULE =
                T.let(
                  :QUOTE_MODULE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              QUOTE_MODULE_FIELD =
                T.let(
                  :QUOTE_MODULE_FIELD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              QUOTE_FIELD =
                T.let(
                  :QUOTE_FIELD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SEQUENCE_ENROLLMENT =
                T.let(
                  :SEQUENCE_ENROLLMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SUBSCRIPTION =
                T.let(
                  :SUBSCRIPTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              ACCEPTANCE_TEST =
                T.let(
                  :ACCEPTANCE_TEST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SOCIAL_BROADCAST =
                T.let(
                  :SOCIAL_BROADCAST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DEAL_SPLIT =
                T.let(
                  :DEAL_SPLIT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DEAL_REGISTRATION =
                T.let(
                  :DEAL_REGISTRATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              GOAL_TARGET =
                T.let(
                  :GOAL_TARGET,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              GOAL_TARGET_GROUP =
                T.let(
                  :GOAL_TARGET_GROUP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PORTAL_OBJECT_SYNC_MESSAGE =
                T.let(
                  :PORTAL_OBJECT_SYNC_MESSAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FILE_MANAGER_FILE =
                T.let(
                  :FILE_MANAGER_FILE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FILE_MANAGER_FOLDER =
                T.let(
                  :FILE_MANAGER_FOLDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SEQUENCE_STEP_ENROLLMENT =
                T.let(
                  :SEQUENCE_STEP_ENROLLMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              APPROVAL =
                T.let(
                  :APPROVAL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              APPROVAL_STEP =
                T.let(
                  :APPROVAL_STEP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CTA_VARIANT =
                T.let(
                  :CTA_VARIANT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SALES_DOCUMENT =
                T.let(
                  :SALES_DOCUMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DISCOUNT =
                T.let(
                  :DISCOUNT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FEE =
                T.let(
                  :FEE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              TAX =
                T.let(
                  :TAX,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MARKETING_CALENDAR =
                T.let(
                  :MARKETING_CALENDAR,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PERMISSIONS_TESTING =
                T.let(
                  :PERMISSIONS_TESTING,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PRIVACY_SCANNER_COOKIE =
                T.let(
                  :PRIVACY_SCANNER_COOKIE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DATA_SYNC_STATE =
                T.let(
                  :DATA_SYNC_STATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              WEB_INTERACTIVE =
                T.let(
                  :WEB_INTERACTIVE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PLAYBOOK =
                T.let(
                  :PLAYBOOK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FOLDER =
                T.let(
                  :FOLDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PLAYBOOK_QUESTION =
                T.let(
                  :PLAYBOOK_QUESTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PLAYBOOK_SUBMISSION =
                T.let(
                  :PLAYBOOK_SUBMISSION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PLAYBOOK_SUBMISSION_ANSWER =
                T.let(
                  :PLAYBOOK_SUBMISSION_ANSWER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              COMMERCE_PAYMENT =
                T.let(
                  :COMMERCE_PAYMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              GSC_PROPERTY =
                T.let(
                  :GSC_PROPERTY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SOX_PROTECTED_DUMMY_TYPE =
                T.let(
                  :SOX_PROTECTED_DUMMY_TYPE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              BLOG_LISTING_PAGE =
                T.let(
                  :BLOG_LISTING_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              QUARANTINED_SUBMISSION =
                T.let(
                  :QUARANTINED_SUBMISSION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PAYMENT_SCHEDULE =
                T.let(
                  :PAYMENT_SCHEDULE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PAYMENT_SCHEDULE_INSTALLMENT =
                T.let(
                  :PAYMENT_SCHEDULE_INSTALLMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MARKETING_CAMPAIGN_UTM =
                T.let(
                  :MARKETING_CAMPAIGN_UTM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DISCOUNT_TEMPLATE =
                T.let(
                  :DISCOUNT_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DISCOUNT_CODE =
                T.let(
                  :DISCOUNT_CODE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              FEEDBACK_SURVEY =
                T.let(
                  :FEEDBACK_SURVEY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CMS_URL =
                T.let(
                  :CMS_URL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SALES_TASK =
                T.let(
                  :SALES_TASK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SALES_WORKLOAD =
                T.let(
                  :SALES_WORKLOAD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              USER =
                T.let(
                  :USER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              POSTAL_MAIL =
                T.let(
                  :POSTAL_MAIL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SCHEMAS_BACKEND_TEST =
                T.let(
                  :SCHEMAS_BACKEND_TEST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PAYMENT_LINK =
                T.let(
                  :PAYMENT_LINK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SUBMISSION_TAG =
                T.let(
                  :SUBMISSION_TAG,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CAMPAIGN_STEP =
                T.let(
                  :CAMPAIGN_STEP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SCHEDULING_PAGE =
                T.let(
                  :SCHEDULING_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SOX_PROTECTED_TEST_TYPE =
                T.let(
                  :SOX_PROTECTED_TEST_TYPE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              ORDER =
                T.let(
                  :ORDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MARKETING_SMS =
                T.let(
                  :MARKETING_SMS,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PARTNER_ACCOUNT =
                T.let(
                  :PARTNER_ACCOUNT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CAMPAIGN_TEMPLATE =
                T.let(
                  :CAMPAIGN_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CAMPAIGN_TEMPLATE_STEP =
                T.let(
                  :CAMPAIGN_TEMPLATE_STEP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PLAYLIST =
                T.let(
                  :PLAYLIST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CLIP =
                T.let(
                  :CLIP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CAMPAIGN_BUDGET_ITEM =
                T.let(
                  :CAMPAIGN_BUDGET_ITEM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CAMPAIGN_SPEND_ITEM =
                T.let(
                  :CAMPAIGN_SPEND_ITEM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MIC =
                T.let(
                  :MIC,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CONTENT_AUDIT =
                T.let(
                  :CONTENT_AUDIT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CONTENT_AUDIT_PAGE =
                T.let(
                  :CONTENT_AUDIT_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PLAYLIST_FOLDER =
                T.let(
                  :PLAYLIST_FOLDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              LEAD =
                T.let(
                  :LEAD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              ABANDONED_CART =
                T.let(
                  :ABANDONED_CART,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              EXTERNAL_WEB_URL =
                T.let(
                  :EXTERNAL_WEB_URL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              VIEW =
                T.let(
                  :VIEW,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              VIEW_BLOCK =
                T.let(
                  :VIEW_BLOCK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              ROSTER =
                T.let(
                  :ROSTER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CART =
                T.let(
                  :CART,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AUTOMATION_PLATFORM_FLOW_ACTION =
                T.let(
                  :AUTOMATION_PLATFORM_FLOW_ACTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SOCIAL_PROFILE =
                T.let(
                  :SOCIAL_PROFILE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PARTNER_CLIENT =
                T.let(
                  :PARTNER_CLIENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              ROSTER_MEMBER =
                T.let(
                  :ROSTER_MEMBER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              MARKETING_EVENT_ATTENDANCE =
                T.let(
                  :MARKETING_EVENT_ATTENDANCE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              ALL_PAGES =
                T.let(
                  :ALL_PAGES,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AI_FORECAST =
                T.let(
                  :AI_FORECAST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CRM_PIPELINES_DUMMY_TYPE =
                T.let(
                  :CRM_PIPELINES_DUMMY_TYPE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              KNOWLEDGE_ARTICLE =
                T.let(
                  :KNOWLEDGE_ARTICLE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PROPERTY_INFO =
                T.let(
                  :PROPERTY_INFO,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              DATA_PRIVACY_CONSENT =
                T.let(
                  :DATA_PRIVACY_CONSENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              GOAL_TEMPLATE =
                T.let(
                  :GOAL_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SCORE_CONFIGURATION =
                T.let(
                  :SCORE_CONFIGURATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AUDIENCE =
                T.let(
                  :AUDIENCE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PARTNER_CLIENT_REVENUE =
                T.let(
                  :PARTNER_CLIENT_REVENUE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              AUTOMATION_JOURNEY =
                T.let(
                  :AUTOMATION_JOURNEY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              COMBO_EVENT_CONFIGURATION =
                T.let(
                  :COMBO_EVENT_CONFIGURATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CRM_OBJECTS_DUMMY_TYPE =
                T.let(
                  :CRM_OBJECTS_DUMMY_TYPE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              CASE_STUDY =
                T.let(
                  :CASE_STUDY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              SERVICE =
                T.let(
                  :SERVICE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PODCAST_EPISODE =
                T.let(
                  :PODCAST_EPISODE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              PARTNER_SERVICE =
                T.let(
                  :PARTNER_SERVICE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )
              UNKNOWN =
                T.let(
                  :UNKNOWN,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType::TaggedSymbol
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
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONTACT =
                T.let(
                  :CONTACT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              COMPANY =
                T.let(
                  :COMPANY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DEAL =
                T.let(
                  :DEAL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              ENGAGEMENT =
                T.let(
                  :ENGAGEMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              TICKET =
                T.let(
                  :TICKET,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              OWNER =
                T.let(
                  :OWNER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PRODUCT =
                T.let(
                  :PRODUCT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              LINE_ITEM =
                T.let(
                  :LINE_ITEM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              BET_DELIVERABLE_SERVICE =
                T.let(
                  :BET_DELIVERABLE_SERVICE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CONTENT =
                T.let(
                  :CONTENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CONVERSATION =
                T.let(
                  :CONVERSATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              BET_ALERT =
                T.let(
                  :BET_ALERT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PORTAL =
                T.let(
                  :PORTAL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              QUOTE =
                T.let(
                  :QUOTE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FORM_SUBMISSION_INBOUNDDB =
                T.let(
                  :FORM_SUBMISSION_INBOUNDDB,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              QUOTA =
                T.let(
                  :QUOTA,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              UNSUBSCRIBE =
                T.let(
                  :UNSUBSCRIBE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              COMMUNICATION =
                T.let(
                  :COMMUNICATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FEEDBACK_SUBMISSION =
                T.let(
                  :FEEDBACK_SUBMISSION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              ATTRIBUTION =
                T.let(
                  :ATTRIBUTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SALESFORCE_SYNC_ERROR =
                T.let(
                  :SALESFORCE_SYNC_ERROR,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              RESTORABLE_CRM_OBJECT =
                T.let(
                  :RESTORABLE_CRM_OBJECT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              HUB =
                T.let(
                  :HUB,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              LANDING_PAGE =
                T.let(
                  :LANDING_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PRODUCT_OR_FOLDER =
                T.let(
                  :PRODUCT_OR_FOLDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              TASK =
                T.let(
                  :TASK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FORM =
                T.let(
                  :FORM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MARKETING_EMAIL =
                T.let(
                  :MARKETING_EMAIL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AD_ACCOUNT =
                T.let(
                  :AD_ACCOUNT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AD_CAMPAIGN =
                T.let(
                  :AD_CAMPAIGN,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AD_GROUP =
                T.let(
                  :AD_GROUP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AD =
                T.let(
                  :AD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              KEYWORD =
                T.let(
                  :KEYWORD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CAMPAIGN =
                T.let(
                  :CAMPAIGN,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SOCIAL_CHANNEL =
                T.let(
                  :SOCIAL_CHANNEL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SOCIAL_POST =
                T.let(
                  :SOCIAL_POST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SITE_PAGE =
                T.let(
                  :SITE_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              BLOG_POST =
                T.let(
                  :BLOG_POST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              IMPORT =
                T.let(
                  :IMPORT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              EXPORT =
                T.let(
                  :EXPORT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CTA =
                T.let(
                  :CTA,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              TASK_TEMPLATE =
                T.let(
                  :TASK_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AUTOMATION_PLATFORM_FLOW =
                T.let(
                  :AUTOMATION_PLATFORM_FLOW,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              OBJECT_LIST =
                T.let(
                  :OBJECT_LIST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              NOTE =
                T.let(
                  :NOTE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MEETING_EVENT =
                T.let(
                  :MEETING_EVENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CALL =
                T.let(
                  :CALL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              EMAIL =
                T.let(
                  :EMAIL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PUBLISHING_TASK =
                T.let(
                  :PUBLISHING_TASK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CONVERSATION_SESSION =
                T.let(
                  :CONVERSATION_SESSION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CONTACT_CREATE_ATTRIBUTION =
                T.let(
                  :CONTACT_CREATE_ATTRIBUTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              INVOICE =
                T.let(
                  :INVOICE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MARKETING_EVENT =
                T.let(
                  :MARKETING_EVENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CONVERSATION_INBOX =
                T.let(
                  :CONVERSATION_INBOX,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CHATFLOW =
                T.let(
                  :CHATFLOW,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MEDIA_BRIDGE =
                T.let(
                  :MEDIA_BRIDGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SEQUENCE =
                T.let(
                  :SEQUENCE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SEQUENCE_STEP =
                T.let(
                  :SEQUENCE_STEP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FORECAST =
                T.let(
                  :FORECAST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SNIPPET =
                T.let(
                  :SNIPPET,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              TEMPLATE =
                T.let(
                  :TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DEAL_CREATE_ATTRIBUTION =
                T.let(
                  :DEAL_CREATE_ATTRIBUTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              QUOTE_TEMPLATE =
                T.let(
                  :QUOTE_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              QUOTE_MODULE =
                T.let(
                  :QUOTE_MODULE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              QUOTE_MODULE_FIELD =
                T.let(
                  :QUOTE_MODULE_FIELD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              QUOTE_FIELD =
                T.let(
                  :QUOTE_FIELD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SEQUENCE_ENROLLMENT =
                T.let(
                  :SEQUENCE_ENROLLMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SUBSCRIPTION =
                T.let(
                  :SUBSCRIPTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              ACCEPTANCE_TEST =
                T.let(
                  :ACCEPTANCE_TEST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SOCIAL_BROADCAST =
                T.let(
                  :SOCIAL_BROADCAST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DEAL_SPLIT =
                T.let(
                  :DEAL_SPLIT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DEAL_REGISTRATION =
                T.let(
                  :DEAL_REGISTRATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              GOAL_TARGET =
                T.let(
                  :GOAL_TARGET,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              GOAL_TARGET_GROUP =
                T.let(
                  :GOAL_TARGET_GROUP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PORTAL_OBJECT_SYNC_MESSAGE =
                T.let(
                  :PORTAL_OBJECT_SYNC_MESSAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FILE_MANAGER_FILE =
                T.let(
                  :FILE_MANAGER_FILE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FILE_MANAGER_FOLDER =
                T.let(
                  :FILE_MANAGER_FOLDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SEQUENCE_STEP_ENROLLMENT =
                T.let(
                  :SEQUENCE_STEP_ENROLLMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              APPROVAL =
                T.let(
                  :APPROVAL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              APPROVAL_STEP =
                T.let(
                  :APPROVAL_STEP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CTA_VARIANT =
                T.let(
                  :CTA_VARIANT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SALES_DOCUMENT =
                T.let(
                  :SALES_DOCUMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DISCOUNT =
                T.let(
                  :DISCOUNT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FEE =
                T.let(
                  :FEE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              TAX =
                T.let(
                  :TAX,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MARKETING_CALENDAR =
                T.let(
                  :MARKETING_CALENDAR,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PERMISSIONS_TESTING =
                T.let(
                  :PERMISSIONS_TESTING,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PRIVACY_SCANNER_COOKIE =
                T.let(
                  :PRIVACY_SCANNER_COOKIE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DATA_SYNC_STATE =
                T.let(
                  :DATA_SYNC_STATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              WEB_INTERACTIVE =
                T.let(
                  :WEB_INTERACTIVE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PLAYBOOK =
                T.let(
                  :PLAYBOOK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FOLDER =
                T.let(
                  :FOLDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PLAYBOOK_QUESTION =
                T.let(
                  :PLAYBOOK_QUESTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PLAYBOOK_SUBMISSION =
                T.let(
                  :PLAYBOOK_SUBMISSION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PLAYBOOK_SUBMISSION_ANSWER =
                T.let(
                  :PLAYBOOK_SUBMISSION_ANSWER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              COMMERCE_PAYMENT =
                T.let(
                  :COMMERCE_PAYMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              GSC_PROPERTY =
                T.let(
                  :GSC_PROPERTY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SOX_PROTECTED_DUMMY_TYPE =
                T.let(
                  :SOX_PROTECTED_DUMMY_TYPE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              BLOG_LISTING_PAGE =
                T.let(
                  :BLOG_LISTING_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              QUARANTINED_SUBMISSION =
                T.let(
                  :QUARANTINED_SUBMISSION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PAYMENT_SCHEDULE =
                T.let(
                  :PAYMENT_SCHEDULE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PAYMENT_SCHEDULE_INSTALLMENT =
                T.let(
                  :PAYMENT_SCHEDULE_INSTALLMENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MARKETING_CAMPAIGN_UTM =
                T.let(
                  :MARKETING_CAMPAIGN_UTM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DISCOUNT_TEMPLATE =
                T.let(
                  :DISCOUNT_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DISCOUNT_CODE =
                T.let(
                  :DISCOUNT_CODE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              FEEDBACK_SURVEY =
                T.let(
                  :FEEDBACK_SURVEY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CMS_URL =
                T.let(
                  :CMS_URL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SALES_TASK =
                T.let(
                  :SALES_TASK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SALES_WORKLOAD =
                T.let(
                  :SALES_WORKLOAD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              USER =
                T.let(
                  :USER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              POSTAL_MAIL =
                T.let(
                  :POSTAL_MAIL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SCHEMAS_BACKEND_TEST =
                T.let(
                  :SCHEMAS_BACKEND_TEST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PAYMENT_LINK =
                T.let(
                  :PAYMENT_LINK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SUBMISSION_TAG =
                T.let(
                  :SUBMISSION_TAG,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CAMPAIGN_STEP =
                T.let(
                  :CAMPAIGN_STEP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SCHEDULING_PAGE =
                T.let(
                  :SCHEDULING_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SOX_PROTECTED_TEST_TYPE =
                T.let(
                  :SOX_PROTECTED_TEST_TYPE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              ORDER =
                T.let(
                  :ORDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MARKETING_SMS =
                T.let(
                  :MARKETING_SMS,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PARTNER_ACCOUNT =
                T.let(
                  :PARTNER_ACCOUNT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CAMPAIGN_TEMPLATE =
                T.let(
                  :CAMPAIGN_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CAMPAIGN_TEMPLATE_STEP =
                T.let(
                  :CAMPAIGN_TEMPLATE_STEP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PLAYLIST =
                T.let(
                  :PLAYLIST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CLIP =
                T.let(
                  :CLIP,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CAMPAIGN_BUDGET_ITEM =
                T.let(
                  :CAMPAIGN_BUDGET_ITEM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CAMPAIGN_SPEND_ITEM =
                T.let(
                  :CAMPAIGN_SPEND_ITEM,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MIC =
                T.let(
                  :MIC,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CONTENT_AUDIT =
                T.let(
                  :CONTENT_AUDIT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CONTENT_AUDIT_PAGE =
                T.let(
                  :CONTENT_AUDIT_PAGE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PLAYLIST_FOLDER =
                T.let(
                  :PLAYLIST_FOLDER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              LEAD =
                T.let(
                  :LEAD,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              ABANDONED_CART =
                T.let(
                  :ABANDONED_CART,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              EXTERNAL_WEB_URL =
                T.let(
                  :EXTERNAL_WEB_URL,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              VIEW =
                T.let(
                  :VIEW,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              VIEW_BLOCK =
                T.let(
                  :VIEW_BLOCK,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              ROSTER =
                T.let(
                  :ROSTER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CART =
                T.let(
                  :CART,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AUTOMATION_PLATFORM_FLOW_ACTION =
                T.let(
                  :AUTOMATION_PLATFORM_FLOW_ACTION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SOCIAL_PROFILE =
                T.let(
                  :SOCIAL_PROFILE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PARTNER_CLIENT =
                T.let(
                  :PARTNER_CLIENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              ROSTER_MEMBER =
                T.let(
                  :ROSTER_MEMBER,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              MARKETING_EVENT_ATTENDANCE =
                T.let(
                  :MARKETING_EVENT_ATTENDANCE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              ALL_PAGES =
                T.let(
                  :ALL_PAGES,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AI_FORECAST =
                T.let(
                  :AI_FORECAST,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CRM_PIPELINES_DUMMY_TYPE =
                T.let(
                  :CRM_PIPELINES_DUMMY_TYPE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              KNOWLEDGE_ARTICLE =
                T.let(
                  :KNOWLEDGE_ARTICLE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PROPERTY_INFO =
                T.let(
                  :PROPERTY_INFO,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              DATA_PRIVACY_CONSENT =
                T.let(
                  :DATA_PRIVACY_CONSENT,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              GOAL_TEMPLATE =
                T.let(
                  :GOAL_TEMPLATE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SCORE_CONFIGURATION =
                T.let(
                  :SCORE_CONFIGURATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AUDIENCE =
                T.let(
                  :AUDIENCE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PARTNER_CLIENT_REVENUE =
                T.let(
                  :PARTNER_CLIENT_REVENUE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              AUTOMATION_JOURNEY =
                T.let(
                  :AUTOMATION_JOURNEY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              COMBO_EVENT_CONFIGURATION =
                T.let(
                  :COMBO_EVENT_CONFIGURATION,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CRM_OBJECTS_DUMMY_TYPE =
                T.let(
                  :CRM_OBJECTS_DUMMY_TYPE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              CASE_STUDY =
                T.let(
                  :CASE_STUDY,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              SERVICE =
                T.let(
                  :SERVICE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PODCAST_EPISODE =
                T.let(
                  :PODCAST_EPISODE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              PARTNER_SERVICE =
                T.let(
                  :PARTNER_SERVICE,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )
              UNKNOWN =
                T.let(
                  :UNKNOWN,
                  HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType::TaggedSymbol
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
end
