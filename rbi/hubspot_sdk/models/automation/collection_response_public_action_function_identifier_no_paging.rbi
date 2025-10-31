# typed: strong

module HubspotSDK
  module Models
    module Automation
      class CollectionResponsePublicActionFunctionIdentifierNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::CollectionResponsePublicActionFunctionIdentifierNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Automation::PublicActionFunctionIdentifier]
          )
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Automation::PublicActionFunctionIdentifier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubspotSDK::Automation::PublicActionFunctionIdentifier]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
