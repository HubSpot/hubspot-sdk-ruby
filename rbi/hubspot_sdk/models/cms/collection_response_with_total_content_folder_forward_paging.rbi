# typed: strong

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalContentFolderForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CollectionResponseWithTotalContentFolderForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of content folders.
        sig { returns(T::Array[HubspotSDK::Cms::ContentFolder]) }
        attr_accessor :results

        # Total number of content folders.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        # Response object for collections of content folders with pagination information.
        sig do
          params(
            results: T::Array[HubspotSDK::Cms::ContentFolder::OrHash],
            total: Integer,
            paging: HubspotSDK::ForwardPaging::OrHash
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
              results: T::Array[HubspotSDK::Cms::ContentFolder],
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
