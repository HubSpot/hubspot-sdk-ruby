# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class InboundDBObjectType < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::InboundDBObjectType,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :allows_sensitive_properties

        sig { returns(String) }
        attr_accessor :create_date_property_name

        sig { returns(T::Array[String]) }
        attr_accessor :default_search_property_names

        sig { returns(T::Boolean) }
        attr_accessor :deleted

        sig { returns(String) }
        attr_accessor :fully_qualified_name

        sig { returns(T::Boolean) }
        attr_accessor :has_custom_properties

        sig { returns(T::Boolean) }
        attr_accessor :has_default_properties

        sig { returns(T::Boolean) }
        attr_accessor :has_external_object_ids

        sig { returns(T::Boolean) }
        attr_accessor :has_owners

        sig { returns(T::Boolean) }
        attr_accessor :has_pipelines

        sig { returns(T::Boolean) }
        attr_accessor :indexed_for_filters_and_reports

        sig { returns(String) }
        attr_accessor :last_modified_property_name

        sig do
          returns(HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol)
        end
        attr_accessor :meta_type

        sig { returns(Integer) }
        attr_accessor :meta_type_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :object_type_id_string

        sig do
          returns(
            HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::TaggedSymbol
          )
        end
        attr_accessor :permissioning_type

        sig { returns(String) }
        attr_accessor :pipeline_property_name

        sig { returns(String) }
        attr_accessor :pipeline_stage_property_name

        sig { returns(T::Array[String]) }
        attr_accessor :required_properties

        sig { returns(T::Boolean) }
        attr_accessor :restorable

        sig { returns(T::Array[HubSpotSDK::Cms::ScopeMapping]) }
        attr_accessor :scope_mappings

        sig { returns(T::Array[String]) }
        attr_accessor :secondary_display_label_property_names

        sig { returns(T.nilable(String)) }
        attr_reader :access_scope_name

        sig { params(access_scope_name: String).void }
        attr_writer :access_scope_name

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Integer)) }
        attr_reader :integration_app_id

        sig { params(integration_app_id: Integer).void }
        attr_writer :integration_app_id

        sig { returns(T.nilable(String)) }
        attr_reader :janus_group

        sig { params(janus_group: String).void }
        attr_writer :janus_group

        sig { returns(T.nilable(Integer)) }
        attr_reader :owner_portal_id

        sig { params(owner_portal_id: Integer).void }
        attr_writer :owner_portal_id

        sig { returns(T.nilable(String)) }
        attr_reader :pipeline_close_date_property_name

        sig { params(pipeline_close_date_property_name: String).void }
        attr_writer :pipeline_close_date_property_name

        sig { returns(T.nilable(String)) }
        attr_reader :pipeline_time_to_close_property_name

        sig { params(pipeline_time_to_close_property_name: String).void }
        attr_writer :pipeline_time_to_close_property_name

        sig { returns(T.nilable(String)) }
        attr_reader :plural_form

        sig { params(plural_form: String).void }
        attr_writer :plural_form

        sig { returns(T.nilable(String)) }
        attr_reader :primary_display_label_property_name

        sig { params(primary_display_label_property_name: String).void }
        attr_writer :primary_display_label_property_name

        sig { returns(T.nilable(String)) }
        attr_reader :read_scope_name

        sig { params(read_scope_name: String).void }
        attr_writer :read_scope_name

        sig { returns(T.nilable(String)) }
        attr_reader :singular_form

        sig { params(singular_form: String).void }
        attr_writer :singular_form

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::InboundDBObjectType::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: HubSpotSDK::Cms::InboundDBObjectType::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::InboundDBObjectType::Visibility::TaggedSymbol
            )
          )
        end
        attr_reader :visibility

        sig do
          params(
            visibility:
              HubSpotSDK::Cms::InboundDBObjectType::Visibility::OrSymbol
          ).void
        end
        attr_writer :visibility

        sig { returns(T.nilable(String)) }
        attr_reader :write_scope_name

        sig { params(write_scope_name: String).void }
        attr_writer :write_scope_name

        sig do
          params(
            id: Integer,
            allows_sensitive_properties: T::Boolean,
            create_date_property_name: String,
            default_search_property_names: T::Array[String],
            deleted: T::Boolean,
            fully_qualified_name: String,
            has_custom_properties: T::Boolean,
            has_default_properties: T::Boolean,
            has_external_object_ids: T::Boolean,
            has_owners: T::Boolean,
            has_pipelines: T::Boolean,
            indexed_for_filters_and_reports: T::Boolean,
            last_modified_property_name: String,
            meta_type: HubSpotSDK::Cms::InboundDBObjectType::MetaType::OrSymbol,
            meta_type_id: Integer,
            name: String,
            object_type_id: String,
            object_type_id_string: String,
            permissioning_type:
              HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::OrSymbol,
            pipeline_property_name: String,
            pipeline_stage_property_name: String,
            required_properties: T::Array[String],
            restorable: T::Boolean,
            scope_mappings: T::Array[HubSpotSDK::Cms::ScopeMapping::OrHash],
            secondary_display_label_property_names: T::Array[String],
            access_scope_name: String,
            created_at: Integer,
            description: String,
            integration_app_id: Integer,
            janus_group: String,
            owner_portal_id: Integer,
            pipeline_close_date_property_name: String,
            pipeline_time_to_close_property_name: String,
            plural_form: String,
            primary_display_label_property_name: String,
            read_scope_name: String,
            singular_form: String,
            status: HubSpotSDK::Cms::InboundDBObjectType::Status::OrSymbol,
            visibility:
              HubSpotSDK::Cms::InboundDBObjectType::Visibility::OrSymbol,
            write_scope_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          allows_sensitive_properties:,
          create_date_property_name:,
          default_search_property_names:,
          deleted:,
          fully_qualified_name:,
          has_custom_properties:,
          has_default_properties:,
          has_external_object_ids:,
          has_owners:,
          has_pipelines:,
          indexed_for_filters_and_reports:,
          last_modified_property_name:,
          meta_type:,
          meta_type_id:,
          name:,
          object_type_id:,
          object_type_id_string:,
          permissioning_type:,
          pipeline_property_name:,
          pipeline_stage_property_name:,
          required_properties:,
          restorable:,
          scope_mappings:,
          secondary_display_label_property_names:,
          access_scope_name: nil,
          created_at: nil,
          description: nil,
          integration_app_id: nil,
          janus_group: nil,
          owner_portal_id: nil,
          pipeline_close_date_property_name: nil,
          pipeline_time_to_close_property_name: nil,
          plural_form: nil,
          primary_display_label_property_name: nil,
          read_scope_name: nil,
          singular_form: nil,
          status: nil,
          visibility: nil,
          write_scope_name: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              allows_sensitive_properties: T::Boolean,
              create_date_property_name: String,
              default_search_property_names: T::Array[String],
              deleted: T::Boolean,
              fully_qualified_name: String,
              has_custom_properties: T::Boolean,
              has_default_properties: T::Boolean,
              has_external_object_ids: T::Boolean,
              has_owners: T::Boolean,
              has_pipelines: T::Boolean,
              indexed_for_filters_and_reports: T::Boolean,
              last_modified_property_name: String,
              meta_type:
                HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol,
              meta_type_id: Integer,
              name: String,
              object_type_id: String,
              object_type_id_string: String,
              permissioning_type:
                HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::TaggedSymbol,
              pipeline_property_name: String,
              pipeline_stage_property_name: String,
              required_properties: T::Array[String],
              restorable: T::Boolean,
              scope_mappings: T::Array[HubSpotSDK::Cms::ScopeMapping],
              secondary_display_label_property_names: T::Array[String],
              access_scope_name: String,
              created_at: Integer,
              description: String,
              integration_app_id: Integer,
              janus_group: String,
              owner_portal_id: Integer,
              pipeline_close_date_property_name: String,
              pipeline_time_to_close_property_name: String,
              plural_form: String,
              primary_display_label_property_name: String,
              read_scope_name: String,
              singular_form: String,
              status:
                HubSpotSDK::Cms::InboundDBObjectType::Status::TaggedSymbol,
              visibility:
                HubSpotSDK::Cms::InboundDBObjectType::Visibility::TaggedSymbol,
              write_scope_name: String
            }
          )
        end
        def to_hash
        end

        module MetaType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::InboundDBObjectType::MetaType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CMS_HUBDB =
            T.let(
              :CMS_HUBDB,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )
          HUBSPOT =
            T.let(
              :HUBSPOT,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )
          HUBSPOT_EVENT =
            T.let(
              :HUBSPOT_EVENT,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )
          INTEGRATION =
            T.let(
              :INTEGRATION,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )
          INTEGRATION_EVENT =
            T.let(
              :INTEGRATION_EVENT,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )
          PORTAL_SPECIFIC =
            T.let(
              :PORTAL_SPECIFIC,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )
          PORTAL_SPECIFIC_EVENT =
            T.let(
              :PORTAL_SPECIFIC_EVENT,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )
          WORK_SUB =
            T.let(
              :WORK_SUB,
              HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::InboundDBObjectType::MetaType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PermissioningType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::InboundDBObjectType::PermissioningType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL_OR_NONE =
            T.let(
              :ALL_OR_NONE,
              HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::TaggedSymbol
            )
          DO_NOT_CHECK_PERMISSIONS =
            T.let(
              :DO_NOT_CHECK_PERMISSIONS,
              HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::TaggedSymbol
            )
          EXPLICIT =
            T.let(
              :EXPLICIT,
              HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::TaggedSymbol
            )
          OWNER_BASED =
            T.let(
              :OWNER_BASED,
              HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::TaggedSymbol
            )
          TEAM_BASED =
            T.let(
              :TEAM_BASED,
              HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::InboundDBObjectType::PermissioningType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::InboundDBObjectType::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEPRECATED =
            T.let(
              :Deprecated,
              HubSpotSDK::Cms::InboundDBObjectType::Status::TaggedSymbol
            )
          IN_DEVELOPMENT =
            T.let(
              :"In development",
              HubSpotSDK::Cms::InboundDBObjectType::Status::TaggedSymbol
            )
          LIVE =
            T.let(
              :Live,
              HubSpotSDK::Cms::InboundDBObjectType::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::InboundDBObjectType::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Visibility
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::InboundDBObjectType::Visibility)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER_FACING =
            T.let(
              :"Customer-facing",
              HubSpotSDK::Cms::InboundDBObjectType::Visibility::TaggedSymbol
            )
          CUSTOMER_FACING_PUBLIC_API =
            T.let(
              :"Customer-facing public API",
              HubSpotSDK::Cms::InboundDBObjectType::Visibility::TaggedSymbol
            )
          CUSTOMER_FACING_UI =
            T.let(
              :"Customer-facing UI",
              HubSpotSDK::Cms::InboundDBObjectType::Visibility::TaggedSymbol
            )
          INTERNAL_ONLY =
            T.let(
              :"Internal only",
              HubSpotSDK::Cms::InboundDBObjectType::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::InboundDBObjectType::Visibility::TaggedSymbol
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
