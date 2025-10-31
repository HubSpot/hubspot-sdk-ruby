# typed: strong

module HubspotSDK
  module Models
    module Cms
      class VersionContentFolder < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::VersionContentFolder,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of this folder version.
        sig { returns(String) }
        attr_accessor :id

        # Model definition for a content folder.
        sig { returns(HubspotSDK::Cms::ContentFolder) }
        attr_reader :object

        sig { params(object: HubspotSDK::Cms::ContentFolder::OrHash).void }
        attr_writer :object

        sig { returns(Time) }
        attr_accessor :updated_at

        # Model definition for a version user. Contains addition information about the
        # user who created a version.
        sig { returns(HubspotSDK::VersionUser) }
        attr_reader :user

        sig { params(user: HubspotSDK::VersionUser::OrHash).void }
        attr_writer :user

        # Model definition for a content folder version. Contains metadata describing the
        # version of the folder. It can be used to view edit history of a folder.
        sig do
          params(
            id: String,
            object: HubspotSDK::Cms::ContentFolder::OrHash,
            updated_at: Time,
            user: HubspotSDK::VersionUser::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of this folder version.
          id:,
          # Model definition for a content folder.
          object:,
          updated_at:,
          # Model definition for a version user. Contains addition information about the
          # user who created a version.
          user:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              object: HubspotSDK::Cms::ContentFolder,
              updated_at: Time,
              user: HubspotSDK::VersionUser
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
