# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CollectionResponsePublicTaxRateGroupForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CollectionResponsePublicTaxRateGroupForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Settings::PublicTaxRateGroup]) }
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Settings::PublicTaxRateGroup::OrHash],
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Settings::PublicTaxRateGroup],
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
