# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseProperty < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponseProperty,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Property]) }
        attr_accessor :results

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Property::OrHash],
            paging: HubspotSDK::Marketing::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Property],
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
