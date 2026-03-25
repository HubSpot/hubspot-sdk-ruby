# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalTagForwardPaging < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::CollectionResponseWithTotalTagForwardPaging,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Collection of blog tags.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::Tag]) }
          attr_accessor :results

          # Total number of blog tags.
          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
          attr_reader :paging

          sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
          attr_writer :paging

          sig do
            params(
              results: T::Array[HubspotSDK::Cms::Blogs::Tag::OrHash],
              total: Integer,
              paging: HubspotSDK::ForwardPaging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Collection of blog tags.
            results:,
            # Total number of blog tags.
            total:,
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                results: T::Array[HubspotSDK::Cms::Blogs::Tag],
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
