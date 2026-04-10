# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogPostForwardPaging < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::CollectionResponseWithTotalBlogPostForwardPaging,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Collection of blog posts.
          sig { returns(T::Array[HubSpotSDK::Cms::Blogs::BlogPost]) }
          attr_accessor :results

          # Total number of blog posts.
          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
          attr_reader :paging

          sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
          attr_writer :paging

          sig do
            params(
              results: T::Array[HubSpotSDK::Cms::Blogs::BlogPost::OrHash],
              total: Integer,
              paging: HubSpotSDK::ForwardPaging::OrHash
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
                results: T::Array[HubSpotSDK::Cms::Blogs::BlogPost],
                total: Integer,
                paging: HubSpotSDK::ForwardPaging
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
