# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalDomain < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::CollectionResponseWithTotalDomain,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The results of the query.
        sig { returns(T::Array[HubSpotSDK::Cms::Domain]) }
        attr_accessor :results

        # The number of available results.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Cms::Domain::OrHash],
            total: Integer,
            paging: HubSpotSDK::Paging::OrHash
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
              results: T::Array[HubSpotSDK::Cms::Domain],
              total: Integer,
              paging: HubSpotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
