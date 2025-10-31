# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicThreadUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicThreadUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether this thread is archived. Set to false to restore the thread.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # The thread's status: `OPEN` or `CLOSED`.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            archived: T::Boolean,
            status:
              HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether this thread is archived. Set to false to restore the thread.
          archived: nil,
          # The thread's status: `OPEN` or `CLOSED`.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              status:
                HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The thread's status: `OPEN` or `CLOSED`.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicThreadUpdateRequest::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :OPEN,
              HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::TaggedSymbol
            )
          CLOSED =
            T.let(
              :CLOSED,
              HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::TaggedSymbol
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
