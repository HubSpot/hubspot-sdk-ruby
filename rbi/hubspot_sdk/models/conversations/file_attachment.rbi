# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class FileAttachment < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::FileAttachment,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig do
          returns(HubSpotSDK::Conversations::FileAttachment::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Conversations::FileAttachment::FileUsageType::OrSymbol
            )
          )
        end
        attr_reader :file_usage_type

        sig do
          params(
            file_usage_type:
              HubSpotSDK::Conversations::FileAttachment::FileUsageType::OrSymbol
          ).void
        end
        attr_writer :file_usage_type

        sig do
          params(
            file_id: String,
            type: HubSpotSDK::Conversations::FileAttachment::Type::OrSymbol,
            file_usage_type:
              HubSpotSDK::Conversations::FileAttachment::FileUsageType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(file_id:, type:, file_usage_type: nil)
        end

        sig do
          override.returns(
            {
              file_id: String,
              type: HubSpotSDK::Conversations::FileAttachment::Type::OrSymbol,
              file_usage_type:
                HubSpotSDK::Conversations::FileAttachment::FileUsageType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Conversations::FileAttachment::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILE =
            T.let(
              :FILE,
              HubSpotSDK::Conversations::FileAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::FileAttachment::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module FileUsageType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::FileAttachment::FileUsageType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubSpotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubSpotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubSpotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )
          STICKER =
            T.let(
              :STICKER,
              HubSpotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )
          VOICE_RECORDING =
            T.let(
              :VOICE_RECORDING,
              HubSpotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::FileAttachment::FileUsageType::TaggedSymbol
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
