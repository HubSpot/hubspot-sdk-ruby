# typed: strong

module HubspotSDK
  module Models
    module Cms
      CollectionResponseWithTotalBlog = Blogs::CollectionResponseWithTotalBlog

      module Blogs
        class CollectionResponseWithTotalBlog < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::CollectionResponseWithTotalBlog,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[HubspotSDK::Cms::Blogs::Blog]) }
          attr_accessor :results

          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubspotSDK::Paging)) }
          attr_reader :paging

          sig { params(paging: HubspotSDK::Paging::OrHash).void }
          attr_writer :paging

          sig do
            params(
              results: T::Array[HubspotSDK::Cms::Blogs::Blog::OrHash],
              total: Integer,
              paging: HubspotSDK::Paging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(results:, total:, paging: nil)
          end

          sig do
            override.returns(
              {
                results: T::Array[HubspotSDK::Cms::Blogs::Blog],
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
