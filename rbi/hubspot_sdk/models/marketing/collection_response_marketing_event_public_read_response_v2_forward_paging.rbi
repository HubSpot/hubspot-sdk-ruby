# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseMarketingEventPublicReadResponseV2ForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CollectionResponseMarketingEventPublicReadResponseV2ForwardPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubSpotSDK::Marketing::MarketingEventPublicReadResponseV2]
          )
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
                HubSpotSDK::Marketing::MarketingEventPublicReadResponseV2::OrHash
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
                T::Array[
                  HubSpotSDK::Marketing::MarketingEventPublicReadResponseV2
                ],
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
