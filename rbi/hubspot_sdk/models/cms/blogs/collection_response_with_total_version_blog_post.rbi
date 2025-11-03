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

          # Contains information pagination of results.
          sig { returns(T.nilable(HubspotSDK::Marketing::EmailsPaging)) }
          attr_reader :paging

          sig do
            params(paging: HubspotSDK::Marketing::EmailsPaging::OrHash).void
          end
          attr_writer :paging

          # Response object for collections of blog post versions with pagination
          # information.
          sig do
            params(
              results:
                T::Array[HubspotSDK::Cms::Blogs::VersionBlogPost::OrHash],
              total: Integer,
              paging: HubspotSDK::Marketing::EmailsPaging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Collection of blog post versions.
            results:,
            # Total number of blog post versions.
            total:,
            # Contains information pagination of results.
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                results: T::Array[HubspotSDK::Cms::Blogs::VersionBlogPost],
                total: Integer,
                paging: HubspotSDK::Marketing::EmailsPaging
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
