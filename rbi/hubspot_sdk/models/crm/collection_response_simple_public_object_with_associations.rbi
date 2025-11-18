# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseSimplePublicObjectWithAssociations < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponseSimplePublicObjectWithAssociations,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Crm::SimplePublicObjectWithAssociations])
        end
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Crm::SimplePublicObjectWithAssociations::OrHash
              ],
            paging: HubspotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubspotSDK::Crm::SimplePublicObjectWithAssociations],
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
