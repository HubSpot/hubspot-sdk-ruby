# typed: strong

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalVersionPage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CollectionResponseWithTotalVersionPage,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of page versions.
        sig { returns(T::Array[HubspotSDK::Cms::VersionPage]) }
        attr_accessor :results

        # Total number of page versions.
        sig { returns(Integer) }
        attr_accessor :total

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
        attr_writer :paging

        # Response object for collections of page versions with pagination information.
        sig do
          params(
            results: T::Array[HubspotSDK::Cms::VersionPage::OrHash],
            total: Integer,
            paging: HubspotSDK::Marketing::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of page versions.
          results:,
          # Total number of page versions.
          total:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Cms::VersionPage],
              total: Integer,
              paging: HubspotSDK::Marketing::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
