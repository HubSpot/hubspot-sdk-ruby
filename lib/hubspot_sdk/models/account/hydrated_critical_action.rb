# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      # @see HubSpotSDK::Resources::Account::Activity#list_security_activities
      class HydratedCriticalAction < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The activity's unique ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time the activity took place.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute type
        #   The type of activity.
        #
        #   @return [Symbol, HubSpotSDK::Models::Account::HydratedCriticalAction::Type]
        required :type, enum: -> { HubSpotSDK::Account::HydratedCriticalAction::Type }

        # @!attribute user_id
        #   The user's unique ID.
        #
        #   @return [Integer]
        required :user_id, Integer, api_name: :userId

        # @!attribute acting_user
        #   Email address of the user associated with the activity.
        #
        #   @return [String, nil]
        optional :acting_user, String, api_name: :actingUser

        # @!attribute country_code
        #   The approximate country code
        #
        #   @return [String, nil]
        optional :country_code, String, api_name: :countryCode

        # @!attribute info_url
        #   A link to the URL where the action was taken in the account.
        #
        #   @return [String, nil]
        optional :info_url, String, api_name: :infoUrl

        # @!attribute ip_address
        #   IP address where the activity originated.
        #
        #   @return [String, nil]
        optional :ip_address, String, api_name: :ipAddress

        # @!attribute location
        #   The approximate location where the activity took place.
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute object_id_
        #   The ID of the affected object.
        #
        #   @return [String, nil]
        optional :object_id_, String, api_name: :objectId

        # @!attribute region_code
        #   The approximate region code
        #
        #   @return [String, nil]
        optional :region_code, String, api_name: :regionCode

        # @!method initialize(id:, created_at:, type:, user_id:, acting_user: nil, country_code: nil, info_url: nil, ip_address: nil, location: nil, object_id_: nil, region_code: nil)
        #   @param id [String] The activity's unique ID.
        #
        #   @param created_at [Time] The time the activity took place.
        #
        #   @param type [Symbol, HubSpotSDK::Models::Account::HydratedCriticalAction::Type] The type of activity.
        #
        #   @param user_id [Integer] The user's unique ID.
        #
        #   @param acting_user [String] Email address of the user associated with the activity.
        #
        #   @param country_code [String] The approximate country code
        #
        #   @param info_url [String] A link to the URL where the action was taken in the account.
        #
        #   @param ip_address [String] IP address where the activity originated.
        #
        #   @param location [String] The approximate location where the activity took place.
        #
        #   @param object_id_ [String] The ID of the affected object.
        #
        #   @param region_code [String] The approximate region code

        # The type of activity.
        #
        # @see HubSpotSDK::Models::Account::HydratedCriticalAction#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ACCEPTANCE_TEST = :ACCEPTANCE_TEST
          ACCOUNT_ADDED_TO_MULTI_ACCOUNT_ORGANIZATION = :ACCOUNT_ADDED_TO_MULTI_ACCOUNT_ORGANIZATION
          ACCOUNT_REMOVED_FROM_MULTI_ACCOUNT_ORGANIZATION = :ACCOUNT_REMOVED_FROM_MULTI_ACCOUNT_ORGANIZATION
          ADD_ADMIN_PERMISSIONS = :ADD_ADMIN_PERMISSIONS
          ADD_ADMIN_USER = :ADD_ADMIN_USER
          ADD_SINGLE_SIGN_ON = :ADD_SINGLE_SIGN_ON
          ADD_TWO_FACTOR_AUTHENTICATION = :ADD_TWO_FACTOR_AUTHENTICATION
          ADD_USER = :ADD_USER
          ADD_WEBHOOK_IN_WORKFLOW = :ADD_WEBHOOK_IN_WORKFLOW
          ALLOWED_GEOLOCATIONS_DISABLED = :ALLOWED_GEOLOCATIONS_DISABLED
          ALLOWED_GEOLOCATIONS_ENABLED = :ALLOWED_GEOLOCATIONS_ENABLED
          ALLOWED_LOGIN_METHODS_DELETE = :ALLOWED_LOGIN_METHODS_DELETE
          ALLOWED_LOGIN_METHODS_UPDATE = :ALLOWED_LOGIN_METHODS_UPDATE
          ATTACHMENT_LOGGING_DISABLED = :ATTACHMENT_LOGGING_DISABLED
          ATTACHMENT_LOGGING_ENABLED = :ATTACHMENT_LOGGING_ENABLED
          AUTOMATED_INACTIVE_USER_DEACTIVATION_DISABLED = :AUTOMATED_INACTIVE_USER_DEACTIVATION_DISABLED
          AUTOMATED_INACTIVE_USER_DEACTIVATION_ENABLED = :AUTOMATED_INACTIVE_USER_DEACTIVATION_ENABLED
          BOTS_WEBHOOK_POST = :BOTS_WEBHOOK_POST
          BOTS_WEBHOOK_UPDATE = :BOTS_WEBHOOK_UPDATE
          BOTS_WEBHOOK_VIEWED = :BOTS_WEBHOOK_VIEWED
          BULK_EMAIL_DOMAIN_CHANGE = :BULK_EMAIL_DOMAIN_CHANGE
          CHANGE_AD_EVENT_CONSENT_SETTING = :CHANGE_AD_EVENT_CONSENT_SETTING
          CHANGE_AD_EVENT_DATA_SHARING_SETTING = :CHANGE_AD_EVENT_DATA_SHARING_SETTING
          CHANGE_PASSWORD = :CHANGE_PASSWORD
          CONTACT_DATA_EXPORT = :CONTACT_DATA_EXPORT
          DATA_ACCESS_REQUEST_SUBMITTED = :DATA_ACCESS_REQUEST_SUBMITTED
          DATA_BACKUP_CREATED = :DATA_BACKUP_CREATED
          DATA_BACKUP_DOWNLOADED = :DATA_BACKUP_DOWNLOADED
          DATA_BACKUP_SCHEDULE_CREATED = :DATA_BACKUP_SCHEDULE_CREATED
          DATA_BACKUP_SCHEDULE_DELETED = :DATA_BACKUP_SCHEDULE_DELETED
          DATA_BACKUP_SCHEDULE_UPDATED = :DATA_BACKUP_SCHEDULE_UPDATED
          DATA_RESTORE_COMPLETED = :DATA_RESTORE_COMPLETED
          DATA_SHARING_CONNECTION_ADDED = :DATA_SHARING_CONNECTION_ADDED
          DATA_SHARING_CONNECTION_REMOVED = :DATA_SHARING_CONNECTION_REMOVED
          DATASET_SYNC = :DATASET_SYNC
          DEACTIVATE_USER = :DEACTIVATE_USER
          DOMAIN_BASED_INVITE_CREATED = :DOMAIN_BASED_INVITE_CREATED
          DOMAIN_BASED_INVITE_REMOVED = :DOMAIN_BASED_INVITE_REMOVED
          DOMAIN_BASED_INVITES_DISABLED = :DOMAIN_BASED_INVITES_DISABLED
          DOMAIN_BASED_INVITES_ENABLED = :DOMAIN_BASED_INVITES_ENABLED
          EMAIL_TRACKING_DISABLED = :EMAIL_TRACKING_DISABLED
          EMAIL_TRACKING_ENABLED = :EMAIL_TRACKING_ENABLED
          EXPORT = :EXPORT
          EXPORT_APPROVAL = :EXPORT_APPROVAL
          EXPORT_DOWNLOAD = :EXPORT_DOWNLOAD
          EXPORT_USERS = :EXPORT_USERS
          FORM_SUBMISSIONS_EXPORT = :FORM_SUBMISSIONS_EXPORT
          GDPR_DELETE = :GDPR_DELETE
          GDPR_TOGGLE_DISABLED = :GDPR_TOGGLE_DISABLED
          GDPR_TOGGLE_ENABLED = :GDPR_TOGGLE_ENABLED
          HAPIKEY_CREATE = :HAPIKEY_CREATE
          HAPIKEY_DEACTIVATE = :HAPIKEY_DEACTIVATE
          HAPIKEY_VIEW = :HAPIKEY_VIEW
          HUBSPOT_EMPLOYEE_ACCESS_DISABLED = :HUBSPOT_EMPLOYEE_ACCESS_DISABLED
          HUBSPOT_EMPLOYEE_ACCESS_ENABLED = :HUBSPOT_EMPLOYEE_ACCESS_ENABLED
          IMPERSONATE_USER = :IMPERSONATE_USER
          IMPORT = :IMPORT
          INSTALL_INTEGRATION = :INSTALL_INTEGRATION
          IP_RESTRICTIONS_DISABLED = :IP_RESTRICTIONS_DISABLED
          IP_RESTRICTIONS_ENABLED = :IP_RESTRICTIONS_ENABLED
          JOINED_PORTAL_VIA_DOMAIN_BASED_INVITE = :JOINED_PORTAL_VIA_DOMAIN_BASED_INVITE
          LEGAL_BASIS_REQUIREMENT_DISABLED = :LEGAL_BASIS_REQUIREMENT_DISABLED
          LEGAL_BASIS_REQUIREMENT_ENABLED = :LEGAL_BASIS_REQUIREMENT_ENABLED
          MANUAL_PASSWORD_RESET_EMAIL_SEND = :MANUAL_PASSWORD_RESET_EMAIL_SEND
          MANUAL_REGISTRATION_EMAIL_SEND = :MANUAL_REGISTRATION_EMAIL_SEND
          MARKETING_CONTACTS_APP_SETTINGS_DISABLED = :MARKETING_CONTACTS_APP_SETTINGS_DISABLED
          MARKETING_CONTACTS_APP_SETTINGS_ENABLED = :MARKETING_CONTACTS_APP_SETTINGS_ENABLED
          MERGE_REVERT = :MERGE_REVERT
          MODIFY_WEBHOOK_IN_WORKFLOW = :MODIFY_WEBHOOK_IN_WORKFLOW
          MULTI_ACCOUNT_REPORTING_CONNECTION_ADDED = :MULTI_ACCOUNT_REPORTING_CONNECTION_ADDED
          MULTI_ACCOUNT_REPORTING_CONNECTION_REMOVED = :MULTI_ACCOUNT_REPORTING_CONNECTION_REMOVED
          MULTI_ACCOUNT_WORKFLOWS_CONNECTION_ADDED = :MULTI_ACCOUNT_WORKFLOWS_CONNECTION_ADDED
          MULTI_ACCOUNT_WORKFLOWS_CONNECTION_REMOVED = :MULTI_ACCOUNT_WORKFLOWS_CONNECTION_REMOVED
          NEVER_LOG_FOR_PORTAL_ADDITION = :NEVER_LOG_FOR_PORTAL_ADDITION
          NEVER_LOG_FOR_PORTAL_DELETION = :NEVER_LOG_FOR_PORTAL_DELETION
          NEVER_LOG_FOR_USER_ADDITION = :NEVER_LOG_FOR_USER_ADDITION
          NEVER_LOG_FOR_USER_DELETION = :NEVER_LOG_FOR_USER_DELETION
          PASSKEY_ADDED = :PASSKEY_ADDED
          PASSKEY_DELETED = :PASSKEY_DELETED
          PAYMENT_ACCOUNT_CREATION = :PAYMENT_ACCOUNT_CREATION
          PAYMENT_ACCOUNT_INFO_UPDATE = :PAYMENT_ACCOUNT_INFO_UPDATE
          PAYMENT_BANK_ACCOUNT_CHANGE = :PAYMENT_BANK_ACCOUNT_CHANGE
          PAYMENT_ONBOARDING_LINK_SEND = :PAYMENT_ONBOARDING_LINK_SEND
          PERSONAL_ACCESS_KEY_CREATE = :PERSONAL_ACCESS_KEY_CREATE
          PERSONAL_ACCESS_KEY_DEACTIVATE = :PERSONAL_ACCESS_KEY_DEACTIVATE
          PERSONAL_ACCESS_KEY_ROTATE = :PERSONAL_ACCESS_KEY_ROTATE
          PERSONAL_ACCESS_KEY_VIEW = :PERSONAL_ACCESS_KEY_VIEW
          PRIVATE_APP_ACCESS_TOKEN_CREATE = :PRIVATE_APP_ACCESS_TOKEN_CREATE
          PRIVATE_APP_ACCESS_TOKEN_DEACTIVATE = :PRIVATE_APP_ACCESS_TOKEN_DEACTIVATE
          PRIVATE_APP_ACCESS_TOKEN_ROTATE = :PRIVATE_APP_ACCESS_TOKEN_ROTATE
          PRIVATE_APP_ACCESS_TOKEN_VIEW = :PRIVATE_APP_ACCESS_TOKEN_VIEW
          PRIVATE_APP_CLIENT_SECRET_VIEW = :PRIVATE_APP_CLIENT_SECRET_VIEW
          PRIVATE_APP_CLIENT_SECRET_WRITE = :PRIVATE_APP_CLIENT_SECRET_WRITE
          PRIVATE_APP_SCOPE_GROUPS_UPDATE = :PRIVATE_APP_SCOPE_GROUPS_UPDATE
          PRODUCTION_DEPLOYMENT = :PRODUCTION_DEPLOYMENT
          PROPERTY_HISTORY_REVISION = :PROPERTY_HISTORY_REVISION
          PUBLIC_APP_CLIENT_SECRET_VIEW = :PUBLIC_APP_CLIENT_SECRET_VIEW
          PUBLIC_APP_CLIENT_SECRET_WRITE = :PUBLIC_APP_CLIENT_SECRET_WRITE
          REACTIVATE_USER = :REACTIVATE_USER
          REMOVE_ADMIN_PERMISSIONS = :REMOVE_ADMIN_PERMISSIONS
          REMOVE_ADMIN_USER = :REMOVE_ADMIN_USER
          REMOVE_SINGLE_SIGN_ON = :REMOVE_SINGLE_SIGN_ON
          REMOVE_TWO_FACTOR_AUTHENTICATION = :REMOVE_TWO_FACTOR_AUTHENTICATION
          REMOVE_USER = :REMOVE_USER
          REQUIRE_SINGLE_SIGN_ON = :REQUIRE_SINGLE_SIGN_ON
          RESTRICTED_LIST_ADDED_TO_CONTENT = :RESTRICTED_LIST_ADDED_TO_CONTENT
          SANDBOX_CREATION = :SANDBOX_CREATION
          SANDBOX_DELETION = :SANDBOX_DELETION
          SANDBOX_SYNC = :SANDBOX_SYNC
          SANDBOX_SYNC_TO_PRODUCTION = :SANDBOX_SYNC_TO_PRODUCTION
          SECRET_ADDED_TO_SERVERLESS_FUNCTION = :SECRET_ADDED_TO_SERVERLESS_FUNCTION
          SENSITIVE_DATA_DISABLED = :SENSITIVE_DATA_DISABLED
          SENSITIVE_DATA_ENABLED = :SENSITIVE_DATA_ENABLED
          SEQUENCE_CLONED = :SEQUENCE_CLONED
          SEQUENCE_CREATED = :SEQUENCE_CREATED
          SEQUENCE_ENROLLMENT_INITIATED = :SEQUENCE_ENROLLMENT_INITIATED
          SEQUENCE_ENROLLMENT_STATE_CHANGED = :SEQUENCE_ENROLLMENT_STATE_CHANGED
          SEQUENCE_MODIFIED = :SEQUENCE_MODIFIED
          SERVICE_KEY_CREATE = :SERVICE_KEY_CREATE
          SERVICE_KEY_DEACTIVATE = :SERVICE_KEY_DEACTIVATE
          SERVICE_KEY_PERMISSIONS_UPDATE = :SERVICE_KEY_PERMISSIONS_UPDATE
          SERVICE_KEY_REVEAL = :SERVICE_KEY_REVEAL
          SERVICE_KEY_ROTATE = :SERVICE_KEY_ROTATE
          SMTP_TOKEN_CREATED = :SMTP_TOKEN_CREATED
          SMTP_TOKEN_DELETED = :SMTP_TOKEN_DELETED
          SMTP_TOKEN_PASSWORD_RESET = :SMTP_TOKEN_PASSWORD_RESET
          SMTP_TOKEN_RETRIEVED = :SMTP_TOKEN_RETRIEVED
          TEAM_ADDED = :TEAM_ADDED
          TEAM_DELETED = :TEAM_DELETED
          TEAM_USER_ADDED = :TEAM_USER_ADDED
          TEAM_USER_DELETED = :TEAM_USER_DELETED
          TEMPLATE_MODIFIED = :TEMPLATE_MODIFIED
          TOUCHLESS_PURCHASE = :TOUCHLESS_PURCHASE
          UNIFIED_RESTORE_UNDO_EXECUTION = :UNIFIED_RESTORE_UNDO_EXECUTION
          UNINSTALL_INTEGRATION = :UNINSTALL_INTEGRATION
          UNREQUIRE_SINGLE_SIGN_ON = :UNREQUIRE_SINGLE_SIGN_ON
          WEBHOOK_SETTINGS_UPDATE = :WEBHOOK_SETTINGS_UPDATE
          WEBHOOK_SUBSCRIPTION_CREATE = :WEBHOOK_SUBSCRIPTION_CREATE
          WEBHOOK_SUBSCRIPTION_UPDATE = :WEBHOOK_SUBSCRIPTION_UPDATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
