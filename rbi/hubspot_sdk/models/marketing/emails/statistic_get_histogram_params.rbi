# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Emails
        class StatisticGetHistogramParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Filter by email IDs. Only include statistics of emails with these IDs.
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :email_ids

          sig { params(email_ids: T::Array[Integer]).void }
          attr_writer :email_ids

          # The end timestamp of the time span, in ISO8601 representation.
          sig { returns(T.nilable(String)) }
          attr_reader :end_timestamp

          sig { params(end_timestamp: String).void }
          attr_writer :end_timestamp

          # The interval to aggregate statistics for.
          sig do
            returns(
              T.nilable(
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::OrSymbol
              )
            )
          end
          attr_reader :interval

          sig do
            params(
              interval:
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::OrSymbol
            ).void
          end
          attr_writer :interval

          # The start timestamp of the time span, in ISO8601 representation.
          sig { returns(T.nilable(String)) }
          attr_reader :start_timestamp

          sig { params(start_timestamp: String).void }
          attr_writer :start_timestamp

          sig do
            params(
              email_ids: T::Array[Integer],
              end_timestamp: String,
              interval:
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::OrSymbol,
              start_timestamp: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by email IDs. Only include statistics of emails with these IDs.
            email_ids: nil,
            # The end timestamp of the time span, in ISO8601 representation.
            end_timestamp: nil,
            # The interval to aggregate statistics for.
            interval: nil,
            # The start timestamp of the time span, in ISO8601 representation.
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
                  HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::OrSymbol,
                start_timestamp: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The interval to aggregate statistics for.
          module Interval
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :DAY,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )
            HOUR =
              T.let(
                :HOUR,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )
            MINUTE =
              T.let(
                :MINUTE,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )
            MONTH =
              T.let(
                :MONTH,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )
            QUARTER =
              T.let(
                :QUARTER,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )
            QUARTER_HOUR =
              T.let(
                :QUARTER_HOUR,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )
            SECOND =
              T.let(
                :SECOND,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )
            WEEK =
              T.let(
                :WEEK,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )
            YEAR =
              T.let(
                :YEAR,
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::TaggedSymbol
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
end
