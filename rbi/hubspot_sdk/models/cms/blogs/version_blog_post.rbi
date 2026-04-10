# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class VersionBlogPost < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::VersionBlogPost,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The id of the version.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(HubSpotSDK::Cms::Blogs::BlogPost) }
          attr_reader :object

          sig { params(object: HubSpotSDK::Cms::Blogs::BlogPost::OrHash).void }
          attr_writer :object

          # The timestamp (ISO8601 format) when this version of the Blog Post was updated.
          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(HubSpotSDK::VersionUser) }
          attr_reader :user

          sig { params(user: HubSpotSDK::VersionUser::OrHash).void }
          attr_writer :user

          sig do
            params(
              id: String,
              object: HubSpotSDK::Cms::Blogs::BlogPost::OrHash,
              updated_at: Time,
              user: HubSpotSDK::VersionUser::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The id of the version.
            id:,
            object:,
            # The timestamp (ISO8601 format) when this version of the Blog Post was updated.
            updated_at:,
            user:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                object: HubSpotSDK::Cms::Blogs::BlogPost,
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
