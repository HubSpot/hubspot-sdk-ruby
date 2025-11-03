# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalVersionBlog < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::CollectionResponseWithTotalVersionBlog,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Collection of blog versions.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::VersionBlog]) }
          attr_accessor :results

          # Total number of blog versions.
          sig { returns(Integer) }
          attr_accessor :total

          # Contains information pagination of results.
          sig { returns(T.nilable(HubspotSDK::Marketing::EmailsPaging)) }
          attr_reader :paging

          sig do
            params(paging: HubspotSDK::Marketing::EmailsPaging::OrHash).void
          end
          attr_writer :paging

          # Response object for collections of blog versions with pagination information.
          sig do
            params(
              results: T::Array[HubspotSDK::Cms::Blogs::VersionBlog::OrHash],
              total: Integer,
              paging: HubspotSDK::Marketing::EmailsPaging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Collection of blog versions.
            results:,
            # Total number of blog versions.
            total:,
            # Contains information pagination of results.
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                results: T::Array[HubspotSDK::Cms::Blogs::VersionBlog],
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
