# typed: strong

module HubSpotSDK
  module Models
    module Cms
      BlogPostVersion = Blogs::BlogPostVersion

      module Blogs
        class BlogPostVersion < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::BlogPostVersion,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(HubSpotSDK::Cms::Blogs::BlogPost) }
          attr_reader :object

          sig { params(object: HubSpotSDK::Cms::Blogs::BlogPost::OrHash).void }
          attr_writer :object

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
          def self.new(id:, object:, updated_at:, user:)
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
