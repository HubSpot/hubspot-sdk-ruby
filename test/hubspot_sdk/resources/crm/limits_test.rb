# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::CRM::LimitsTest < HubspotSDK::Test::ResourceTest
  def test_get_association_label_limits
    skip("Prism tests are disabled")

    response = @hubspot.crm.limits.get_association_label_limits

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponseAssociationLabelLimitResponseNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::AssociationLabelLimitResponse])
      }
    end
  end

  def test_get_association_records_limits_by_object_type_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.limits.get_association_records_limits_by_object_type(
        "toObjectTypeId",
        from_object_type_id: "fromObjectTypeId"
      )

    assert_pattern do
      response => HubspotSDK::CRM::AssociationRecordLimitResponse
    end

    assert_pattern do
      response => {
        at_limit_from_record_samples: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::AtLimitRecordSample]),
        limit: Integer,
        near_limit_from_record_samples: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::NearLimitRecordSample]),
        total_records_at_limit: Integer,
        total_records_near_limit: Integer
      }
    end
  end

  def test_get_association_records_limits_from_objects
    skip("Prism tests are disabled")

    response = @hubspot.crm.limits.get_association_records_limits_from_objects

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::ObjectTypeNearOrAtAssociationLimit])
      }
    end
  end

  def test_get_association_records_limits_to_objects
    skip("Prism tests are disabled")

    response = @hubspot.crm.limits.get_association_records_limits_to_objects("fromObjectTypeId")

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::ObjectTypeNearOrAtAssociationLimit])
      }
    end
  end

  def test_get_calculated_property_limits
    skip("Prism tests are disabled")

    response = @hubspot.crm.limits.get_calculated_property_limits

    assert_pattern do
      response => HubspotSDK::CRM::CalculatedPropertyLimitResponse
    end

    assert_pattern do
      response => {
        by_object_type: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::UsageForObjectType]),
        overall_limit: Integer,
        overall_percentage: Float,
        overall_usage: Integer
      }
    end
  end

  def test_get_custom_object_type_limits
    skip("Prism tests are disabled")

    response = @hubspot.crm.limits.get_custom_object_type_limits

    assert_pattern do
      response => HubspotSDK::CRM::CustomObjectLimitResponse
    end

    assert_pattern do
      response => {
        limit: Integer,
        percentage: Float,
        usage: Integer
      }
    end
  end

  def test_get_custom_property_limits
    skip("Prism tests are disabled")

    response = @hubspot.crm.limits.get_custom_property_limits

    assert_pattern do
      response => HubspotSDK::CRM::CustomPropertyLimitResponse
    end

    assert_pattern do
      response => {
        by_object_type: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::LimitAndUsageForObjectType]),
        overall_limit: Integer,
        overall_percentage: Float,
        overall_usage: Integer
      }
    end
  end

  def test_get_pipeline_limits
    skip("Prism tests are disabled")

    response = @hubspot.crm.limits.get_pipeline_limits

    assert_pattern do
      response => HubspotSDK::CRM::PipelineLimitResponse
    end

    assert_pattern do
      response => {
        custom_object_types: HubspotSDK::CRM::CustomObjectRecordLimitResponse,
        hubspot_defined_object_types: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::LimitAndUsageForObjectType])
      }
    end
  end

  def test_get_record_limits
    skip("Prism tests are disabled")

    response = @hubspot.crm.limits.get_record_limits

    assert_pattern do
      response => HubspotSDK::CRM::RecordLimitResponse
    end

    assert_pattern do
      response => {
        custom_object_types: HubspotSDK::CRM::CustomObjectRecordLimitResponse,
        hubspot_defined_object_types: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::LimitAndUsageForObjectType])
      }
    end
  end
end
