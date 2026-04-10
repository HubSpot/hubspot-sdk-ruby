# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaignWithErrors < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubSpotSDK::Marketing::PublicCampaign]) }
        attr_accessor :results

        # The date and time when the batch operation began.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation. Accepted values are: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        sig do
          returns(
            HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # URLs linking to resources or documentation related to the batch operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The total number of errors encountered during the batch operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The date and time when the batch request was made.
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
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch operation was completed.
          completed_at:,
          results:,
          # The date and time when the batch operation began.
          started_at:,
          # The current status of the batch operation. Accepted values are: CANCELED,
          # COMPLETE, PENDING, PROCESSING.
          status:,
          errors: nil,
          # URLs linking to resources or documentation related to the batch operation.
          links: nil,
          # The total number of errors encountered during the batch operation.
          num_errors: nil,
          # The date and time when the batch request was made.
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
                HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status::OrSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation. Accepted values are: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::BatchResponsePublicCampaignWithErrors::Status::TaggedSymbol
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
