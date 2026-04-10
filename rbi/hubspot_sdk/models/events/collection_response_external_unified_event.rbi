# typed: strong

module HubSpotSDK
  module Models
    CollectionResponseExternalUnifiedEvent =
      Events::CollectionResponseExternalUnifiedEvent

    module Events
      class CollectionResponseExternalUnifiedEvent < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::CollectionResponseExternalUnifiedEvent,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of ExternalUnifiedEvent objects, each representing an individual event
        # with its associated details.
        sig { returns(T::Array[HubSpotSDK::Events::ExternalUnifiedEvent]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Events::ExternalUnifiedEvent::OrHash],
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of ExternalUnifiedEvent objects, each representing an individual event
          # with its associated details.
          results:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Events::ExternalUnifiedEvent],
              paging: HubSpotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
