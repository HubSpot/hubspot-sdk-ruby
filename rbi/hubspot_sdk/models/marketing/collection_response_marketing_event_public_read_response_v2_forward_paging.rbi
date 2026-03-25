# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseMarketingEventPublicReadResponseV2ForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CollectionResponseMarketingEventPublicReadResponseV2ForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Marketing::MarketingEventPublicReadResponseV2]
          )
        end
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Marketing::MarketingEventPublicReadResponseV2::OrHash
              ],
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[
                  HubspotSDK::Marketing::MarketingEventPublicReadResponseV2
                ],
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
