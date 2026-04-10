# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class BatchInputPublicStatusRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::BatchInputPublicStatusRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of PublicStatusRequest objects, each representing a subscription status
        # update request. This property is required.
        sig do
          returns(
            T::Array[HubSpotSDK::CommunicationPreferences::PublicStatusRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicStatusRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of PublicStatusRequest objects, each representing a subscription status
          # update request. This property is required.
          inputs:
        )
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[
                  HubSpotSDK::CommunicationPreferences::PublicStatusRequest
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
