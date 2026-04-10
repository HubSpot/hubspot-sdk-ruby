# typed: strong

module HubSpotSDK
  module Models
    module Files
      class FileAssetUploadParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Files::FileAssetUploadParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :charset_hunch

        sig { params(charset_hunch: String).void }
        attr_writer :charset_hunch

        sig { returns(T.nilable(HubSpotSDK::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: HubSpotSDK::Internal::FileInput).void }
        attr_writer :file

        sig { returns(T.nilable(String)) }
        attr_reader :file_name

        sig { params(file_name: String).void }
        attr_writer :file_name

        sig { returns(T.nilable(String)) }
        attr_reader :folder_id

        sig { params(folder_id: String).void }
        attr_writer :folder_id

        sig { returns(T.nilable(String)) }
        attr_reader :folder_path

        sig { params(folder_path: String).void }
        attr_writer :folder_path

        sig { returns(T.nilable(String)) }
        attr_reader :options

        sig { params(options: String).void }
        attr_writer :options

        sig do
          params(
            charset_hunch: String,
            file: HubSpotSDK::Internal::FileInput,
            file_name: String,
            folder_id: String,
            folder_path: String,
            options: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          charset_hunch: nil,
          file: nil,
          file_name: nil,
          folder_id: nil,
          folder_path: nil,
          options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              charset_hunch: String,
              file: HubSpotSDK::Internal::FileInput,
              file_name: String,
              folder_id: String,
              folder_path: String,
              options: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
