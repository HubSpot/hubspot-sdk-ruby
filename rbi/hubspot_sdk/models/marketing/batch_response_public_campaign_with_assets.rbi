# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponsePublicCampaignWithAssets < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The timestamp when the batch request processing was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array of results from the batch operation, each representing a public
        # campaign with assets.
        sig do
          returns(T::Array[HubSpotSDK::Marketing::PublicCampaignWithAssets])
        end
        attr_accessor :results

        # The timestamp when the processing of the batch request began.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current processing status of the batch operation, with possible values:
        # CANCELED, COMPLETE, PENDING, PROCESSING.
        sig do
          returns(
            HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A collection of URLs linking to related resources or documentation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The timestamp when the batch request was initially made.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[HubSpotSDK::Marketing::PublicCampaignWithAssets::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::OrSymbol,
            links: T::Hash[Symbol, String],
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
          # A collection of URLs linking to related resources or documentation.
          links: nil,
          # The timestamp when the batch request was initially made.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results:
                T::Array[HubSpotSDK::Marketing::PublicCampaignWithAssets],
              started_at: Time,
              status:
                HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current processing status of the batch operation, with possible values:
        # CANCELED, COMPLETE, PENDING, PROCESSING.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status::TaggedSymbol
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
