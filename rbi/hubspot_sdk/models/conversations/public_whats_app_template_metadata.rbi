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

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :parameters

        sig do
          returns(
            HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(Integer)) }
        attr_reader :content_id

        sig { params(content_id: Integer).void }
        attr_writer :content_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :mapped_template_id

        sig { params(mapped_template_id: Integer).void }
        attr_writer :mapped_template_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :root_mic_id

        sig { params(root_mic_id: Integer).void }
        attr_writer :root_mic_id

        sig do
          params(
            crm_object_ids: T::Hash[Symbol, Integer],
            parameters: T::Hash[Symbol, String],
            type:
              HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type::OrSymbol,
            content_id: Integer,
            mapped_template_id: Integer,
            root_mic_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          crm_object_ids:,
          parameters:,
          type:,
          content_id: nil,
          mapped_template_id: nil,
          root_mic_id: nil
        )
        end

        sig do
          override.returns(
            {
              crm_object_ids: T::Hash[Symbol, Integer],
              parameters: T::Hash[Symbol, String],
              type:
                HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type::TaggedSymbol,
              content_id: Integer,
              mapped_template_id: Integer,
              root_mic_id: Integer
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
