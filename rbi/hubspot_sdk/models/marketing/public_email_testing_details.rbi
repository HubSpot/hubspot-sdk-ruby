# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailTestingDetails < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicEmailTestingDetails,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Version of the email that should be sent if there are too few recipients to
        # conduct an AB test.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::OrSymbol
            )
          )
        end
        attr_reader :ab_sample_size_default

        sig do
          params(
            ab_sample_size_default:
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::OrSymbol
          ).void
        end
        attr_writer :ab_sample_size_default

        # Version of the email that should be sent if the results are inconclusive after
        # the test period, master or variant.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::OrSymbol
            )
          )
        end
        attr_reader :ab_sampling_default

        sig do
          params(
            ab_sampling_default:
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::OrSymbol
          ).void
        end
        attr_writer :ab_sampling_default

        # Status of the AB test.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::OrSymbol
            )
          )
        end
        attr_reader :ab_status

        sig do
          params(
            ab_status:
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::OrSymbol
          ).void
        end
        attr_writer :ab_status

        # Metric to determine the version that will be sent to the remaining contacts.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric::OrSymbol
            )
          )
        end
        attr_reader :ab_success_metric

        sig do
          params(
            ab_success_metric:
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric::OrSymbol
          ).void
        end
        attr_writer :ab_success_metric

        # The size of your test group.
        sig { returns(T.nilable(Integer)) }
        attr_reader :ab_test_percentage

        sig { params(ab_test_percentage: Integer).void }
        attr_writer :ab_test_percentage

        # Time limit on gathering test results. After this time is up, the winning version
        # will be sent to the remaining contacts.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hours_to_wait

        sig { params(hours_to_wait: Integer).void }
        attr_writer :hours_to_wait

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_ab_variation

        sig { params(is_ab_variation: T::Boolean).void }
        attr_writer :is_ab_variation

        # The ID of the AB test.
        sig { returns(T.nilable(String)) }
        attr_reader :test_id

        sig { params(test_id: String).void }
        attr_writer :test_id

        # AB testing related data. This property is only returned for AB type emails.
        sig do
          params(
            ab_sample_size_default:
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::OrSymbol,
            ab_sampling_default:
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::OrSymbol,
            ab_status:
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::OrSymbol,
            ab_success_metric:
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric::OrSymbol,
            ab_test_percentage: Integer,
            hours_to_wait: Integer,
            is_ab_variation: T::Boolean,
            test_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Version of the email that should be sent if there are too few recipients to
          # conduct an AB test.
          ab_sample_size_default: nil,
          # Version of the email that should be sent if the results are inconclusive after
          # the test period, master or variant.
          ab_sampling_default: nil,
          # Status of the AB test.
          ab_status: nil,
          # Metric to determine the version that will be sent to the remaining contacts.
          ab_success_metric: nil,
          # The size of your test group.
          ab_test_percentage: nil,
          # Time limit on gathering test results. After this time is up, the winning version
          # will be sent to the remaining contacts.
          hours_to_wait: nil,
          is_ab_variation: nil,
          # The ID of the AB test.
          test_id: nil
        )
        end

        sig do
          override.returns(
            {
              ab_sample_size_default:
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::OrSymbol,
              ab_sampling_default:
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::OrSymbol,
              ab_status:
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::OrSymbol,
              ab_success_metric:
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric::OrSymbol,
              ab_test_percentage: Integer,
              hours_to_wait: Integer,
              is_ab_variation: T::Boolean,
              test_id: String
            }
          )
        end
        def to_hash
        end

        # Version of the email that should be sent if there are too few recipients to
        # conduct an AB test.
        module AbSampleSizeDefault
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MASTER =
            T.let(
              :master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
            )
          VARIANT =
            T.let(
              :variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
            )
          LOSER_VARIANT =
            T.let(
              :loser_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
            )
          MAB_MASTER =
            T.let(
              :mab_master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
            )
          MAB_VARIANT =
            T.let(
              :mab_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
            )
          AUTOMATED_MASTER =
            T.let(
              :automated_master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
            )
          AUTOMATED_VARIANT =
            T.let(
              :automated_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
            )
          AUTOMATED_LOSER_VARIANT =
            T.let(
              :automated_loser_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Version of the email that should be sent if the results are inconclusive after
        # the test period, master or variant.
        module AbSamplingDefault
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MASTER =
            T.let(
              :master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
            )
          VARIANT =
            T.let(
              :variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
            )
          LOSER_VARIANT =
            T.let(
              :loser_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
            )
          MAB_MASTER =
            T.let(
              :mab_master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
            )
          MAB_VARIANT =
            T.let(
              :mab_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
            )
          AUTOMATED_MASTER =
            T.let(
              :automated_master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
            )
          AUTOMATED_VARIANT =
            T.let(
              :automated_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
            )
          AUTOMATED_LOSER_VARIANT =
            T.let(
              :automated_loser_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Status of the AB test.
        module AbStatus
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MASTER =
            T.let(
              :master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
            )
          VARIANT =
            T.let(
              :variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
            )
          LOSER_VARIANT =
            T.let(
              :loser_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
            )
          MAB_MASTER =
            T.let(
              :mab_master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
            )
          MAB_VARIANT =
            T.let(
              :mab_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
            )
          AUTOMATED_MASTER =
            T.let(
              :automated_master,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
            )
          AUTOMATED_VARIANT =
            T.let(
              :automated_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
            )
          AUTOMATED_LOSER_VARIANT =
            T.let(
              :automated_loser_variant,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Metric to determine the version that will be sent to the remaining contacts.
        module AbSuccessMetric
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CLICKS_BY_OPENS =
            T.let(
              :CLICKS_BY_OPENS,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric::TaggedSymbol
            )
          CLICKS_BY_DELIVERED =
            T.let(
              :CLICKS_BY_DELIVERED,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric::TaggedSymbol
            )
          OPENS_BY_DELIVERED =
            T.let(
              :OPENS_BY_DELIVERED,
              HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric::TaggedSymbol
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
