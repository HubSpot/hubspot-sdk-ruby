# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseWithTotalSimplePublicObject < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::SimplePublicObject]) }
        attr_accessor :results

        # The number of available results
        sig { returns(Integer) }
        attr_accessor :total

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Crm::SimplePublicObject::OrHash],
            total: Integer,
            paging: HubspotSDK::Marketing::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # The number of available results
          total:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Crm::SimplePublicObject],
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
