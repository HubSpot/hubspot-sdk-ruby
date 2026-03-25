# typed: strong

module HubspotSDK
  module Models
    CollectionResponseExternalUnifiedEvent =
      Events::CollectionResponseExternalUnifiedEvent

    module Events
      class CollectionResponseExternalUnifiedEvent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::CollectionResponseExternalUnifiedEvent,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of ExternalUnifiedEvent objects, each representing an individual event
        # occurrence.
        sig { returns(T::Array[HubspotSDK::Events::ExternalUnifiedEvent]) }
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Events::ExternalUnifiedEvent::OrHash],
            paging: HubspotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of ExternalUnifiedEvent objects, each representing an individual event
          # occurrence.
          results:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Events::ExternalUnifiedEvent],
              paging: HubspotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
