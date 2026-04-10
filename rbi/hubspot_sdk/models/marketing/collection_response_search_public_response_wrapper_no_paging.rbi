# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseSearchPublicResponseWrapperNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Marketing::SearchPublicResponseWrapper])
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubSpotSDK::Marketing::SearchPublicResponseWrapper::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubSpotSDK::Marketing::SearchPublicResponseWrapper]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
