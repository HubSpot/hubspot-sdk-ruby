# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailGetHistogramParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailGetHistogramParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :email_ids

        sig { params(email_ids: T::Array[Integer]).void }
        attr_writer :email_ids

        sig { returns(T.nilable(String)) }
        attr_reader :end_timestamp

        sig { params(end_timestamp: String).void }
        attr_writer :end_timestamp

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol
            )
          )
        end
        attr_reader :interval

        sig do
          params(
            interval:
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol
          ).void
        end
        attr_writer :interval

        sig { returns(T.nilable(String)) }
        attr_reader :start_timestamp

        sig { params(start_timestamp: String).void }
        attr_writer :start_timestamp

        sig do
          params(
            email_ids: T::Array[Integer],
            end_timestamp: String,
            interval:
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol,
            start_timestamp: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          email_ids: nil,
          end_timestamp: nil,
          interval: nil,
          start_timestamp: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              email_ids: T::Array[Integer],
              end_timestamp: String,
              interval:
                HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol,
              start_timestamp: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Interval
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::EmailGetHistogramParams::Interval
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :DAY,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          HOUR =
            T.let(
              :HOUR,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          MINUTE =
            T.let(
              :MINUTE,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          MONTH =
            T.let(
              :MONTH,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          QUARTER =
            T.let(
              :QUARTER,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          QUARTER_HOUR =
            T.let(
              :QUARTER_HOUR,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          SECOND =
            T.let(
              :SECOND,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          WEEK =
            T.let(
              :WEEK,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          YEAR =
            T.let(
              :YEAR,
              HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
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
