# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      # @return [HubspotSDK::Resources::CRM::AppUninstalls]
      attr_reader :app_uninstalls

      # @return [HubspotSDK::Resources::CRM::Associations]
      attr_reader :associations

      # @return [HubspotSDK::Resources::CRM::Exports]
      attr_reader :exports

      # @return [HubspotSDK::Resources::CRM::Extensions]
      attr_reader :extensions

      # @return [HubspotSDK::Resources::CRM::FeatureFlags]
      attr_reader :feature_flags

      # @return [HubspotSDK::Resources::CRM::Imports]
      attr_reader :imports

      # @return [HubspotSDK::Resources::CRM::Limits]
      attr_reader :limits

      # @return [HubspotSDK::Resources::CRM::Lists]
      attr_reader :lists

      # @return [HubspotSDK::Resources::CRM::ObjectLibrary]
      attr_reader :object_library

      # @return [HubspotSDK::Resources::CRM::Objects]
      attr_reader :objects

      # @return [HubspotSDK::Resources::CRM::Owners]
      attr_reader :owners

      # @return [HubspotSDK::Resources::CRM::Pipelines]
      attr_reader :pipelines

      # @return [HubspotSDK::Resources::CRM::Properties]
      attr_reader :properties

      # @return [HubspotSDK::Resources::CRM::PropertyValidations]
      attr_reader :property_validations

      # @return [HubspotSDK::Resources::CRM::Timeline]
      attr_reader :timeline

      # @return [HubspotSDK::Resources::CRM::Users]
      attr_reader :users

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @app_uninstalls = HubspotSDK::Resources::CRM::AppUninstalls.new(client: client)
        @associations = HubspotSDK::Resources::CRM::Associations.new(client: client)
        @exports = HubspotSDK::Resources::CRM::Exports.new(client: client)
        @extensions = HubspotSDK::Resources::CRM::Extensions.new(client: client)
        @feature_flags = HubspotSDK::Resources::CRM::FeatureFlags.new(client: client)
        @imports = HubspotSDK::Resources::CRM::Imports.new(client: client)
        @limits = HubspotSDK::Resources::CRM::Limits.new(client: client)
        @lists = HubspotSDK::Resources::CRM::Lists.new(client: client)
        @object_library = HubspotSDK::Resources::CRM::ObjectLibrary.new(client: client)
        @objects = HubspotSDK::Resources::CRM::Objects.new(client: client)
        @owners = HubspotSDK::Resources::CRM::Owners.new(client: client)
        @pipelines = HubspotSDK::Resources::CRM::Pipelines.new(client: client)
        @properties = HubspotSDK::Resources::CRM::Properties.new(client: client)
        @property_validations = HubspotSDK::Resources::CRM::PropertyValidations.new(client: client)
        @timeline = HubspotSDK::Resources::CRM::Timeline.new(client: client)
        @users = HubspotSDK::Resources::CRM::Users.new(client: client)
      end
    end
  end
end
