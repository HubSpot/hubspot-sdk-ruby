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

        # The date and time when the batch operation was completed, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array of results from the batch operation, each representing a public
        # campaign with assets.
        sig do
          returns(T::Array[HubspotSDK::Marketing::PublicCampaignWithAssets])
        end
        attr_accessor :results

        # The date and time when the batch operation started, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
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

        # A map of link names to associated URIs that provide additional information about
        # the batch operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors encountered during the batch operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The date and time when the batch operation was requested, in ISO 8601 format.
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
          # The date and time when the batch operation was completed, in ISO 8601 format.
          completed_at:,
          # An array of results from the batch operation, each representing a public
          # campaign with assets.
          results:,
          # The date and time when the batch operation started, in ISO 8601 format.
          started_at:,
          # The current status of the batch operation. Valid values include 'PENDING',
          # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
          status:,
          # An array of errors encountered during the batch operation, each described by a
          # StandardError object.
          errors: nil,
          # A map of link names to associated URIs that provide additional information about
          # the batch operation.
          links: nil,
          # The number of errors encountered during the batch operation.
          num_errors: nil,
          # The date and time when the batch operation was requested, in ISO 8601 format.
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

        # The current status of the batch operation. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
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
