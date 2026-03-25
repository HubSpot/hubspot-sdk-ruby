# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListFolderFetchResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListFolderFetchResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Crm::PublicListFolder) }
        attr_reader :folder

        sig { params(folder: HubspotSDK::Crm::PublicListFolder::OrHash).void }
        attr_writer :folder

        sig do
          params(folder: HubspotSDK::Crm::PublicListFolder::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(folder:)
        end

        sig { override.returns({ folder: HubspotSDK::Crm::PublicListFolder }) }
        def to_hash
        end
      end
    end
  end
end
