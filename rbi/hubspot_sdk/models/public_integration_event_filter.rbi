# typed: strong

module HubspotSDK
  module Models
    class PublicIntegrationEventFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicIntegrationEventFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :event_type_id

      sig { returns(T::Array[HubspotSDK::PublicEventFilterMetadata]) }
      attr_accessor :filter_lines

      sig do
        returns(HubspotSDK::PublicIntegrationEventFilter::FilterType::OrSymbol)
      end
      attr_accessor :filter_type

      sig do
        params(
          event_type_id: Integer,
          filter_lines: T::Array[HubspotSDK::PublicEventFilterMetadata::OrHash],
          filter_type:
            HubspotSDK::PublicIntegrationEventFilter::FilterType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(event_type_id:, filter_lines:, filter_type:)
      end

      sig do
        override.returns(
          {
            event_type_id: Integer,
            filter_lines: T::Array[HubspotSDK::PublicEventFilterMetadata],
            filter_type:
              HubspotSDK::PublicIntegrationEventFilter::FilterType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicIntegrationEventFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTEGRATION_EVENT =
          T.let(
            :INTEGRATION_EVENT,
            HubspotSDK::PublicIntegrationEventFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicIntegrationEventFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
