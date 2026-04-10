# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaign < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchResponsePublicCampaign,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch operation was completed, formatted as a
        # date-time string.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array of results from the batch operation, each item representing a public
        # campaign.
        sig { returns(T::Array[HubSpotSDK::Marketing::PublicCampaign]) }
        attr_accessor :results

        # The date and time when the batch operation started, formatted as a date-time
        # string.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        sig do
          returns(
            HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A map of related links associated with the batch operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The date and time when the batch operation was requested, formatted as a
        # date-time string.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubSpotSDK::Marketing::PublicCampaign::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch operation was completed, formatted as a
          # date-time string.
          completed_at:,
          # An array of results from the batch operation, each item representing a public
          # campaign.
          results:,
          # The date and time when the batch operation started, formatted as a date-time
          # string.
          started_at:,
          # The current status of the batch operation, with possible values: CANCELED,
          # COMPLETE, PENDING, PROCESSING.
          status:,
          # A map of related links associated with the batch operation.
          links: nil,
          # The date and time when the batch operation was requested, formatted as a
          # date-time string.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubSpotSDK::Marketing::PublicCampaign],
              started_at: Time,
              status:
                HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status::TaggedSymbol
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
