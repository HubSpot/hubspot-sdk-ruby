# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalContentFolderForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::CollectionResponseWithTotalContentFolderForwardPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Collection of content folders.
        sig { returns(T::Array[HubSpotSDK::Cms::ContentFolder]) }
        attr_accessor :results

        # Total number of content folders.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Cms::ContentFolder::OrHash],
            total: Integer,
            paging: HubSpotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of content folders.
          results:,
          # Total number of content folders.
          total:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Cms::ContentFolder],
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
