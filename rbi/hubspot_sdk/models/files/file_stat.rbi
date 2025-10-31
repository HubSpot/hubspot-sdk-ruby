# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileStat < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Files::FileStat, HubspotSDK::Internal::AnyHash)
          end

        # File
        sig { returns(T.nilable(HubspotSDK::Files::File)) }
        attr_reader :file

        sig { params(file: HubspotSDK::Files::File::OrHash).void }
        attr_writer :file

        sig { returns(T.nilable(HubspotSDK::Files::Folder)) }
        attr_reader :folder

        sig { params(folder: HubspotSDK::Files::Folder::OrHash).void }
        attr_writer :folder

        sig do
          params(
            file: HubspotSDK::Files::File::OrHash,
            folder: HubspotSDK::Files::Folder::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # File
          file: nil,
          folder: nil
        )
        end

        sig do
          override.returns(
            { file: HubspotSDK::Files::File, folder: HubspotSDK::Files::Folder }
          )
        end
        def to_hash
        end
      end
    end
  end
end
