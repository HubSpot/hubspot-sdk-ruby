# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ScopeMapping < HubspotSDK::Internal::Type::BaseModel
        # @!attribute access_level
        #
        #   @return [String]
        required :access_level, String, api_name: :accessLevel

        # @!attribute request_action
        #
        #   @return [String]
        required :request_action, String, api_name: :requestAction

        # @!attribute scope_name
        #
        #   @return [String]
        required :scope_name, String, api_name: :scopeName

        # @!method initialize(access_level:, request_action:, scope_name:)
        #   @param access_level [String]
        #   @param request_action [String]
        #   @param scope_name [String]
      end
    end
  end
end
