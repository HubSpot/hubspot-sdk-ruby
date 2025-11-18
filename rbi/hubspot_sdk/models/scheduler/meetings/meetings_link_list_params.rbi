# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        class MeetingsLinkListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Scheduler::Meetings::MeetingsLinkListParams,
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

          # Retrieve scheduling pages with a specified name.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Filter the response to scheduling pages created by the specified user.
          sig { returns(T.nilable(String)) }
          attr_reader :organizer_user_id

          sig { params(organizer_user_id: String).void }
          attr_writer :organizer_user_id

          # Filter the response to the specific type of meeting.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              after: String,
              limit: Integer,
              name: String,
              organizer_user_id: String,
              type: String,
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
            # Retrieve scheduling pages with a specified name.
            name: nil,
            # Filter the response to scheduling pages created by the specified user.
            organizer_user_id: nil,
            # Filter the response to the specific type of meeting.
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
                type: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
