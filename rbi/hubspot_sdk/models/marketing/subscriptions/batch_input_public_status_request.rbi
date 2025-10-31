# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class BatchInputPublicStatusRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Subscriptions::BatchInputPublicStatusRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::Marketing::Subscriptions::PublicStatusRequest
              ]
            )
          end
          attr_accessor :inputs

          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::OrHash
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
                    HubspotSDK::Marketing::Subscriptions::PublicStatusRequest
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
end
