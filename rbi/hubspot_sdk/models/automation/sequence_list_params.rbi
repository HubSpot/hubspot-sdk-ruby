# typed: strong

module HubspotSDK
  module Models
    module Automation
      class SequenceListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::SequenceListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the user whose sequences are to be retrieved. This
        # parameter is required.
        sig { returns(String) }
        attr_accessor :user_id

        # The paging cursor token of the last successfully read resource. Use this for
        # pagination to retrieve the next set of results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The name of the sequence to filter results by.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            user_id: String,
            after: String,
            limit: Integer,
            name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the user whose sequences are to be retrieved. This
          # parameter is required.
          user_id:,
          # The paging cursor token of the last successfully read resource. Use this for
          # pagination to retrieve the next set of results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # The name of the sequence to filter results by.
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              user_id: String,
              after: String,
              limit: Integer,
              name: String,
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
