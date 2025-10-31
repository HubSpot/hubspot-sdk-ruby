# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicWhatsAppTemplateMetadata < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, Integer]) }
        attr_accessor :crm_object_ids

        sig { returns(String) }
        attr_accessor :mapped_template_id

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :parameters

        sig do
          returns(
            HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            crm_object_ids: T::Hash[Symbol, Integer],
            mapped_template_id: String,
            parameters: T::Hash[Symbol, String],
            type:
              HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(crm_object_ids:, mapped_template_id:, parameters:, type:)
        end

        sig do
          override.returns(
            {
              crm_object_ids: T::Hash[Symbol, Integer],
              mapped_template_id: String,
              parameters: T::Hash[Symbol, String],
              type:
                HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHATSAPP_TEMPLATE_METADATA =
            T.let(
              :WHATSAPP_TEMPLATE_METADATA,
              HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type::TaggedSymbol
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
