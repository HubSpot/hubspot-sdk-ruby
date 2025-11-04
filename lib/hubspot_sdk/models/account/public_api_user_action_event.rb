# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account::Activity#list_audit_logs
      class PublicAPIUserActionEvent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the activity.
        #
        #   @return [String]
        required :id, String

        # @!attribute acting_user
        #
        #   @return [HubspotSDK::Models::Account::ActingUser]
        required :acting_user, -> { HubspotSDK::Account::ActingUser }, api_name: :actingUser

        # @!attribute action
        #   The type of action taken.
        #
        #   @return [String]
        required :action, String

        # @!attribute category
        #   The category of the activity.
        #
        #   @return [String]
        required :category, String

        # @!attribute occurred_at
        #   The time that the action occurred at.
        #
        #   @return [Time]
        required :occurred_at, Time, api_name: :occurredAt

        # @!attribute sub_category
        #   The subcategory of the activity.
        #
        #   @return [String, nil]
        optional :sub_category, String, api_name: :subCategory

        # @!attribute target_object_id
        #   The ID of the impacted object.
        #
        #   @return [String, nil]
        optional :target_object_id, String, api_name: :targetObjectId

        # @!method initialize(id:, acting_user:, action:, category:, occurred_at:, sub_category: nil, target_object_id: nil)
        #   @param id [String] The unique ID of the activity.
        #
        #   @param acting_user [HubspotSDK::Models::Account::ActingUser]
        #
        #   @param action [String] The type of action taken.
        #
        #   @param category [String] The category of the activity.
        #
        #   @param occurred_at [Time] The time that the action occurred at.
        #
        #   @param sub_category [String] The subcategory of the activity.
        #
        #   @param target_object_id [String] The ID of the impacted object.
      end
    end
  end
end
