# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicIntegrationEventFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicIntegrationEventFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID representing the type of event for the integration event filter.
        sig { returns(Integer) }
        attr_accessor :event_type_id

        sig { returns(T::Array[HubspotSDK::Crm::PublicEventFilterMetadata]) }
        attr_accessor :filter_lines

        # Indicates the type of filter (INTEGRATION_EVENT).
        sig do
          returns(
            HubspotSDK::Crm::PublicIntegrationEventFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        sig do
          params(
            event_type_id: Integer,
            filter_lines:
              T::Array[HubspotSDK::Crm::PublicEventFilterMetadata::OrHash],
            filter_type:
              HubspotSDK::Crm::PublicIntegrationEventFilter::FilterType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID representing the type of event for the integration event filter.
          event_type_id:,
          filter_lines:,
          # Indicates the type of filter (INTEGRATION_EVENT).
          filter_type:
        )
        end

        sig do
          override.returns(
            {
              event_type_id: Integer,
              filter_lines:
                T::Array[HubspotSDK::Crm::PublicEventFilterMetadata],
              filter_type:
                HubspotSDK::Crm::PublicIntegrationEventFilter::FilterType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Indicates the type of filter (INTEGRATION_EVENT).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicIntegrationEventFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTEGRATION_EVENT =
            T.let(
              :INTEGRATION_EVENT,
              HubspotSDK::Crm::PublicIntegrationEventFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicIntegrationEventFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
