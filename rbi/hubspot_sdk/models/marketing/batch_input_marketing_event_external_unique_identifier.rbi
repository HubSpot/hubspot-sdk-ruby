# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventExternalUniqueIdentifier < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchInputMarketingEventExternalUniqueIdentifier,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Marketing::MarketingEventExternalUniqueIdentifier
            ]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::MarketingEventExternalUniqueIdentifier::OrHash
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
                  HubspotSDK::Marketing::MarketingEventExternalUniqueIdentifier
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
