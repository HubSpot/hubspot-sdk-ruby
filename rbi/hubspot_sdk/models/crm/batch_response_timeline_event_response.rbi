# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchResponseTimelineEventResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchResponseTimelineEventResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The time the request was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        # Successfully created events.
        sig { returns(T::Array[HubspotSDK::Crm::TimelineEventResponse]) }
        attr_accessor :results

        # The time the request began processing.
        sig { returns(Time) }
        attr_accessor :started_at

        # The status of the batch response. Should always be COMPLETED if processed.
        sig do
          returns(
            HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status::OrSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The time the request occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        # The state of the batch event request.
        sig do
          params(
            completed_at: Time,
            results: T::Array[HubspotSDK::Crm::TimelineEventResponse::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The time the request was completed.
          completed_at:,
          # Successfully created events.
          results:,
          # The time the request began processing.
          started_at:,
          # The status of the batch response. Should always be COMPLETED if processed.
          status:,
          links: nil,
          # The time the request occurred.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubspotSDK::Crm::TimelineEventResponse],
              started_at: Time,
              status:
                HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status::OrSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the batch response. Should always be COMPLETED if processed.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status::TaggedSymbol
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
