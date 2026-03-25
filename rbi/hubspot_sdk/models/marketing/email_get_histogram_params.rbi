# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailGetHistogramParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailGetHistogramParams,
              HubspotSDK::Internal::AnyHash
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
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol
            )
          )
        end
        attr_reader :interval

        sig do
          params(
            interval:
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol
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
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol,
            start_timestamp: String,
            request_options: HubspotSDK::RequestOptions::OrHash
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
                HubspotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol,
              start_timestamp: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Interval
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::EmailGetHistogramParams::Interval
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :DAY,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          HOUR =
            T.let(
              :HOUR,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          MINUTE =
            T.let(
              :MINUTE,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          MONTH =
            T.let(
              :MONTH,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          QUARTER =
            T.let(
              :QUARTER,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          QUARTER_HOUR =
            T.let(
              :QUARTER_HOUR,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          SECOND =
            T.let(
              :SECOND,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          WEEK =
            T.let(
              :WEEK,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )
          YEAR =
            T.let(
              :YEAR,
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::EmailGetHistogramParams::Interval::TaggedSymbol
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
