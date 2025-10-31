# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogForwardPaging < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::CollectionResponseWithTotalBlogForwardPaging,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Collection of blogs.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::Blog]) }
          attr_accessor :results

          # Total number of blogs.
          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
          attr_reader :paging

          sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
          attr_writer :paging

          # Response object for collections of blogs with pagination information.
          sig do
            params(
              results: T::Array[HubspotSDK::Cms::Blogs::Blog::OrHash],
              total: Integer,
              paging: HubspotSDK::ForwardPaging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Collection of blogs.
            results:,
            # Total number of blogs.
            total:,
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                results: T::Array[HubspotSDK::Cms::Blogs::Blog],
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
