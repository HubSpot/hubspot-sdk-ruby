# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ThreadListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ThreadListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(Integer)) }
        attr_reader :associated_contact_id

        sig { params(associated_contact_id: Integer).void }
        attr_writer :associated_contact_id

        sig do
          returns(
            T.nilable(
              T::Array[
                HubspotSDK::Conversations::ThreadListParams::Association::OrSymbol
              ]
            )
          )
        end
        attr_reader :association

        sig do
          params(
            association:
              T::Array[
                HubspotSDK::Conversations::ThreadListParams::Association::OrSymbol
              ]
          ).void
        end
        attr_writer :association

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :inbox_id

        sig { params(inbox_id: T::Array[Integer]).void }
        attr_writer :inbox_id

        sig { returns(T.nilable(Time)) }
        attr_reader :latest_message_timestamp_after

        sig { params(latest_message_timestamp_after: Time).void }
        attr_writer :latest_message_timestamp_after

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(String)) }
        attr_reader :property

        sig { params(property: String).void }
        attr_writer :property

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig { returns(T.nilable(String)) }
        attr_reader :thread_status

        sig { params(thread_status: String).void }
        attr_writer :thread_status

        sig do
          params(
            after: String,
            archived: T::Boolean,
            associated_contact_id: Integer,
            association:
              T::Array[
                HubspotSDK::Conversations::ThreadListParams::Association::OrSymbol
              ],
            inbox_id: T::Array[Integer],
            latest_message_timestamp_after: Time,
            limit: Integer,
            property: String,
            sort: T::Array[String],
            thread_status: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          after: nil,
          archived: nil,
          associated_contact_id: nil,
          association: nil,
          inbox_id: nil,
          latest_message_timestamp_after: nil,
          limit: nil,
          property: nil,
          sort: nil,
          thread_status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              archived: T::Boolean,
              associated_contact_id: Integer,
              association:
                T::Array[
                  HubspotSDK::Conversations::ThreadListParams::Association::OrSymbol
                ],
              inbox_id: T::Array[Integer],
              latest_message_timestamp_after: Time,
              limit: Integer,
              property: String,
              sort: T::Array[String],
              thread_status: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Association
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::ThreadListParams::Association
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TICKET =
            T.let(
              :TICKET,
              HubspotSDK::Conversations::ThreadListParams::Association::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ThreadListParams::Association::TaggedSymbol
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
