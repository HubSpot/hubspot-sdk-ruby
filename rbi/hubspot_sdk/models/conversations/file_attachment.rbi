# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class FileAttachment < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::FileAttachment,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig do
          returns(HubspotSDK::Conversations::FileAttachment::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          returns(
            T.nilable(
              HubspotSDK::Conversations::FileAttachment::FileUsageType::OrSymbol
            )
          )
        end
        attr_reader :file_usage_type

        sig do
          params(
            file_usage_type:
              HubspotSDK::Conversations::FileAttachment::FileUsageType::OrSymbol
          ).void
        end
        attr_writer :file_usage_type

        sig do
          params(
            file_id: String,
            type: HubspotSDK::Conversations::FileAttachment::Type::OrSymbol,
            file_usage_type:
              HubspotSDK::Conversations::FileAttachment::FileUsageType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(file_id:, type:, file_usage_type: nil)
        end

        sig do
          override.returns(
            {
              file_id: String,
              type: HubspotSDK::Conversations::FileAttachment::Type::OrSymbol,
              file_usage_type:
                HubspotSDK::Conversations::FileAttachment::FileUsageType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::FileAttachment::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILE =
            T.let(
              :FILE,
              HubspotSDK::Conversations::FileAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::FileAttachment::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module FileUsageType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::FileAttachment::FileUsageType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubspotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )
          STICKER =
            T.let(
              :STICKER,
              HubspotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )
          VOICE_RECORDING =
            T.let(
              :VOICE_RECORDING,
              HubspotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
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
