# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ListFolderFetchResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::ListFolderFetchResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::CRM::PublicListFolder) }
        attr_reader :folder

        sig { params(folder: HubspotSDK::CRM::PublicListFolder::OrHash).void }
        attr_writer :folder

        sig do
          params(folder: HubspotSDK::CRM::PublicListFolder::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(folder:)
        end

        sig { override.returns({ folder: HubspotSDK::CRM::PublicListFolder }) }
        def to_hash
        end
      end
    end
  end
end
