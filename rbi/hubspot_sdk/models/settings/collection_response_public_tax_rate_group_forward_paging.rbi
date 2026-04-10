# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class CollectionResponsePublicTaxRateGroupForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::CollectionResponsePublicTaxRateGroupForwardPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Settings::PublicTaxRateGroup]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Settings::PublicTaxRateGroup::OrHash],
            paging: HubSpotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Settings::PublicTaxRateGroup],
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
