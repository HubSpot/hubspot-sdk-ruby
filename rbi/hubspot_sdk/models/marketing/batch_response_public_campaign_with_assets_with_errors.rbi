# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaignWithAssetsWithErrors < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig do
          returns(T::Array[HubspotSDK::Marketing::PublicCampaignWithAssets])
        end
        attr_accessor :results

        # The date and time when the batch operation started.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, which can be CANCELED, COMPLETE,
        # PENDING, or PROCESSING.
        sig do
          returns(
            HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A collection of links related to the batch operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors that occurred during the batch operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The date and time when the batch operation was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[HubspotSDK::Marketing::PublicCampaignWithAssets::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch operation was completed.
          completed_at:,
          results:,
          # The date and time when the batch operation started.
          started_at:,
          # The current status of the batch operation, which can be CANCELED, COMPLETE,
          # PENDING, or PROCESSING.
          status:,
          errors: nil,
          # A collection of links related to the batch operation.
          links: nil,
          # The number of errors that occurred during the batch operation.
          num_errors: nil,
          # The date and time when the batch operation was requested.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results:
                T::Array[HubspotSDK::Marketing::PublicCampaignWithAssets],
              started_at: Time,
              status:
                HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status::OrSymbol,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, which can be CANCELED, COMPLETE,
        # PENDING, or PROCESSING.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssetsWithErrors::Status::TaggedSymbol
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
