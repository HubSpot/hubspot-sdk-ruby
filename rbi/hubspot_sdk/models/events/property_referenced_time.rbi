# typed: strong

module HubSpotSDK
  module Models
    module Events
      class PropertyReferencedTime < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::PropertyReferencedTime,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :property

        sig do
          returns(
            HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
          )
        end
        attr_accessor :reference_type

        sig do
          returns(
            HubSpotSDK::Events::PropertyReferencedTime::TimeType::TaggedSymbol
          )
        end
        attr_accessor :time_type

        sig do
          returns(
            HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
          )
        end
        attr_accessor :timezone_source

        sig { returns(String) }
        attr_accessor :zone_id

        sig do
          params(
            property: String,
            reference_type:
              HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::OrSymbol,
            time_type:
              HubSpotSDK::Events::PropertyReferencedTime::TimeType::OrSymbol,
            timezone_source:
              HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource::OrSymbol,
            zone_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          property:,
          reference_type:,
          time_type:,
          timezone_source:,
          zone_id:
        )
        end

        sig do
          override.returns(
            {
              property: String,
              reference_type:
                HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol,
              time_type:
                HubSpotSDK::Events::PropertyReferencedTime::TimeType::TaggedSymbol,
              timezone_source:
                HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol,
              zone_id: String
            }
          )
        end
        def to_hash
        end

        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::PropertyReferencedTime::ReferenceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANNIVERSARY =
            T.let(
              :ANNIVERSARY,
              HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION =
            T.let(
              :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION,
              HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )
          UPDATED_AT =
            T.let(
              :UPDATED_AT,
              HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )
          VALUE =
            T.let(
              :VALUE,
              HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION =
            T.let(
              :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION,
              HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimeType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::PropertyReferencedTime::TimeType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY_REFERENCED =
            T.let(
              :PROPERTY_REFERENCED,
              HubSpotSDK::Events::PropertyReferencedTime::TimeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::PropertyReferencedTime::TimeType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimezoneSource
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOM =
            T.let(
              :CUSTOM,
              HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
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
