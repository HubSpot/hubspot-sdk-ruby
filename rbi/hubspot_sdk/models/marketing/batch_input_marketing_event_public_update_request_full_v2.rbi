# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventPublicUpdateRequestFullV2 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchInputMarketingEventPublicUpdateRequestFullV2,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Marketing::MarketingEventPublicUpdateRequestFullV2
            ]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::MarketingEventPublicUpdateRequestFullV2::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[
                  HubspotSDK::Marketing::MarketingEventPublicUpdateRequestFullV2
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
