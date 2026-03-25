# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicListConversionDate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicListConversionDate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the type of conversion (CONVERSION_DATE).
        sig do
          returns(
            HubspotSDK::Crm::PublicListConversionDate::ConversionType::OrSymbol
          )
        end
        attr_accessor :conversion_type

        # The day component of the conversion date.
        sig { returns(Integer) }
        attr_accessor :day

        # The month component of the conversion date.
        sig { returns(Integer) }
        attr_accessor :month

        # The year component of the conversion date.
        sig { returns(Integer) }
        attr_accessor :year

        sig do
          params(
            conversion_type:
              HubspotSDK::Crm::PublicListConversionDate::ConversionType::OrSymbol,
            day: Integer,
            month: Integer,
            year: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the type of conversion (CONVERSION_DATE).
          conversion_type:,
          # The day component of the conversion date.
          day:,
          # The month component of the conversion date.
          month:,
          # The year component of the conversion date.
          year:
        )
        end

        sig do
          override.returns(
            {
              conversion_type:
                HubspotSDK::Crm::PublicListConversionDate::ConversionType::OrSymbol,
              day: Integer,
              month: Integer,
              year: Integer
            }
          )
        end
        def to_hash
        end

        # Specifies the type of conversion (CONVERSION_DATE).
        module ConversionType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicListConversionDate::ConversionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONVERSION_DATE =
            T.let(
              :CONVERSION_DATE,
              HubspotSDK::Crm::PublicListConversionDate::ConversionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicListConversionDate::ConversionType::TaggedSymbol
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
