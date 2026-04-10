# typed: strong

module HubSpotSDK
  module Models
    module Files
      class FileStat < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Files::FileStat, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T.nilable(HubSpotSDK::Files::File)) }
        attr_reader :file

        sig { params(file: HubSpotSDK::Files::File::OrHash).void }
        attr_writer :file

        sig { returns(T.nilable(HubSpotSDK::Files::Folder)) }
        attr_reader :folder

        sig { params(folder: HubSpotSDK::Files::Folder::OrHash).void }
        attr_writer :folder

        sig do
          params(
            file: HubSpotSDK::Files::File::OrHash,
            folder: HubSpotSDK::Files::Folder::OrHash
          ).returns(T.attached_class)
        end
        def self.new(file: nil, folder: nil)
        end

        sig do
          override.returns(
            { file: HubSpotSDK::Files::File, folder: HubSpotSDK::Files::Folder }
          )
        end
        def to_hash
        end
      end
    end
  end
end
