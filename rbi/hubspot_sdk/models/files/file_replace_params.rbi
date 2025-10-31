# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileReplaceParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileReplaceParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Character set of given file data.
        sig { returns(T.nilable(String)) }
        attr_reader :charset_hunch

        sig { params(charset_hunch: String).void }
        attr_writer :charset_hunch

        # File data that will replace existing file in the file manager.
        sig { returns(T.nilable(HubspotSDK::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: HubspotSDK::Internal::FileInput).void }
        attr_writer :file

        # JSON string representing FileReplaceOptions. Includes options to set the access
        # and expiresAt properties, which will automatically update when the file is
        # replaced.
        sig { returns(T.nilable(String)) }
        attr_reader :options

        sig { params(options: String).void }
        attr_writer :options

        sig do
          params(
            charset_hunch: String,
            file: HubspotSDK::Internal::FileInput,
            options: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Character set of given file data.
          charset_hunch: nil,
          # File data that will replace existing file in the file manager.
          file: nil,
          # JSON string representing FileReplaceOptions. Includes options to set the access
          # and expiresAt properties, which will automatically update when the file is
          # replaced.
          options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              charset_hunch: String,
              file: HubspotSDK::Internal::FileInput,
              options: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
