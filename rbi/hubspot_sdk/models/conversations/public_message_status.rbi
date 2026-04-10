# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicMessageStatus < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicMessageStatus,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
          )
        end
        attr_accessor :status_type

        sig do
          returns(
            T.nilable(HubSpotSDK::Conversations::PublicMessageFailureDetails)
          )
        end
        attr_reader :failure_details

        sig do
          params(
            failure_details:
              HubSpotSDK::Conversations::PublicMessageFailureDetails::OrHash
          ).void
        end
        attr_writer :failure_details

        sig do
          params(
            status_type:
              HubSpotSDK::Conversations::PublicMessageStatus::StatusType::OrSymbol,
            failure_details:
              HubSpotSDK::Conversations::PublicMessageFailureDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(status_type:, failure_details: nil)
        end

        sig do
          override.returns(
            {
              status_type:
                HubSpotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol,
              failure_details:
                HubSpotSDK::Conversations::PublicMessageFailureDetails
            }
          )
        end
        def to_hash
        end

        module StatusType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::PublicMessageStatus::StatusType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FAILED =
            T.let(
              :FAILED,
              HubSpotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
            )
          READ =
            T.let(
              :READ,
              HubSpotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
            )
          RECEIVED =
            T.let(
              :RECEIVED,
              HubSpotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
            )
          SENT =
            T.let(
              :SENT,
              HubSpotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicMessageStatus::StatusType::TaggedSymbol
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
