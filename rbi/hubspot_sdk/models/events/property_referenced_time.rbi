# typed: strong

module HubspotSDK
  module Models
    module Events
      class PropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::PropertyReferencedTime,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :property

        sig do
          returns(
            HubspotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
          )
        end
        attr_accessor :reference_type

        sig do
          returns(
            HubspotSDK::Events::PropertyReferencedTime::TimeType::TaggedSymbol
          )
        end
        attr_accessor :time_type

        sig do
          returns(
            HubspotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
          )
        end
        attr_accessor :timezone_source

        sig { returns(String) }
        attr_accessor :zone_id

        sig do
          params(
            property: String,
            reference_type:
              HubspotSDK::Events::PropertyReferencedTime::ReferenceType::OrSymbol,
            time_type:
              HubspotSDK::Events::PropertyReferencedTime::TimeType::OrSymbol,
            timezone_source:
              HubspotSDK::Events::PropertyReferencedTime::TimezoneSource::OrSymbol,
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
                HubspotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol,
              time_type:
                HubspotSDK::Events::PropertyReferencedTime::TimeType::TaggedSymbol,
              timezone_source:
                HubspotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol,
              zone_id: String
            }
          )
        end
        def to_hash
        end

        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::PropertyReferencedTime::ReferenceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANNIVERSARY =
            T.let(
              :ANNIVERSARY,
              HubspotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION =
            T.let(
              :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION,
              HubspotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )
          UPDATED_AT =
            T.let(
              :UPDATED_AT,
              HubspotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )
          VALUE =
            T.let(
              :VALUE,
              HubspotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION =
            T.let(
              :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION,
              HubspotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::PropertyReferencedTime::ReferenceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::PropertyReferencedTime::TimeType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY_REFERENCED =
            T.let(
              :PROPERTY_REFERENCED,
              HubspotSDK::Events::PropertyReferencedTime::TimeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::PropertyReferencedTime::TimeType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimezoneSource
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::PropertyReferencedTime::TimezoneSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOM =
            T.let(
              :CUSTOM,
              HubspotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubspotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::PropertyReferencedTime::TimezoneSource::TaggedSymbol
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
