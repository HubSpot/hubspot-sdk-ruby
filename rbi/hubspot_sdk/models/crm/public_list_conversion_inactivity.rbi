# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicListConversionInactivity < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicListConversionInactivity,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the type of conversion (INACTIVITY).
        sig do
          returns(
            HubSpotSDK::Crm::PublicListConversionInactivity::ConversionType::OrSymbol
          )
        end
        attr_accessor :conversion_type

        # Value used to paginate through lists. The `offset` provided in the response can
        # be used in the next request to fetch the next page of results. Defaults to `0`
        # if no offset is provided.
        sig { returns(Integer) }
        attr_accessor :offset

        # The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).
        sig do
          returns(
            HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit::OrSymbol
          )
        end
        attr_accessor :time_unit

        sig do
          params(
            conversion_type:
              HubSpotSDK::Crm::PublicListConversionInactivity::ConversionType::OrSymbol,
            offset: Integer,
            time_unit:
              HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the type of conversion (INACTIVITY).
          conversion_type:,
          # Value used to paginate through lists. The `offset` provided in the response can
          # be used in the next request to fetch the next page of results. Defaults to `0`
          # if no offset is provided.
          offset:,
          # The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).
          time_unit:
        )
        end

        sig do
          override.returns(
            {
              conversion_type:
                HubSpotSDK::Crm::PublicListConversionInactivity::ConversionType::OrSymbol,
              offset: Integer,
              time_unit:
                HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the type of conversion (INACTIVITY).
        module ConversionType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicListConversionInactivity::ConversionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INACTIVITY =
            T.let(
              :INACTIVITY,
              HubSpotSDK::Crm::PublicListConversionInactivity::ConversionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicListConversionInactivity::ConversionType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).
        module TimeUnit
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :DAY,
              HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit::TaggedSymbol
            )
          MONTH =
            T.let(
              :MONTH,
              HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit::TaggedSymbol
            )
          WEEK =
            T.let(
              :WEEK,
              HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit::TaggedSymbol
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
