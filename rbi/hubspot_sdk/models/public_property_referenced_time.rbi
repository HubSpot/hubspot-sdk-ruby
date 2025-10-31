# typed: strong

module HubspotSDK
  module Models
    class PublicPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicPropertyReferencedTime,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :property

      sig { returns(String) }
      attr_accessor :reference_type

      sig do
        returns(HubspotSDK::PublicPropertyReferencedTime::TimeType::OrSymbol)
      end
      attr_accessor :time_type

      sig { returns(String) }
      attr_accessor :zone_id

      sig { returns(T.nilable(String)) }
      attr_reader :timezone_source

      sig { params(timezone_source: String).void }
      attr_writer :timezone_source

      sig do
        params(
          property: String,
          reference_type: String,
          time_type:
            HubspotSDK::PublicPropertyReferencedTime::TimeType::OrSymbol,
          zone_id: String,
          timezone_source: String
        ).returns(T.attached_class)
      end
      def self.new(
        property:,
        reference_type:,
        time_type:,
        zone_id:,
        timezone_source: nil
      )
      end

      sig do
        override.returns(
          {
            property: String,
            reference_type: String,
            time_type:
              HubspotSDK::PublicPropertyReferencedTime::TimeType::OrSymbol,
            zone_id: String,
            timezone_source: String
          }
        )
      end
      def to_hash
      end

      module TimeType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicPropertyReferencedTime::TimeType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROPERTY_REFERENCED =
          T.let(
            :PROPERTY_REFERENCED,
            HubspotSDK::PublicPropertyReferencedTime::TimeType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicPropertyReferencedTime::TimeType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
