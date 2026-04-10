# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicPropertyReferencedTime < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicPropertyReferencedTime,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the name of the property that the time reference is applied to.
        sig { returns(String) }
        attr_accessor :property

        # Specifies the type of reference for the property (VALUE, UPDATED_AT,
        # ANNIVERSARY, VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION,
        # ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION).
        sig { returns(String) }
        attr_accessor :reference_type

        # Defines the type of time (PROPERTY_REFERENCED).
        sig do
          returns(
            HubSpotSDK::Crm::PublicPropertyReferencedTime::TimeType::OrSymbol
          )
        end
        attr_accessor :time_type

        # Indicates the identifier for the time zone associated with the property.
        sig { returns(String) }
        attr_accessor :zone_id

        # Specifies the source of the time zone information for the property (CUSTOM,
        # USER, PORTAL).
        sig { returns(T.nilable(String)) }
        attr_reader :timezone_source

        sig { params(timezone_source: String).void }
        attr_writer :timezone_source

        sig do
          params(
            property: String,
            reference_type: String,
            time_type:
              HubSpotSDK::Crm::PublicPropertyReferencedTime::TimeType::OrSymbol,
            zone_id: String,
            timezone_source: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the name of the property that the time reference is applied to.
          property:,
          # Specifies the type of reference for the property (VALUE, UPDATED_AT,
          # ANNIVERSARY, VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION,
          # ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION).
          reference_type:,
          # Defines the type of time (PROPERTY_REFERENCED).
          time_type:,
          # Indicates the identifier for the time zone associated with the property.
          zone_id:,
          # Specifies the source of the time zone information for the property (CUSTOM,
          # USER, PORTAL).
          timezone_source: nil
        )
        end

        sig do
          override.returns(
            {
              property: String,
              reference_type: String,
              time_type:
                HubSpotSDK::Crm::PublicPropertyReferencedTime::TimeType::OrSymbol,
              zone_id: String,
              timezone_source: String
            }
          )
        end
        def to_hash
        end

        # Defines the type of time (PROPERTY_REFERENCED).
        module TimeType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicPropertyReferencedTime::TimeType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY_REFERENCED =
            T.let(
              :PROPERTY_REFERENCED,
              HubSpotSDK::Crm::PublicPropertyReferencedTime::TimeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicPropertyReferencedTime::TimeType::TaggedSymbol
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
