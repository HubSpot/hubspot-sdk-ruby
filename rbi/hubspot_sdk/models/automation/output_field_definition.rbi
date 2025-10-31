# typed: strong

module HubspotSDK
  module Models
    module Automation
      class OutputFieldDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::OutputFieldDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Automation::FieldTypeDefinition) }
        attr_reader :type_definition

        sig do
          params(
            type_definition: HubspotSDK::Automation::FieldTypeDefinition::OrHash
          ).void
        end
        attr_writer :type_definition

        sig do
          params(
            type_definition: HubspotSDK::Automation::FieldTypeDefinition::OrHash
          ).returns(T.attached_class)
        end
        def self.new(type_definition:)
        end

        sig do
          override.returns(
            { type_definition: HubspotSDK::Automation::FieldTypeDefinition }
          )
        end
        def to_hash
        end
      end
    end
  end
end
