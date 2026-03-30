# typed: strong

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalDomain < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CollectionResponseWithTotalDomain,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The results of the query.
        sig { returns(T::Array[HubspotSDK::Cms::Domain]) }
        attr_accessor :results

        # The number of available results.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Cms::Domain::OrHash],
            total: Integer,
            paging: HubspotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The results of the query.
          results:,
          # The number of available results.
          total:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Cms::Domain],
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
