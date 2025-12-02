# typed: strong

module HubspotSDK
  module Models
    module Cms
      class PropertyDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::PropertyDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        # Defines a property
        sig { returns(HubspotSDK::Property) }
        attr_reader :property

        sig { params(property: HubspotSDK::Property::OrHash).void }
        attr_writer :property

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :calculation_expression

        sig { params(calculation_expression: T::Hash[Symbol, T.anything]).void }
        attr_writer :calculation_expression

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig { returns(T.nilable(HubspotSDK::Cms::PropertyDefinitionSource)) }
        attr_reader :definition_source

        sig do
          params(
            definition_source: HubspotSDK::Cms::PropertyDefinitionSource::OrHash
          ).void
        end
        attr_writer :definition_source

        sig { returns(T.nilable(HubspotSDK::Cms::ExtensionData)) }
        attr_reader :extension_data

        sig do
          params(extension_data: HubspotSDK::Cms::ExtensionData::OrHash).void
        end
        attr_writer :extension_data

        sig { returns(T.nilable(HubspotSDK::Cms::ExternalOptionsMetaData)) }
        attr_reader :external_options_meta_data

        sig do
          params(
            external_options_meta_data:
              HubspotSDK::Cms::ExternalOptionsMetaData::OrHash
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

        sig { returns(T.nilable(HubspotSDK::Cms::FieldLevelPermission)) }
        attr_reader :permission

        sig do
          params(permission: HubspotSDK::Cms::FieldLevelPermission::OrHash).void
        end
        attr_writer :permission

        sig { returns(T.nilable(HubspotSDK::Cms::DefinitionSource)) }
        attr_reader :property_definition_source

        sig do
          params(
            property_definition_source:
              HubspotSDK::Cms::DefinitionSource::OrHash
          ).void
        end
        attr_writer :property_definition_source

        sig { returns(T.nilable(HubspotSDK::Cms::DefaultRequirements)) }
        attr_reader :property_requirements

        sig do
          params(
            property_requirements: HubspotSDK::Cms::DefaultRequirements::OrHash
          ).void
        end
        attr_writer :property_requirements

        sig { returns(T.nilable(HubspotSDK::Cms::RollupExpression)) }
        attr_reader :rollup_expression

        sig do
          params(
            rollup_expression: HubspotSDK::Cms::RollupExpression::OrHash
          ).void
        end
        attr_writer :rollup_expression

        sig do
          params(
            object_type_id: String,
            property: HubspotSDK::Property::OrHash,
            calculation_expression: T::Hash[Symbol, T.anything],
            calculation_formula: String,
            definition_source:
              HubspotSDK::Cms::PropertyDefinitionSource::OrHash,
            extension_data: HubspotSDK::Cms::ExtensionData::OrHash,
            external_options_meta_data:
              HubspotSDK::Cms::ExternalOptionsMetaData::OrHash,
            fulcrum_portal_id: Integer,
            fulcrum_timestamp: Integer,
            janus_group: String,
            permission: HubspotSDK::Cms::FieldLevelPermission::OrHash,
            property_definition_source:
              HubspotSDK::Cms::DefinitionSource::OrHash,
            property_requirements: HubspotSDK::Cms::DefaultRequirements::OrHash,
            rollup_expression: HubspotSDK::Cms::RollupExpression::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type_id:,
          # Defines a property
          property:,
          calculation_expression: nil,
          calculation_formula: nil,
          definition_source: nil,
          extension_data: nil,
          external_options_meta_data: nil,
          fulcrum_portal_id: nil,
          fulcrum_timestamp: nil,
          janus_group: nil,
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
              property: HubspotSDK::Property,
              calculation_expression: T::Hash[Symbol, T.anything],
              calculation_formula: String,
              definition_source: HubspotSDK::Cms::PropertyDefinitionSource,
              extension_data: HubspotSDK::Cms::ExtensionData,
              external_options_meta_data:
                HubspotSDK::Cms::ExternalOptionsMetaData,
              fulcrum_portal_id: Integer,
              fulcrum_timestamp: Integer,
              janus_group: String,
              permission: HubspotSDK::Cms::FieldLevelPermission,
              property_definition_source: HubspotSDK::Cms::DefinitionSource,
              property_requirements: HubspotSDK::Cms::DefaultRequirements,
              rollup_expression: HubspotSDK::Cms::RollupExpression
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
