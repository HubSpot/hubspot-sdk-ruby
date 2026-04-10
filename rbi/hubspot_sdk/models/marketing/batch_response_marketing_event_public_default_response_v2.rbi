# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchResponseMarketingEventPublicDefaultResponseV2 < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Timestamp of when the request was processed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig do
          returns(
            T::Array[
              HubSpotSDK::Marketing::MarketingEventPublicDefaultResponseV2
            ]
          )
        end
        attr_accessor :results

        # Timestamp of when the request started processing.
        sig { returns(Time) }
        attr_accessor :started_at

        # The status of the response.
        sig do
          returns(
            HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Result object of the request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # Timestamp of when the request was sent.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[
                HubSpotSDK::Marketing::MarketingEventPublicDefaultResponseV2::OrHash
              ],
            started_at: Time,
            status:
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp of when the request was processed.
          completed_at:,
          results:,
          # Timestamp of when the request started processing.
          started_at:,
          # The status of the response.
          status:,
          # Result object of the request.
          links: nil,
          # Timestamp of when the request was sent.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results:
                T::Array[
                  HubSpotSDK::Marketing::MarketingEventPublicDefaultResponseV2
                ],
              started_at: Time,
              status:
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the response.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status::TaggedSymbol
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
