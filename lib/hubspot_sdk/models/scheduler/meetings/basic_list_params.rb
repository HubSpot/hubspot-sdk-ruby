# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubSpotSDK::Resources::Scheduler::Meetings::Basic#list
        class BasicListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute organizer_user_id
          #
          #   @return [String, nil]
          optional :organizer_user_id, String

          # @!attribute type
          #
          #   @return [Symbol, HubSpotSDK::Models::Scheduler::Meetings::BasicListParams::Type, nil]
          optional :type, enum: -> { HubSpotSDK::Scheduler::Meetings::BasicListParams::Type }

          # @!method initialize(after: nil, limit: nil, name: nil, organizer_user_id: nil, type: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Scheduler::Meetings::BasicListParams} for more details.
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param name [String]
          #
          #   @param organizer_user_id [String]
          #
          #   @param type [Symbol, HubSpotSDK::Models::Scheduler::Meetings::BasicListParams::Type]
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

          module Type
            extend HubSpotSDK::Internal::Type::Enum

            GROUP_CALENDAR = :GROUP_CALENDAR
            PERSONAL_LINK = :PERSONAL_LINK
            ROUND_ROBIN_CALENDAR = :ROUND_ROBIN_CALENDAR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
