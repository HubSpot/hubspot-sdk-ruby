# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileUploadParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileUploadParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Character set of the uploaded file.
        sig { returns(T.nilable(String)) }
        attr_reader :charset_hunch

        sig { params(charset_hunch: String).void }
        attr_writer :charset_hunch

        # File to be uploaded.
        sig { returns(T.nilable(HubspotSDK::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: HubspotSDK::Internal::FileInput).void }
        attr_writer :file

        # Desired name for the uploaded file.
        sig { returns(T.nilable(String)) }
        attr_reader :file_name

        sig { params(file_name: String).void }
        attr_writer :file_name

        # Either 'folderId' or 'folderPath' is required. folderId is the ID of the folder
        # the file will be uploaded to.
        sig { returns(T.nilable(String)) }
        attr_reader :folder_id

        sig { params(folder_id: String).void }
        attr_writer :folder_id

        # Either 'folderPath' or 'folderId' is required. This field represents the
        # destination folder path for the uploaded file. If a path doesn't exist, the
        # system will try to create one.
        sig { returns(T.nilable(String)) }
        attr_reader :folder_path

        sig { params(folder_path: String).void }
        attr_writer :folder_path

        # JSON string representing FileUploadOptions.
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
          # Character set of the uploaded file.
          charset_hunch: nil,
          # File to be uploaded.
          file: nil,
          # Desired name for the uploaded file.
          file_name: nil,
          # Either 'folderId' or 'folderPath' is required. folderId is the ID of the folder
          # the file will be uploaded to.
          folder_id: nil,
          # Either 'folderPath' or 'folderId' is required. This field represents the
          # destination folder path for the uploaded file. If a path doesn't exist, the
          # system will try to create one.
          folder_path: nil,
          # JSON string representing FileUploadOptions.
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
