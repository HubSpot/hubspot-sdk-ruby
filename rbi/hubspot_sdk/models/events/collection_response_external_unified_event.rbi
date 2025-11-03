# typed: strong

module HubspotSDK
  module Models
    module Events
      class CollectionResponseExternalUnifiedEvent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::CollectionResponseExternalUnifiedEvent,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Events::ExternalUnifiedEvent]) }
        attr_accessor :results

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::EmailsPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::EmailsPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Events::ExternalUnifiedEvent::OrHash],
            paging: HubspotSDK::Marketing::EmailsPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Events::ExternalUnifiedEvent],
              paging: HubspotSDK::Marketing::EmailsPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
