# typed: strong

module HubSpotSDK
  module Models
    module Cms
      VersionBlog = Blogs::VersionBlog

      module Blogs
        class VersionBlog < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::VersionBlog,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The id of the version.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(HubSpotSDK::Cms::Blogs::Blog) }
          attr_reader :object

          sig { params(object: HubSpotSDK::Cms::Blogs::Blog::OrHash).void }
          attr_writer :object

          # The timestamp (ISO8601 format) when this blog version was updated.
          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(HubSpotSDK::VersionUser) }
          attr_reader :user

          sig { params(user: HubSpotSDK::VersionUser::OrHash).void }
          attr_writer :user

          sig do
            params(
              id: String,
              object: HubSpotSDK::Cms::Blogs::Blog::OrHash,
              updated_at: Time,
              user: HubSpotSDK::VersionUser::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The id of the version.
            id:,
            object:,
            # The timestamp (ISO8601 format) when this blog version was updated.
            updated_at:,
            user:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                object: HubSpotSDK::Cms::Blogs::Blog,
                updated_at: Time,
                user: HubSpotSDK::VersionUser
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
