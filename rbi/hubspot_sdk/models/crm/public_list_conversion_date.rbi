# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicListConversionDate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicListConversionDate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::CRM::PublicListConversionDate::ConversionType::OrSymbol
          )
        end
        attr_accessor :conversion_type

        sig { returns(Integer) }
        attr_accessor :day

        sig { returns(Integer) }
        attr_accessor :month

        sig { returns(Integer) }
        attr_accessor :year

        sig do
          params(
            conversion_type:
              HubspotSDK::CRM::PublicListConversionDate::ConversionType::OrSymbol,
            day: Integer,
            month: Integer,
            year: Integer
          ).returns(T.attached_class)
        end
        def self.new(conversion_type:, day:, month:, year:)
        end

        sig do
          override.returns(
            {
              conversion_type:
                HubspotSDK::CRM::PublicListConversionDate::ConversionType::OrSymbol,
              day: Integer,
              month: Integer,
              year: Integer
            }
          )
        end
        def to_hash
        end

        module ConversionType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CRM::PublicListConversionDate::ConversionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONVERSION_DATE =
            T.let(
              :CONVERSION_DATE,
              HubspotSDK::CRM::PublicListConversionDate::ConversionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicListConversionDate::ConversionType::TaggedSymbol
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
