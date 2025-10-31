# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicMessageStatus < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicMessageStatus,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
          )
        end
        attr_accessor :status_type

        sig do
          returns(
            T.nilable(HubspotSDK::Conversations::PublicMessageFailureDetails)
          )
        end
        attr_reader :failure_details

        sig do
          params(
            failure_details:
              HubspotSDK::Conversations::PublicMessageFailureDetails::OrHash
          ).void
        end
        attr_writer :failure_details

        sig do
          params(
            status_type:
              HubspotSDK::Conversations::PublicMessageStatus::StatusType::OrSymbol,
            failure_details:
              HubspotSDK::Conversations::PublicMessageFailureDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(status_type:, failure_details: nil)
        end

        sig do
          override.returns(
            {
              status_type:
                HubspotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol,
              failure_details:
                HubspotSDK::Conversations::PublicMessageFailureDetails
            }
          )
        end
        def to_hash
        end

        module StatusType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicMessageStatus::StatusType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SENT =
            T.let(
              :SENT,
              HubspotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubspotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
            )
          RECEIVED =
            T.let(
              :RECEIVED,
              HubspotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
            )
          READ =
            T.let(
              :READ,
              HubspotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
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
