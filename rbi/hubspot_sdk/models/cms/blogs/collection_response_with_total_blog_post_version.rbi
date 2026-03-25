# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogPostVersion < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::CollectionResponseWithTotalBlogPostVersion,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[HubspotSDK::Cms::Blogs::VersionBlogPost]) }
          attr_accessor :results

          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubspotSDK::Paging)) }
          attr_reader :paging

          sig { params(paging: HubspotSDK::Paging::OrHash).void }
          attr_writer :paging

          sig do
            params(
              results:
                T::Array[HubspotSDK::Cms::Blogs::VersionBlogPost::OrHash],
              total: Integer,
              paging: HubspotSDK::Paging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(results:, total:, paging: nil)
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
