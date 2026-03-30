# typed: strong

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalPageForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CollectionResponseWithTotalPageForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of pages.
        sig { returns(T::Array[HubspotSDK::Cms::Page]) }
        attr_accessor :results

        # Total number of pages.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Cms::Page::OrHash],
            total: Integer,
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of pages.
          results:,
          # Total number of pages.
          total:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Cms::Page],
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
