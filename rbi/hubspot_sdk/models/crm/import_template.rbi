# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ImportTemplate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ImportTemplate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the specific saved template or previous import being
        # referenced.
        sig { returns(Integer) }
        attr_accessor :template_id

        # The classification of what type of template this represents, and what is its
        # origin or purpose.
        sig do
          returns(HubSpotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol)
        end
        attr_accessor :template_type

        sig do
          params(
            template_id: Integer,
            template_type:
              HubSpotSDK::Crm::ImportTemplate::TemplateType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the specific saved template or previous import being
          # referenced.
          template_id:,
          # The classification of what type of template this represents, and what is its
          # origin or purpose.
          template_type:
        )
        end

        sig do
          override.returns(
            {
              template_id: Integer,
              template_type:
                HubSpotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The classification of what type of template this represents, and what is its
        # origin or purpose.
        module TemplateType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::ImportTemplate::TemplateType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADMIN_DEFINED =
            T.let(
              :admin_defined,
              HubSpotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
            )
          PREVIOUS_IMPORT =
            T.let(
              :previous_import,
              HubSpotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
            )
          USER_FILE =
            T.let(
              :user_file,
              HubSpotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::ImportTemplate::TemplateType::TaggedSymbol
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
