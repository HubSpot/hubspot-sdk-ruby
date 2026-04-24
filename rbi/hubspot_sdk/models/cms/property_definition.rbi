# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class PropertyDefinition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::PropertyDefinition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        # A HubSpot property
        sig { returns(HubSpotSDK::Cms::MediaBridgeProperty) }
        attr_reader :property

        sig do
          params(property: HubSpotSDK::Cms::MediaBridgeProperty::OrHash).void
        end
        attr_writer :property

        sig { returns(T.nilable(T.anything)) }
        attr_reader :calculation_expression

        sig { params(calculation_expression: T.anything).void }
        attr_writer :calculation_expression

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig { returns(T.nilable(HubSpotSDK::Cms::PropertyDefinitionSource)) }
        attr_reader :definition_source

        sig do
          params(
            definition_source: HubSpotSDK::Cms::PropertyDefinitionSource::OrHash
          ).void
        end
        attr_writer :definition_source

        sig { returns(T.nilable(HubSpotSDK::Cms::ExtensionData)) }
        attr_reader :extension_data

        sig do
          params(extension_data: HubSpotSDK::Cms::ExtensionData::OrHash).void
        end
        attr_writer :extension_data

        sig { returns(T.nilable(HubSpotSDK::Cms::ExternalOptionsMetaData)) }
        attr_reader :external_options_meta_data

        sig do
          params(
            external_options_meta_data:
              HubSpotSDK::Cms::ExternalOptionsMetaData::OrHash
          ).void
        end
        attr_writer :external_options_meta_data

        sig { returns(T.nilable(Integer)) }
        attr_reader :fulcrum_portal_id

        sig { params(fulcrum_portal_id: Integer).void }
        attr_writer :fulcrum_portal_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :fulcrum_timestamp

        sig { params(fulcrum_timestamp: Integer).void }
        attr_writer :fulcrum_timestamp

        sig { returns(T.nilable(String)) }
        attr_reader :janus_group

        sig { params(janus_group: String).void }
        attr_writer :janus_group

        sig { returns(T.nilable(HubSpotSDK::Cms::LookupAssociationSpec)) }
        attr_reader :lookup_association_spec

        sig do
          params(
            lookup_association_spec:
              HubSpotSDK::Cms::LookupAssociationSpec::OrHash
          ).void
        end
        attr_writer :lookup_association_spec

        sig { returns(T.nilable(HubSpotSDK::Cms::FieldLevelPermission)) }
        attr_reader :permission

        sig do
          params(permission: HubSpotSDK::Cms::FieldLevelPermission::OrHash).void
        end
        attr_writer :permission

        sig { returns(T.nilable(HubSpotSDK::Cms::DefinitionSource)) }
        attr_reader :property_definition_source

        sig do
          params(
            property_definition_source:
              HubSpotSDK::Cms::DefinitionSource::OrHash
          ).void
        end
        attr_writer :property_definition_source

        sig { returns(T.nilable(HubSpotSDK::Cms::DefaultRequirements)) }
        attr_reader :property_requirements

        sig do
          params(
            property_requirements: HubSpotSDK::Cms::DefaultRequirements::OrHash
          ).void
        end
        attr_writer :property_requirements

        sig { returns(T.nilable(HubSpotSDK::Cms::RollupExpression)) }
        attr_reader :rollup_expression

        sig do
          params(
            rollup_expression: HubSpotSDK::Cms::RollupExpression::OrHash
          ).void
        end
        attr_writer :rollup_expression

        sig do
          params(
            object_type_id: String,
            property: HubSpotSDK::Cms::MediaBridgeProperty::OrHash,
            calculation_expression: T.anything,
            calculation_formula: String,
            definition_source:
              HubSpotSDK::Cms::PropertyDefinitionSource::OrHash,
            extension_data: HubSpotSDK::Cms::ExtensionData::OrHash,
            external_options_meta_data:
              HubSpotSDK::Cms::ExternalOptionsMetaData::OrHash,
            fulcrum_portal_id: Integer,
            fulcrum_timestamp: Integer,
            janus_group: String,
            lookup_association_spec:
              HubSpotSDK::Cms::LookupAssociationSpec::OrHash,
            permission: HubSpotSDK::Cms::FieldLevelPermission::OrHash,
            property_definition_source:
              HubSpotSDK::Cms::DefinitionSource::OrHash,
            property_requirements: HubSpotSDK::Cms::DefaultRequirements::OrHash,
            rollup_expression: HubSpotSDK::Cms::RollupExpression::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type_id:,
          # A HubSpot property
          property:,
          calculation_expression: nil,
          calculation_formula: nil,
          definition_source: nil,
          extension_data: nil,
          external_options_meta_data: nil,
          fulcrum_portal_id: nil,
          fulcrum_timestamp: nil,
          janus_group: nil,
          lookup_association_spec: nil,
          permission: nil,
          property_definition_source: nil,
          property_requirements: nil,
          rollup_expression: nil
        )
        end

        sig do
          override.returns(
            {
              object_type_id: String,
              property: HubSpotSDK::Cms::MediaBridgeProperty,
              calculation_expression: T.anything,
              calculation_formula: String,
              definition_source: HubSpotSDK::Cms::PropertyDefinitionSource,
              extension_data: HubSpotSDK::Cms::ExtensionData,
              external_options_meta_data:
                HubSpotSDK::Cms::ExternalOptionsMetaData,
              fulcrum_portal_id: Integer,
              fulcrum_timestamp: Integer,
              janus_group: String,
              lookup_association_spec: HubSpotSDK::Cms::LookupAssociationSpec,
              permission: HubSpotSDK::Cms::FieldLevelPermission,
              property_definition_source: HubSpotSDK::Cms::DefinitionSource,
              property_requirements: HubSpotSDK::Cms::DefaultRequirements,
              rollup_expression: HubSpotSDK::Cms::RollupExpression
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
