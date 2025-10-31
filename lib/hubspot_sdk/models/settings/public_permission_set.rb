# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class PublicPermissionSet < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The role's unique ID
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The role's name
        #
        #   @return [String]
        required :name, String

        # @!attribute requires_billing_write
        #   Whether this role has a paid seat and requires the billing-write scope to
        #   assign/unassign to users
        #
        #   @return [Boolean]
        required :requires_billing_write, HubspotSDK::Internal::Type::Boolean, api_name: :requiresBillingWrite

        # @!method initialize(id:, name:, requires_billing_write:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Settings::PublicPermissionSet} for more details.
        #
        #   A role that can be assigned to a user
        #
        #   @param id [String] The role's unique ID
        #
        #   @param name [String] The role's name
        #
        #   @param requires_billing_write [Boolean] Whether this role has a paid seat and requires the billing-write scope to assign
      end
    end
  end
end
