# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ImportTemplate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ImportTemplate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :template_id

        sig do
          returns(HubspotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol)
        end
        attr_accessor :template_type

        sig do
          params(
            template_id: Integer,
            template_type:
              HubspotSDK::Crm::ImportTemplate::TemplateType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(template_id:, template_type:)
        end

        sig do
          override.returns(
            {
              template_id: Integer,
              template_type:
                HubspotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module TemplateType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::ImportTemplate::TemplateType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADMIN_DEFINED =
            T.let(
              :admin_defined,
              HubspotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
            )
          PREVIOUS_IMPORT =
            T.let(
              :previous_import,
              HubspotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
            )
          USER_FILE =
            T.let(
              :user_file,
              HubspotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
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
