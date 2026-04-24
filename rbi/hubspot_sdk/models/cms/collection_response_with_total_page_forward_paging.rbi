# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalPageForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::CollectionResponseWithTotalPageForwardPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Collection of pages.
        sig { returns(T::Array[HubSpotSDK::Cms::PagesPage]) }
        attr_accessor :results

        # Total number of pages.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Cms::PagesPage::OrHash],
            total: Integer,
            paging: HubSpotSDK::ForwardPaging::OrHash
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
              results: T::Array[HubSpotSDK::Cms::PagesPage],
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
