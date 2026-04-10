# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventExternalUniqueIdentifier < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchInputMarketingEventExternalUniqueIdentifier,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubSpotSDK::Marketing::MarketingEventExternalUniqueIdentifier
            ]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Marketing::MarketingEventExternalUniqueIdentifier::OrHash
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
                  HubSpotSDK::Marketing::MarketingEventExternalUniqueIdentifier
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
