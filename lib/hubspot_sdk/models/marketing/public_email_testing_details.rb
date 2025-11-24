# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailTestingDetails < HubspotSDK::Internal::Type::BaseModel
        # @!attribute ab_sample_size_default
        #   Version of the email that should be sent if there are too few recipients to
        #   conduct an AB test.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault, nil]
        optional :ab_sample_size_default,
                 enum: -> { HubspotSDK::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault },
                 api_name: :abSampleSizeDefault

        # @!attribute ab_sampling_default
        #   Version of the email that should be sent if the results are inconclusive after
        #   the test period, master or variant.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicEmailTestingDetails::AbSamplingDefault, nil]
        optional :ab_sampling_default,
                 enum: -> { HubspotSDK::Marketing::PublicEmailTestingDetails::AbSamplingDefault },
                 api_name: :abSamplingDefault

        # @!attribute ab_status
        #   Status of the AB test.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicEmailTestingDetails::AbStatus, nil]
        optional :ab_status,
                 enum: -> { HubspotSDK::Marketing::PublicEmailTestingDetails::AbStatus },
                 api_name: :abStatus

        # @!attribute ab_success_metric
        #   Metric to determine the version that will be sent to the remaining contacts.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicEmailTestingDetails::AbSuccessMetric, nil]
        optional :ab_success_metric,
                 enum: -> { HubspotSDK::Marketing::PublicEmailTestingDetails::AbSuccessMetric },
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

        # @!attribute is_ab_variation
        #
        #   @return [Boolean, nil]
        optional :is_ab_variation, HubspotSDK::Internal::Type::Boolean, api_name: :isAbVariation

        # @!attribute test_id
        #   The ID of the AB test.
        #
        #   @return [String, nil]
        optional :test_id, String, api_name: :testId

        # @!method initialize(ab_sample_size_default: nil, ab_sampling_default: nil, ab_status: nil, ab_success_metric: nil, ab_test_percentage: nil, hours_to_wait: nil, is_ab_variation: nil, test_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicEmailTestingDetails} for more details.
        #
        #   AB testing related data. This property is only returned for AB type emails.
        #
        #   @param ab_sample_size_default [Symbol, HubspotSDK::Models::Marketing::PublicEmailTestingDetails::AbSampleSizeDefault] Version of the email that should be sent if there are too few recipients to cond
        #
        #   @param ab_sampling_default [Symbol, HubspotSDK::Models::Marketing::PublicEmailTestingDetails::AbSamplingDefault] Version of the email that should be sent if the results are inconclusive after t
        #
        #   @param ab_status [Symbol, HubspotSDK::Models::Marketing::PublicEmailTestingDetails::AbStatus] Status of the AB test.
        #
        #   @param ab_success_metric [Symbol, HubspotSDK::Models::Marketing::PublicEmailTestingDetails::AbSuccessMetric] Metric to determine the version that will be sent to the remaining contacts.
        #
        #   @param ab_test_percentage [Integer] The size of your test group.
        #
        #   @param hours_to_wait [Integer] Time limit on gathering test results. After this time is up, the winning version
        #
        #   @param is_ab_variation [Boolean]
        #
        #   @param test_id [String] The ID of the AB test.

        # Version of the email that should be sent if there are too few recipients to
        # conduct an AB test.
        #
        # @see HubspotSDK::Models::Marketing::PublicEmailTestingDetails#ab_sample_size_default
        module AbSampleSizeDefault
          extend HubspotSDK::Internal::Type::Enum

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
        # @see HubspotSDK::Models::Marketing::PublicEmailTestingDetails#ab_sampling_default
        module AbSamplingDefault
          extend HubspotSDK::Internal::Type::Enum

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
        # @see HubspotSDK::Models::Marketing::PublicEmailTestingDetails#ab_status
        module AbStatus
          extend HubspotSDK::Internal::Type::Enum

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
        # @see HubspotSDK::Models::Marketing::PublicEmailTestingDetails#ab_success_metric
        module AbSuccessMetric
          extend HubspotSDK::Internal::Type::Enum

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
