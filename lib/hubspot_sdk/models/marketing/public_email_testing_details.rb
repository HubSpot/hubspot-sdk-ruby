# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmailTestingDetails < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute is_ab_variation
        #
        #   @return [Boolean]
        required :is_ab_variation, HubSpotSDK::Internal::Type::Boolean, api_name: :isAbVariation

        # @!attribute ab_sample_size_default
        #   Version of the email that should be sent if there are too few recipients to
        #   conduct an AB test.
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault, nil]
        optional :ab_sample_size_default,
                 enum: -> { HubSpotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault },
                 api_name: :abSampleSizeDefault

        # @!attribute ab_sampling_default
        #   Version of the email that should be sent if the results are inconclusive after
        #   the test period, master or variant.
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::PublicEmailTestingDetails::AbSamplingDefault, nil]
        optional :ab_sampling_default,
                 enum: -> { HubSpotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault },
                 api_name: :abSamplingDefault

        # @!attribute ab_status
        #   Status of the AB test.
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::PublicEmailTestingDetails::AbStatus, nil]
        optional :ab_status,
                 enum: -> { HubSpotSDK::Marketing::PublicEmailTestingDetails::AbStatus },
                 api_name: :abStatus

        # @!attribute ab_success_metric
        #   Metric to determine the version that will be sent to the remaining contacts.
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::PublicEmailTestingDetails::AbSuccessMetric, nil]
        optional :ab_success_metric,
                 enum: -> { HubSpotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric },
                 api_name: :abSuccessMetric

        # @!attribute ab_test_percentage
        #   The size of your test group.
        #
        #   @return [Integer, nil]
        optional :ab_test_percentage, Integer, api_name: :abTestPercentage

        # @!attribute hours_to_wait
        #   Time limit on gathering test results. After this time is up, the winning version
        #   will be sent to the remaining contacts.
        #
        #   @return [Integer, nil]
        optional :hours_to_wait, Integer, api_name: :hoursToWait

        # @!attribute test_id
        #   The ID of the AB test.
        #
        #   @return [String, nil]
        optional :test_id, String, api_name: :testId

        # @!method initialize(is_ab_variation:, ab_sample_size_default: nil, ab_sampling_default: nil, ab_status: nil, ab_success_metric: nil, ab_test_percentage: nil, hours_to_wait: nil, test_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::PublicEmailTestingDetails} for more details.
        #
        #   @param is_ab_variation [Boolean]
        #
        #   @param ab_sample_size_default [Symbol, HubSpotSDK::Models::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault] Version of the email that should be sent if there are too few recipients to cond
        #
        #   @param ab_sampling_default [Symbol, HubSpotSDK::Models::Marketing::PublicEmailTestingDetails::AbSamplingDefault] Version of the email that should be sent if the results are inconclusive after t
        #
        #   @param ab_status [Symbol, HubSpotSDK::Models::Marketing::PublicEmailTestingDetails::AbStatus] Status of the AB test.
        #
        #   @param ab_success_metric [Symbol, HubSpotSDK::Models::Marketing::PublicEmailTestingDetails::AbSuccessMetric] Metric to determine the version that will be sent to the remaining contacts.
        #
        #   @param ab_test_percentage [Integer] The size of your test group.
        #
        #   @param hours_to_wait [Integer] Time limit on gathering test results. After this time is up, the winning version
        #
        #   @param test_id [String] The ID of the AB test.

        # Version of the email that should be sent if there are too few recipients to
        # conduct an AB test.
        #
        # @see HubSpotSDK::Models::Marketing::PublicEmailTestingDetails#ab_sample_size_default
        module AbSampleSizeDefault
          extend HubSpotSDK::Internal::Type::Enum

          AUTOMATED_LOSER_VARIANT = :automated_loser_variant
          AUTOMATED_MASTER = :automated_master
          AUTOMATED_VARIANT = :automated_variant
          LOSER_VARIANT = :loser_variant
          MAB_MASTER = :mab_master
          MAB_VARIANT = :mab_variant
          MASTER = :master
          VARIANT = :variant

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Version of the email that should be sent if the results are inconclusive after
        # the test period, master or variant.
        #
        # @see HubSpotSDK::Models::Marketing::PublicEmailTestingDetails#ab_sampling_default
        module AbSamplingDefault
          extend HubSpotSDK::Internal::Type::Enum

          AUTOMATED_LOSER_VARIANT = :automated_loser_variant
          AUTOMATED_MASTER = :automated_master
          AUTOMATED_VARIANT = :automated_variant
          LOSER_VARIANT = :loser_variant
          MAB_MASTER = :mab_master
          MAB_VARIANT = :mab_variant
          MASTER = :master
          VARIANT = :variant

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Status of the AB test.
        #
        # @see HubSpotSDK::Models::Marketing::PublicEmailTestingDetails#ab_status
        module AbStatus
          extend HubSpotSDK::Internal::Type::Enum

          AUTOMATED_LOSER_VARIANT = :automated_loser_variant
          AUTOMATED_MASTER = :automated_master
          AUTOMATED_VARIANT = :automated_variant
          LOSER_VARIANT = :loser_variant
          MAB_MASTER = :mab_master
          MAB_VARIANT = :mab_variant
          MASTER = :master
          VARIANT = :variant

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Metric to determine the version that will be sent to the remaining contacts.
        #
        # @see HubSpotSDK::Models::Marketing::PublicEmailTestingDetails#ab_success_metric
        module AbSuccessMetric
          extend HubSpotSDK::Internal::Type::Enum

          CLICKS_BY_DELIVERED = :CLICKS_BY_DELIVERED
          CLICKS_BY_OPENS = :CLICKS_BY_OPENS
          OPENS_BY_DELIVERED = :OPENS_BY_DELIVERED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
