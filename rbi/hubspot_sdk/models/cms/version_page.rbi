# typed: strong

module HubspotSDK
  module Models
    module Cms
      class VersionPage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::VersionPage, HubspotSDK::Internal::AnyHash)
          end

        # ID of this page version.
        sig { returns(String) }
        attr_accessor :id

        # Model definition for a landing page or site page.
        sig { returns(HubspotSDK::Cms::Page) }
        attr_reader :object

        sig { params(object: HubspotSDK::Cms::Page::OrHash).void }
        attr_writer :object

        sig { returns(Time) }
        attr_accessor :updated_at

        # Model definition for a version user. Contains addition information about the
        # user who created a version.
        sig { returns(HubspotSDK::VersionUser) }
        attr_reader :user

        sig { params(user: HubspotSDK::VersionUser::OrHash).void }
        attr_writer :user

        # Model definition for a landing page or site page version. Contains metadata
        # describing the version of the page. It can be used to view edit history of a
        # page.
        sig do
          params(
            id: String,
            object: HubspotSDK::Cms::Page::OrHash,
            updated_at: Time,
            user: HubspotSDK::VersionUser::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of this page version.
          id:,
          # Model definition for a landing page or site page.
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
              object: HubspotSDK::Cms::Page,
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
