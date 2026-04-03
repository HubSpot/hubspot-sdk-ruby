# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileAssetUploadParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileAssetUploadParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :charset_hunch

        sig { params(charset_hunch: String).void }
        attr_writer :charset_hunch

        sig { returns(T.nilable(HubspotSDK::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: HubspotSDK::Internal::FileInput).void }
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
            file: HubspotSDK::Internal::FileInput,
            file_name: String,
            folder_id: String,
            folder_path: String,
            options: String,
            request_options: HubspotSDK::RequestOptions::OrHash
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
              file: HubspotSDK::Internal::FileInput,
              file_name: String,
              folder_id: String,
              folder_path: String,
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
