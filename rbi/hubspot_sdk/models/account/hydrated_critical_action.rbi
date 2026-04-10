# typed: strong

module HubSpotSDK
  module Models
    module Account
      class HydratedCriticalAction < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Account::HydratedCriticalAction,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The activity's unique ID.
        sig { returns(String) }
        attr_accessor :id

        # The time the activity took place.
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of activity.
        sig do
          returns(
            HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The user's unique ID.
        sig { returns(Integer) }
        attr_accessor :user_id

        # Email address of the user associated with the activity.
        sig { returns(T.nilable(String)) }
        attr_reader :acting_user

        sig { params(acting_user: String).void }
        attr_writer :acting_user

        # The approximate country code
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # A link to the URL where the action was taken in the account.
        sig { returns(T.nilable(String)) }
        attr_reader :info_url

        sig { params(info_url: String).void }
        attr_writer :info_url

        # IP address where the activity originated.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        # The approximate location where the activity took place.
        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        # The ID of the affected object.
        sig { returns(T.nilable(String)) }
        attr_reader :object_id_

        sig { params(object_id_: String).void }
        attr_writer :object_id_

        # The approximate region code
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        sig do
          params(
            id: String,
            created_at: Time,
            type: HubSpotSDK::Account::HydratedCriticalAction::Type::OrSymbol,
            user_id: Integer,
            acting_user: String,
            country_code: String,
            info_url: String,
            ip_address: String,
            location: String,
            object_id_: String,
            region_code: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The activity's unique ID.
          id:,
          # The time the activity took place.
          created_at:,
          # The type of activity.
          type:,
          # The user's unique ID.
          user_id:,
          # Email address of the user associated with the activity.
          acting_user: nil,
          # The approximate country code
          country_code: nil,
          # A link to the URL where the action was taken in the account.
          info_url: nil,
          # IP address where the activity originated.
          ip_address: nil,
          # The approximate location where the activity took place.
          location: nil,
          # The ID of the affected object.
          object_id_: nil,
          # The approximate region code
          region_code: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              type:
                HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol,
              user_id: Integer,
              acting_user: String,
              country_code: String,
              info_url: String,
              ip_address: String,
              location: String,
              object_id_: String,
              region_code: String
            }
          )
        end
        def to_hash
        end

        # The type of activity.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Account::HydratedCriticalAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ACCOUNT_ADDED_TO_MULTI_ACCOUNT_ORGANIZATION =
            T.let(
              :ACCOUNT_ADDED_TO_MULTI_ACCOUNT_ORGANIZATION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ACCOUNT_REMOVED_FROM_MULTI_ACCOUNT_ORGANIZATION =
            T.let(
              :ACCOUNT_REMOVED_FROM_MULTI_ACCOUNT_ORGANIZATION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_ADMIN_PERMISSIONS =
            T.let(
              :ADD_ADMIN_PERMISSIONS,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_ADMIN_USER =
            T.let(
              :ADD_ADMIN_USER,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_SINGLE_SIGN_ON =
            T.let(
              :ADD_SINGLE_SIGN_ON,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_TWO_FACTOR_AUTHENTICATION =
            T.let(
              :ADD_TWO_FACTOR_AUTHENTICATION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_USER =
            T.let(
              :ADD_USER,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_WEBHOOK_IN_WORKFLOW =
            T.let(
              :ADD_WEBHOOK_IN_WORKFLOW,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ALLOWED_GEOLOCATIONS_DISABLED =
            T.let(
              :ALLOWED_GEOLOCATIONS_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ALLOWED_GEOLOCATIONS_ENABLED =
            T.let(
              :ALLOWED_GEOLOCATIONS_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ALLOWED_LOGIN_METHODS_DELETE =
            T.let(
              :ALLOWED_LOGIN_METHODS_DELETE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ALLOWED_LOGIN_METHODS_UPDATE =
            T.let(
              :ALLOWED_LOGIN_METHODS_UPDATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ATTACHMENT_LOGGING_DISABLED =
            T.let(
              :ATTACHMENT_LOGGING_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ATTACHMENT_LOGGING_ENABLED =
            T.let(
              :ATTACHMENT_LOGGING_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          AUTOMATED_INACTIVE_USER_DEACTIVATION_DISABLED =
            T.let(
              :AUTOMATED_INACTIVE_USER_DEACTIVATION_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          AUTOMATED_INACTIVE_USER_DEACTIVATION_ENABLED =
            T.let(
              :AUTOMATED_INACTIVE_USER_DEACTIVATION_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          BOTS_WEBHOOK_POST =
            T.let(
              :BOTS_WEBHOOK_POST,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          BOTS_WEBHOOK_UPDATE =
            T.let(
              :BOTS_WEBHOOK_UPDATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          BOTS_WEBHOOK_VIEWED =
            T.let(
              :BOTS_WEBHOOK_VIEWED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          BULK_EMAIL_DOMAIN_CHANGE =
            T.let(
              :BULK_EMAIL_DOMAIN_CHANGE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          CHANGE_AD_EVENT_CONSENT_SETTING =
            T.let(
              :CHANGE_AD_EVENT_CONSENT_SETTING,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          CHANGE_AD_EVENT_DATA_SHARING_SETTING =
            T.let(
              :CHANGE_AD_EVENT_DATA_SHARING_SETTING,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          CHANGE_PASSWORD =
            T.let(
              :CHANGE_PASSWORD,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          CONTACT_DATA_EXPORT =
            T.let(
              :CONTACT_DATA_EXPORT,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_ACCESS_REQUEST_SUBMITTED =
            T.let(
              :DATA_ACCESS_REQUEST_SUBMITTED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_CREATED =
            T.let(
              :DATA_BACKUP_CREATED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_DOWNLOADED =
            T.let(
              :DATA_BACKUP_DOWNLOADED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_SCHEDULE_CREATED =
            T.let(
              :DATA_BACKUP_SCHEDULE_CREATED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_SCHEDULE_DELETED =
            T.let(
              :DATA_BACKUP_SCHEDULE_DELETED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_SCHEDULE_UPDATED =
            T.let(
              :DATA_BACKUP_SCHEDULE_UPDATED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_RESTORE_COMPLETED =
            T.let(
              :DATA_RESTORE_COMPLETED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_SHARING_CONNECTION_ADDED =
            T.let(
              :DATA_SHARING_CONNECTION_ADDED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_SHARING_CONNECTION_REMOVED =
            T.let(
              :DATA_SHARING_CONNECTION_REMOVED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATASET_SYNC =
            T.let(
              :DATASET_SYNC,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DEACTIVATE_USER =
            T.let(
              :DEACTIVATE_USER,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DOMAIN_BASED_INVITE_CREATED =
            T.let(
              :DOMAIN_BASED_INVITE_CREATED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DOMAIN_BASED_INVITE_REMOVED =
            T.let(
              :DOMAIN_BASED_INVITE_REMOVED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DOMAIN_BASED_INVITES_DISABLED =
            T.let(
              :DOMAIN_BASED_INVITES_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DOMAIN_BASED_INVITES_ENABLED =
            T.let(
              :DOMAIN_BASED_INVITES_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EMAIL_TRACKING_DISABLED =
            T.let(
              :EMAIL_TRACKING_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EMAIL_TRACKING_ENABLED =
            T.let(
              :EMAIL_TRACKING_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EXPORT_APPROVAL =
            T.let(
              :EXPORT_APPROVAL,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EXPORT_DOWNLOAD =
            T.let(
              :EXPORT_DOWNLOAD,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EXPORT_USERS =
            T.let(
              :EXPORT_USERS,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          FORM_SUBMISSIONS_EXPORT =
            T.let(
              :FORM_SUBMISSIONS_EXPORT,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          GDPR_DELETE =
            T.let(
              :GDPR_DELETE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          GDPR_TOGGLE_DISABLED =
            T.let(
              :GDPR_TOGGLE_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          GDPR_TOGGLE_ENABLED =
            T.let(
              :GDPR_TOGGLE_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HAPIKEY_CREATE =
            T.let(
              :HAPIKEY_CREATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HAPIKEY_DEACTIVATE =
            T.let(
              :HAPIKEY_DEACTIVATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HAPIKEY_VIEW =
            T.let(
              :HAPIKEY_VIEW,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HUBSPOT_EMPLOYEE_ACCESS_DISABLED =
            T.let(
              :HUBSPOT_EMPLOYEE_ACCESS_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HUBSPOT_EMPLOYEE_ACCESS_ENABLED =
            T.let(
              :HUBSPOT_EMPLOYEE_ACCESS_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          IMPERSONATE_USER =
            T.let(
              :IMPERSONATE_USER,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          INSTALL_INTEGRATION =
            T.let(
              :INSTALL_INTEGRATION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          IP_RESTRICTIONS_DISABLED =
            T.let(
              :IP_RESTRICTIONS_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          IP_RESTRICTIONS_ENABLED =
            T.let(
              :IP_RESTRICTIONS_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          JOINED_PORTAL_VIA_DOMAIN_BASED_INVITE =
            T.let(
              :JOINED_PORTAL_VIA_DOMAIN_BASED_INVITE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          LEGAL_BASIS_REQUIREMENT_DISABLED =
            T.let(
              :LEGAL_BASIS_REQUIREMENT_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          LEGAL_BASIS_REQUIREMENT_ENABLED =
            T.let(
              :LEGAL_BASIS_REQUIREMENT_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MANUAL_PASSWORD_RESET_EMAIL_SEND =
            T.let(
              :MANUAL_PASSWORD_RESET_EMAIL_SEND,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MANUAL_REGISTRATION_EMAIL_SEND =
            T.let(
              :MANUAL_REGISTRATION_EMAIL_SEND,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MARKETING_CONTACTS_APP_SETTINGS_DISABLED =
            T.let(
              :MARKETING_CONTACTS_APP_SETTINGS_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MARKETING_CONTACTS_APP_SETTINGS_ENABLED =
            T.let(
              :MARKETING_CONTACTS_APP_SETTINGS_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MERGE_REVERT =
            T.let(
              :MERGE_REVERT,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MODIFY_WEBHOOK_IN_WORKFLOW =
            T.let(
              :MODIFY_WEBHOOK_IN_WORKFLOW,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MULTI_ACCOUNT_REPORTING_CONNECTION_ADDED =
            T.let(
              :MULTI_ACCOUNT_REPORTING_CONNECTION_ADDED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MULTI_ACCOUNT_REPORTING_CONNECTION_REMOVED =
            T.let(
              :MULTI_ACCOUNT_REPORTING_CONNECTION_REMOVED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MULTI_ACCOUNT_WORKFLOWS_CONNECTION_ADDED =
            T.let(
              :MULTI_ACCOUNT_WORKFLOWS_CONNECTION_ADDED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MULTI_ACCOUNT_WORKFLOWS_CONNECTION_REMOVED =
            T.let(
              :MULTI_ACCOUNT_WORKFLOWS_CONNECTION_REMOVED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          NEVER_LOG_FOR_PORTAL_ADDITION =
            T.let(
              :NEVER_LOG_FOR_PORTAL_ADDITION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          NEVER_LOG_FOR_PORTAL_DELETION =
            T.let(
              :NEVER_LOG_FOR_PORTAL_DELETION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          NEVER_LOG_FOR_USER_ADDITION =
            T.let(
              :NEVER_LOG_FOR_USER_ADDITION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          NEVER_LOG_FOR_USER_DELETION =
            T.let(
              :NEVER_LOG_FOR_USER_DELETION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PASSKEY_ADDED =
            T.let(
              :PASSKEY_ADDED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PASSKEY_DELETED =
            T.let(
              :PASSKEY_DELETED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PAYMENT_ACCOUNT_CREATION =
            T.let(
              :PAYMENT_ACCOUNT_CREATION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PAYMENT_ACCOUNT_INFO_UPDATE =
            T.let(
              :PAYMENT_ACCOUNT_INFO_UPDATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PAYMENT_BANK_ACCOUNT_CHANGE =
            T.let(
              :PAYMENT_BANK_ACCOUNT_CHANGE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PAYMENT_ONBOARDING_LINK_SEND =
            T.let(
              :PAYMENT_ONBOARDING_LINK_SEND,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PERSONAL_ACCESS_KEY_CREATE =
            T.let(
              :PERSONAL_ACCESS_KEY_CREATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PERSONAL_ACCESS_KEY_DEACTIVATE =
            T.let(
              :PERSONAL_ACCESS_KEY_DEACTIVATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PERSONAL_ACCESS_KEY_ROTATE =
            T.let(
              :PERSONAL_ACCESS_KEY_ROTATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PERSONAL_ACCESS_KEY_VIEW =
            T.let(
              :PERSONAL_ACCESS_KEY_VIEW,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_ACCESS_TOKEN_CREATE =
            T.let(
              :PRIVATE_APP_ACCESS_TOKEN_CREATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_ACCESS_TOKEN_DEACTIVATE =
            T.let(
              :PRIVATE_APP_ACCESS_TOKEN_DEACTIVATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_ACCESS_TOKEN_ROTATE =
            T.let(
              :PRIVATE_APP_ACCESS_TOKEN_ROTATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_ACCESS_TOKEN_VIEW =
            T.let(
              :PRIVATE_APP_ACCESS_TOKEN_VIEW,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_CLIENT_SECRET_VIEW =
            T.let(
              :PRIVATE_APP_CLIENT_SECRET_VIEW,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_CLIENT_SECRET_WRITE =
            T.let(
              :PRIVATE_APP_CLIENT_SECRET_WRITE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_SCOPE_GROUPS_UPDATE =
            T.let(
              :PRIVATE_APP_SCOPE_GROUPS_UPDATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRODUCTION_DEPLOYMENT =
            T.let(
              :PRODUCTION_DEPLOYMENT,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PROPERTY_HISTORY_REVISION =
            T.let(
              :PROPERTY_HISTORY_REVISION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PUBLIC_APP_CLIENT_SECRET_VIEW =
            T.let(
              :PUBLIC_APP_CLIENT_SECRET_VIEW,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PUBLIC_APP_CLIENT_SECRET_WRITE =
            T.let(
              :PUBLIC_APP_CLIENT_SECRET_WRITE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REACTIVATE_USER =
            T.let(
              :REACTIVATE_USER,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_ADMIN_PERMISSIONS =
            T.let(
              :REMOVE_ADMIN_PERMISSIONS,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_ADMIN_USER =
            T.let(
              :REMOVE_ADMIN_USER,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_SINGLE_SIGN_ON =
            T.let(
              :REMOVE_SINGLE_SIGN_ON,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_TWO_FACTOR_AUTHENTICATION =
            T.let(
              :REMOVE_TWO_FACTOR_AUTHENTICATION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_USER =
            T.let(
              :REMOVE_USER,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REQUIRE_SINGLE_SIGN_ON =
            T.let(
              :REQUIRE_SINGLE_SIGN_ON,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          RESTRICTED_LIST_ADDED_TO_CONTENT =
            T.let(
              :RESTRICTED_LIST_ADDED_TO_CONTENT,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SANDBOX_CREATION =
            T.let(
              :SANDBOX_CREATION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SANDBOX_DELETION =
            T.let(
              :SANDBOX_DELETION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SANDBOX_SYNC =
            T.let(
              :SANDBOX_SYNC,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SANDBOX_SYNC_TO_PRODUCTION =
            T.let(
              :SANDBOX_SYNC_TO_PRODUCTION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SECRET_ADDED_TO_SERVERLESS_FUNCTION =
            T.let(
              :SECRET_ADDED_TO_SERVERLESS_FUNCTION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SENSITIVE_DATA_DISABLED =
            T.let(
              :SENSITIVE_DATA_DISABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SENSITIVE_DATA_ENABLED =
            T.let(
              :SENSITIVE_DATA_ENABLED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_CLONED =
            T.let(
              :SEQUENCE_CLONED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_CREATED =
            T.let(
              :SEQUENCE_CREATED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT_INITIATED =
            T.let(
              :SEQUENCE_ENROLLMENT_INITIATED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT_STATE_CHANGED =
            T.let(
              :SEQUENCE_ENROLLMENT_STATE_CHANGED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_MODIFIED =
            T.let(
              :SEQUENCE_MODIFIED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_CREATE =
            T.let(
              :SERVICE_KEY_CREATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_DEACTIVATE =
            T.let(
              :SERVICE_KEY_DEACTIVATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_PERMISSIONS_UPDATE =
            T.let(
              :SERVICE_KEY_PERMISSIONS_UPDATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_REVEAL =
            T.let(
              :SERVICE_KEY_REVEAL,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_ROTATE =
            T.let(
              :SERVICE_KEY_ROTATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SMTP_TOKEN_CREATED =
            T.let(
              :SMTP_TOKEN_CREATED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SMTP_TOKEN_DELETED =
            T.let(
              :SMTP_TOKEN_DELETED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SMTP_TOKEN_PASSWORD_RESET =
            T.let(
              :SMTP_TOKEN_PASSWORD_RESET,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SMTP_TOKEN_RETRIEVED =
            T.let(
              :SMTP_TOKEN_RETRIEVED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEAM_ADDED =
            T.let(
              :TEAM_ADDED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEAM_DELETED =
            T.let(
              :TEAM_DELETED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEAM_USER_ADDED =
            T.let(
              :TEAM_USER_ADDED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEAM_USER_DELETED =
            T.let(
              :TEAM_USER_DELETED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEMPLATE_MODIFIED =
            T.let(
              :TEMPLATE_MODIFIED,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TOUCHLESS_PURCHASE =
            T.let(
              :TOUCHLESS_PURCHASE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          UNIFIED_RESTORE_UNDO_EXECUTION =
            T.let(
              :UNIFIED_RESTORE_UNDO_EXECUTION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          UNINSTALL_INTEGRATION =
            T.let(
              :UNINSTALL_INTEGRATION,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          UNREQUIRE_SINGLE_SIGN_ON =
            T.let(
              :UNREQUIRE_SINGLE_SIGN_ON,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          WEBHOOK_SETTINGS_UPDATE =
            T.let(
              :WEBHOOK_SETTINGS_UPDATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          WEBHOOK_SUBSCRIPTION_CREATE =
            T.let(
              :WEBHOOK_SUBSCRIPTION_CREATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          WEBHOOK_SUBSCRIPTION_UPDATE =
            T.let(
              :WEBHOOK_SUBSCRIPTION_UPDATE,
              HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
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
