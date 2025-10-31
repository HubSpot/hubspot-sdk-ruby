# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogAuthorForwardPaging < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::CollectionResponseWithTotalBlogAuthorForwardPaging,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Collection of blog authors.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::BlogAuthor]) }
          attr_accessor :results

          # Total number of blog authors.
          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
          attr_reader :paging

          sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
          attr_writer :paging

          # Response object for collections of blog authors with pagination information.
          sig do
            params(
              results: T::Array[HubspotSDK::Cms::Blogs::BlogAuthor::OrHash],
              total: Integer,
              paging: HubspotSDK::ForwardPaging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Collection of blog authors.
            results:,
            # Total number of blog authors.
            total:,
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                results: T::Array[HubspotSDK::Cms::Blogs::BlogAuthor],
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
