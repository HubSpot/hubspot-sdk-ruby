# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class BatchInputPublicStatusRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::BatchInputPublicStatusRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of PublicStatusRequest objects, each representing a subscription status
        # update request. This property is required.
        sig do
          returns(
            T::Array[HubspotSDK::CommunicationPreferences::PublicStatusRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicStatusRequest::OrHash
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
                  HubspotSDK::CommunicationPreferences::PublicStatusRequest
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
