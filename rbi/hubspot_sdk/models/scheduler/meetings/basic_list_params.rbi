# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        class BasicListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Scheduler::Meetings::BasicListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :organizer_user_id

          sig { params(organizer_user_id: String).void }
          attr_writer :organizer_user_id

          sig do
            returns(
              T.nilable(
                HubspotSDK::Scheduler::Meetings::BasicListParams::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                HubspotSDK::Scheduler::Meetings::BasicListParams::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              after: String,
              limit: Integer,
              name: String,
              organizer_user_id: String,
              type:
                HubspotSDK::Scheduler::Meetings::BasicListParams::Type::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # The maximum number of results to display per page.
            limit: nil,
            name: nil,
            organizer_user_id: nil,
            type: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                limit: Integer,
                name: String,
                organizer_user_id: String,
                type:
                  HubspotSDK::Scheduler::Meetings::BasicListParams::Type::OrSymbol,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Type
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Scheduler::Meetings::BasicListParams::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GROUP_CALENDAR =
              T.let(
                :GROUP_CALENDAR,
                HubspotSDK::Scheduler::Meetings::BasicListParams::Type::TaggedSymbol
              )
            PERSONAL_LINK =
              T.let(
                :PERSONAL_LINK,
                HubspotSDK::Scheduler::Meetings::BasicListParams::Type::TaggedSymbol
              )
            ROUND_ROBIN_CALENDAR =
              T.let(
                :ROUND_ROBIN_CALENDAR,
                HubspotSDK::Scheduler::Meetings::BasicListParams::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Scheduler::Meetings::BasicListParams::Type::TaggedSymbol
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
end
