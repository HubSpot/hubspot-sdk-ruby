# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListFolderFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListFolderFetchResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Crm::PublicListFolder) }
        attr_reader :folder

        sig { params(folder: HubSpotSDK::Crm::PublicListFolder::OrHash).void }
        attr_writer :folder

        sig do
          params(folder: HubSpotSDK::Crm::PublicListFolder::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(folder:)
        end

        sig { override.returns({ folder: HubSpotSDK::Crm::PublicListFolder }) }
        def to_hash
        end
      end
    end
  end
end
