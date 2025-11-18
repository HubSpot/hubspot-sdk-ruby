# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalVersionBlogPost < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::CollectionResponseWithTotalVersionBlogPost,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Collection of blog post versions.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::VersionBlogPost]) }
          attr_accessor :results

          # Total number of blog post versions.
          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubspotSDK::Paging)) }
          attr_reader :paging

          sig { params(paging: HubspotSDK::Paging::OrHash).void }
          attr_writer :paging

          # Response object for collections of blog post versions with pagination
          # information.
          sig do
            params(
              results:
                T::Array[HubspotSDK::Cms::Blogs::VersionBlogPost::OrHash],
              total: Integer,
              paging: HubspotSDK::Paging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Collection of blog post versions.
            results:,
            # Total number of blog post versions.
            total:,
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                results: T::Array[HubspotSDK::Cms::Blogs::VersionBlogPost],
                total: Integer,
                paging: HubspotSDK::Paging
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
