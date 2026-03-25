# typed: strong

module HubspotSDK
  module Models
    module Cms
      BlogPostVersion = Blogs::BlogPostVersion

      module Blogs
        class BlogPostVersion < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BlogPostVersion,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(HubspotSDK::Cms::Blogs::BlogPost) }
          attr_reader :object

          sig { params(object: HubspotSDK::Cms::Blogs::BlogPost::OrHash).void }
          attr_writer :object

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(HubspotSDK::Cms::VersionUser) }
          attr_reader :user

          sig { params(user: HubspotSDK::Cms::VersionUser::OrHash).void }
          attr_writer :user

          sig do
            params(
              id: String,
              object: HubspotSDK::Cms::Blogs::BlogPost::OrHash,
              updated_at: Time,
              user: HubspotSDK::Cms::VersionUser::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, object:, updated_at:, user:)
          end

          sig do
            override.returns(
              {
                id: String,
                object: HubspotSDK::Cms::Blogs::BlogPost,
                updated_at: Time,
                user: HubspotSDK::Cms::VersionUser
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
