# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaignWithAssets < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The timestamp when the batch request processing was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array of results from the batch operation, each representing a public
        # campaign with assets.
        sig do
          returns(T::Array[HubspotSDK::Marketing::PublicCampaignWithAssets])
        end
        attr_accessor :results

        # The timestamp when the processing of the batch request began.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current processing status of the batch operation, with possible values:
        # CANCELED, COMPLETE, PENDING, PROCESSING.
        sig do
          returns(
            HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # An array of errors encountered during the batch operation, each described by a
        # StandardError object.
        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A collection of URLs linking to related resources or documentation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors encountered during the batch operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The timestamp when the batch request was initially made.
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
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp when the batch request processing was completed.
          completed_at:,
          # An array of results from the batch operation, each representing a public
          # campaign with assets.
          results:,
          # The timestamp when the processing of the batch request began.
          started_at:,
          # The current processing status of the batch operation, with possible values:
          # CANCELED, COMPLETE, PENDING, PROCESSING.
          status:,
          # An array of errors encountered during the batch operation, each described by a
          # StandardError object.
          errors: nil,
          # A collection of URLs linking to related resources or documentation.
          links: nil,
          # The number of errors encountered during the batch operation.
          num_errors: nil,
          # The timestamp when the batch request was initially made.
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
                HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current processing status of the batch operation, with possible values:
        # CANCELED, COMPLETE, PENDING, PROCESSING.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
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
