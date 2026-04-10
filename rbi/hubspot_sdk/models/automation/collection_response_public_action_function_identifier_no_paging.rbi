# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class CollectionResponsePublicActionFunctionIdentifierNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::CollectionResponsePublicActionFunctionIdentifierNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubSpotSDK::Automation::PublicActionFunctionIdentifier]
          )
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubSpotSDK::Automation::PublicActionFunctionIdentifier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubSpotSDK::Automation::PublicActionFunctionIdentifier]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
