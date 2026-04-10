# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class OutputFieldDefinition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::OutputFieldDefinition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Automation::FieldTypeDefinition) }
        attr_reader :type_definition

        sig do
          params(
            type_definition: HubSpotSDK::Automation::FieldTypeDefinition::OrHash
          ).void
        end
        attr_writer :type_definition

        sig do
          params(
            type_definition: HubSpotSDK::Automation::FieldTypeDefinition::OrHash
          ).returns(T.attached_class)
        end
        def self.new(type_definition:)
        end

        sig do
          override.returns(
            { type_definition: HubSpotSDK::Automation::FieldTypeDefinition }
          )
        end
        def to_hash
        end
      end
    end
  end
end
