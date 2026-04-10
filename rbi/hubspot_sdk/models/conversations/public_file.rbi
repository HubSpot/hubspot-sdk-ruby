# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicFile < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicFile,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig do
          returns(
            HubSpotSDK::Conversations::PublicFile::FileUsageType::TaggedSymbol
          )
        end
        attr_accessor :file_usage_type

        sig do
          returns(HubSpotSDK::Conversations::PublicFile::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            file_id: String,
            file_usage_type:
              HubSpotSDK::Conversations::PublicFile::FileUsageType::OrSymbol,
            type: HubSpotSDK::Conversations::PublicFile::Type::OrSymbol,
            name: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(file_id:, file_usage_type:, type:, name: nil, url: nil)
        end

        sig do
          override.returns(
            {
              file_id: String,
              file_usage_type:
                HubSpotSDK::Conversations::PublicFile::FileUsageType::TaggedSymbol,
              type: HubSpotSDK::Conversations::PublicFile::Type::TaggedSymbol,
              name: String,
              url: String
            }
          )
        end
        def to_hash
        end

        module FileUsageType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::PublicFile::FileUsageType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubSpotSDK::Conversations::PublicFile::FileUsageType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubSpotSDK::Conversations::PublicFile::FileUsageType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubSpotSDK::Conversations::PublicFile::FileUsageType::TaggedSymbol
            )
          STICKER =
            T.let(
              :STICKER,
              HubSpotSDK::Conversations::PublicFile::FileUsageType::TaggedSymbol
            )
          VOICE_RECORDING =
            T.let(
              :VOICE_RECORDING,
              HubSpotSDK::Conversations::PublicFile::FileUsageType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicFile::FileUsageType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Conversations::PublicFile::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILE =
            T.let(
              :FILE,
              HubSpotSDK::Conversations::PublicFile::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicFile::Type::TaggedSymbol
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
