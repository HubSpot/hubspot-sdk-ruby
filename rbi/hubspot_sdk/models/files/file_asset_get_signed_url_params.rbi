# typed: strong

module HubSpotSDK
  module Models
    module Files
      class FileAssetGetSignedURLParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Files::FileAssetGetSignedURLParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :expiration_seconds

        sig { params(expiration_seconds: Integer).void }
        attr_writer :expiration_seconds

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::OrSymbol
            )
          )
        end
        attr_reader :size

        sig do
          params(
            size: HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::OrSymbol
          ).void
        end
        attr_writer :size

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :upscale

        sig { params(upscale: T::Boolean).void }
        attr_writer :upscale

        sig do
          params(
            file_id: String,
            expiration_seconds: Integer,
            size:
              HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::OrSymbol,
            upscale: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          file_id:,
          expiration_seconds: nil,
          size: nil,
          upscale: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              file_id: String,
              expiration_seconds: Integer,
              size:
                HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::OrSymbol,
              upscale: T::Boolean,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Size
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Files::FileAssetGetSignedURLParams::Size
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ICON =
            T.let(
              :icon,
              HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::TaggedSymbol
            )
          PREVIEW =
            T.let(
              :preview,
              HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::TaggedSymbol
            )
          THUMB =
            T.let(
              :thumb,
              HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::TaggedSymbol
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
