# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogPostForwardPaging < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::CollectionResponseWithTotalBlogPostForwardPaging,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Collection of blog posts.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::BlogPost]) }
          attr_accessor :results

          # Total number of blog posts.
          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
          attr_reader :paging

          sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
          attr_writer :paging

          sig do
            params(
              results: T::Array[HubspotSDK::Cms::Blogs::BlogPost::OrHash],
              total: Integer,
              paging: HubspotSDK::ForwardPaging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Collection of blog posts.
            results:,
            # Total number of blog posts.
            total:,
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                results: T::Array[HubspotSDK::Cms::Blogs::BlogPost],
                total: Integer,
                paging: HubspotSDK::ForwardPaging
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
