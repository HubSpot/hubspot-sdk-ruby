# typed: strong

module HubspotSDK
  module Models
    module Cms
      VersionBlog = Blogs::VersionBlog

      module Blogs
        class VersionBlog < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::VersionBlog,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The id of the version.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(HubspotSDK::Cms::Blogs::Blog) }
          attr_reader :object

          sig { params(object: HubspotSDK::Cms::Blogs::Blog::OrHash).void }
          attr_writer :object

          sig { returns(Time) }
          attr_accessor :updated_at

          # Model definition for a version user. Contains addition information about the
          # user who created a version.
          sig { returns(HubspotSDK::VersionUser) }
          attr_reader :user

          sig { params(user: HubspotSDK::VersionUser::OrHash).void }
          attr_writer :user

          # Model definition for a Version Blog. Contains metadata describing the version of
          # the Blog. It can be used to view edit history of the settings.
          sig do
            params(
              id: String,
              object: HubspotSDK::Cms::Blogs::Blog::OrHash,
              updated_at: Time,
              user: HubspotSDK::VersionUser::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The id of the version.
            id:,
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
                object: HubspotSDK::Cms::Blogs::Blog,
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
end
