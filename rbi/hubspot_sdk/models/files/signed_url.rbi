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

        # Signed URL with access to the specified file. Anyone with this URL will be able
        # to access the file until it expires.
        sig { returns(String) }
        attr_accessor :url

        # Extension of the requested file.
        sig { returns(T.nilable(String)) }
        attr_reader :extension

        sig { params(extension: String).void }
        attr_writer :extension

        # For image and video files. The height of the file.
        sig { returns(T.nilable(Integer)) }
        attr_reader :height

        sig { params(height: Integer).void }
        attr_writer :height

        # Name of the requested file.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Size in bytes of the requested file.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # For image and video files. The width of the file.
        sig { returns(T.nilable(Integer)) }
        attr_reader :width

        sig { params(width: Integer).void }
        attr_writer :width

        sig do
          params(
            expires_at: Time,
            url: String,
            extension: String,
            height: Integer,
            name: String,
            size: Integer,
            type: String,
            width: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp of when the URL will no longer grant access to the file.
          expires_at:,
          # Signed URL with access to the specified file. Anyone with this URL will be able
          # to access the file until it expires.
          url:,
          # Extension of the requested file.
          extension: nil,
          # For image and video files. The height of the file.
          height: nil,
          # Name of the requested file.
          name: nil,
          # Size in bytes of the requested file.
          size: nil,
          # Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
          type: nil,
          # For image and video files. The width of the file.
          width: nil
        )
        end

        sig do
          override.returns(
            {
              expires_at: Time,
              url: String,
              extension: String,
              height: Integer,
              name: String,
              size: Integer,
              type: String,
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
