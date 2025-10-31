# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ContentLanguageVariation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute archived_in_dashboard
        #
        #   @return [Boolean]
        required :archived_in_dashboard, HubspotSDK::Internal::Type::Boolean, api_name: :archivedInDashboard

        # @!attribute author_name
        #
        #   @return [String]
        required :author_name, String, api_name: :authorName

        # @!attribute campaign
        #
        #   @return [String]
        required :campaign, String

        # @!attribute created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute password
        #
        #   @return [String]
        required :password, String

        # @!attribute public_access_rules
        #
        #   @return [Array<Object>]
        required :public_access_rules,
                 HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :publicAccessRules

        # @!attribute public_access_rules_enabled
        #
        #   @return [Boolean]
        required :public_access_rules_enabled,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :publicAccessRulesEnabled

        # @!attribute publish_date
        #
        #   @return [Time]
        required :publish_date, Time, api_name: :publishDate

        # @!attribute slug
        #
        #   @return [String]
        required :slug, String

        # @!attribute state
        #
        #   @return [String]
        required :state, String

        # @!attribute updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute tag_ids
        #
        #   @return [Array<Integer>, nil]
        optional :tag_ids, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :tagIds

        # @!method initialize(id:, archived_in_dashboard:, author_name:, campaign:, created:, name:, password:, public_access_rules:, public_access_rules_enabled:, publish_date:, slug:, state:, updated:, tag_ids: nil)
        #   @param id [Integer]
        #   @param archived_in_dashboard [Boolean]
        #   @param author_name [String]
        #   @param campaign [String]
        #   @param created [Time]
        #   @param name [String]
        #   @param password [String]
        #   @param public_access_rules [Array<Object>]
        #   @param public_access_rules_enabled [Boolean]
        #   @param publish_date [Time]
        #   @param slug [String]
        #   @param state [String]
        #   @param updated [Time]
        #   @param tag_ids [Array<Integer>]
      end
    end
  end
end
