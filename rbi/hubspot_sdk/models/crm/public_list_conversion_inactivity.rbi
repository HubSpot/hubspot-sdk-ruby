# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicListConversionInactivity < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicListConversionInactivity,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the type of conversion (INACTIVITY).
        sig do
          returns(
            HubspotSDK::Crm::PublicListConversionInactivity::ConversionType::OrSymbol
          )
        end
        attr_accessor :conversion_type

        # The number of time units for the inactivity period.
        sig { returns(Integer) }
        attr_accessor :offset

        # The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).
        sig do
          returns(
            HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit::OrSymbol
          )
        end
        attr_accessor :time_unit

        sig do
          params(
            conversion_type:
              HubspotSDK::Crm::PublicListConversionInactivity::ConversionType::OrSymbol,
            offset: Integer,
            time_unit:
              HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the type of conversion (INACTIVITY).
          conversion_type:,
          # The number of time units for the inactivity period.
          offset:,
          # The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).
          time_unit:
        )
        end

        sig do
          override.returns(
            {
              conversion_type:
                HubspotSDK::Crm::PublicListConversionInactivity::ConversionType::OrSymbol,
              offset: Integer,
              time_unit:
                HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the type of conversion (INACTIVITY).
        module ConversionType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicListConversionInactivity::ConversionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INACTIVITY =
            T.let(
              :INACTIVITY,
              HubspotSDK::Crm::PublicListConversionInactivity::ConversionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicListConversionInactivity::ConversionType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).
        module TimeUnit
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :DAY,
              HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit::TaggedSymbol
            )
          MONTH =
            T.let(
              :MONTH,
              HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit::TaggedSymbol
            )
          WEEK =
            T.let(
              :WEEK,
              HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicListConversionInactivity::TimeUnit::TaggedSymbol
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
