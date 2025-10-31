# typed: strong

module HubspotSDK
  module Models
    module Files
      class SignedURL < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Files::SignedURL, HubspotSDK::Internal::AnyHash)
          end

        # Timestamp of when the URL will no longer grant access to the file.
        sig { returns(Time) }
        attr_accessor :expires_at

        # Extension of the requested file.
        sig { returns(String) }
        attr_accessor :extension

        # Name of the requested file.
        sig { returns(String) }
        attr_accessor :name

        # Size in bytes of the requested file.
        sig { returns(Integer) }
        attr_accessor :size

        # Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
        sig { returns(String) }
        attr_accessor :type

        # Signed URL with access to the specified file. Anyone with this URL will be able
        # to access the file until it expires.
        sig { returns(String) }
        attr_accessor :url

        # For image and video files. The height of the file.
        sig { returns(T.nilable(Integer)) }
        attr_reader :height

        sig { params(height: Integer).void }
        attr_writer :height

        # For image and video files. The width of the file.
        sig { returns(T.nilable(Integer)) }
        attr_reader :width

        sig { params(width: Integer).void }
        attr_writer :width

        # Signed Url object with optional ancillary metadata of requested file
        sig do
          params(
            expires_at: Time,
            extension: String,
            name: String,
            size: Integer,
            type: String,
            url: String,
            height: Integer,
            width: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp of when the URL will no longer grant access to the file.
          expires_at:,
          # Extension of the requested file.
          extension:,
          # Name of the requested file.
          name:,
          # Size in bytes of the requested file.
          size:,
          # Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
          type:,
          # Signed URL with access to the specified file. Anyone with this URL will be able
          # to access the file until it expires.
          url:,
          # For image and video files. The height of the file.
          height: nil,
          # For image and video files. The width of the file.
          width: nil
        )
        end

        sig do
          override.returns(
            {
              expires_at: Time,
              extension: String,
              name: String,
              size: Integer,
              type: String,
              url: String,
              height: Integer,
              width: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
