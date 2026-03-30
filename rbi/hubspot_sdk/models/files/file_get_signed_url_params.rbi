# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileGetSignedURLParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileGetSignedURLParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        # How long in seconds the link will provide access to the file.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expiration_seconds

        sig { params(expiration_seconds: Integer).void }
        attr_writer :expiration_seconds

        # For image files. This will resize the image to the desired size before sharing.
        # Does not affect the original file, just the file served by this signed URL.
        sig do
          returns(
            T.nilable(HubspotSDK::Files::FileGetSignedURLParams::Size::OrSymbol)
          )
        end
        attr_reader :size

        sig do
          params(
            size: HubspotSDK::Files::FileGetSignedURLParams::Size::OrSymbol
          ).void
        end
        attr_writer :size

        # If size is provided, this will upscale the image to fit the size dimensions.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :upscale

        sig { params(upscale: T::Boolean).void }
        attr_writer :upscale

        sig do
          params(
            file_id: String,
            expiration_seconds: Integer,
            size: HubspotSDK::Files::FileGetSignedURLParams::Size::OrSymbol,
            upscale: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          file_id:,
          # How long in seconds the link will provide access to the file.
          expiration_seconds: nil,
          # For image files. This will resize the image to the desired size before sharing.
          # Does not affect the original file, just the file served by this signed URL.
          size: nil,
          # If size is provided, this will upscale the image to fit the size dimensions.
          upscale: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              file_id: String,
              expiration_seconds: Integer,
              size: HubspotSDK::Files::FileGetSignedURLParams::Size::OrSymbol,
              upscale: T::Boolean,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # For image files. This will resize the image to the desired size before sharing.
        # Does not affect the original file, just the file served by this signed URL.
        module Size
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Files::FileGetSignedURLParams::Size)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ICON =
            T.let(
              :icon,
              HubspotSDK::Files::FileGetSignedURLParams::Size::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              HubspotSDK::Files::FileGetSignedURLParams::Size::TaggedSymbol
            )
          PREVIEW =
            T.let(
              :preview,
              HubspotSDK::Files::FileGetSignedURLParams::Size::TaggedSymbol
            )
          THUMB =
            T.let(
              :thumb,
              HubspotSDK::Files::FileGetSignedURLParams::Size::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Files::FileGetSignedURLParams::Size::TaggedSymbol
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
