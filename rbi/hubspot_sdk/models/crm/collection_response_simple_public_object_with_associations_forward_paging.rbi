# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponseSimplePublicObjectWithAssociationsForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::CollectionResponseSimplePublicObjectWithAssociationsForwardPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Crm::SimplePublicObjectWithAssociations])
        end
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubSpotSDK::Crm::SimplePublicObjectWithAssociations::OrHash
              ],
            paging: HubSpotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubSpotSDK::Crm::SimplePublicObjectWithAssociations],
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
