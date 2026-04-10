# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::LimitsTest < HubSpotSDK::Test::ResourceTest
  def test_get_association_label_limits
    skip("Mock server tests are disabled")

    response = @hubspot.crm.limits.get_association_label_limits

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponseAssociationLabelLimitResponseNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AssociationLabelLimitResponse])
      }
    end
  end

  def test_get_association_records_limits_by_object_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.limits.get_association_records_limits_by_object_type(
        "toObjectTypeId",
        from_object_type_id: "fromObjectTypeId"
      )

    assert_pattern do
      response => HubSpotSDK::Crm::AssociationRecordLimitResponse
    end

    assert_pattern do
      response => {
        at_limit_from_record_samples: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AtLimitRecordSample]),
        limit: Integer,
        near_limit_from_record_samples: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::NearLimitRecordSample]),
        total_records_at_limit: Integer,
        total_records_near_limit: Integer
      }
    end
  end

  def test_get_association_records_limits_from_objects
    skip("Mock server tests are disabled")

    response = @hubspot.crm.limits.get_association_records_limits_from_objects

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ObjectTypeNearOrAtAssociationLimit])
      }
    end
  end

  def test_get_association_records_limits_to_objects
    skip("Mock server tests are disabled")

    response = @hubspot.crm.limits.get_association_records_limits_to_objects("fromObjectTypeId")

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ObjectTypeNearOrAtAssociationLimit])
      }
    end
  end

  def test_get_calculated_property_limits
    skip("Mock server tests are disabled")

    response = @hubspot.crm.limits.get_calculated_property_limits

    assert_pattern do
      response => HubSpotSDK::Crm::CalculatedPropertyLimitResponse
    end

    assert_pattern do
      response => {
        by_object_type: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::UsageForObjectType]),
        overall_limit: Integer,
        overall_percentage: Float,
        overall_usage: Integer
      }
    end
  end

  def test_get_custom_object_type_limits
    skip("Mock server tests are disabled")

    response = @hubspot.crm.limits.get_custom_object_type_limits

    assert_pattern do
      response => HubSpotSDK::Crm::CustomObjectLimitResponse
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
    skip("Mock server tests are disabled")

    response = @hubspot.crm.limits.get_custom_property_limits

    assert_pattern do
      response => HubSpotSDK::Crm::CustomPropertyLimitResponse
    end

    assert_pattern do
      response => {
        by_object_type: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::LimitAndUsageForObjectType]),
        overall_limit: Integer,
        overall_percentage: Float,
        overall_usage: Integer
      }
    end
  end

  def test_get_pipeline_limits
    skip("Mock server tests are disabled")

    response = @hubspot.crm.limits.get_pipeline_limits

    assert_pattern do
      response => HubSpotSDK::Crm::PipelineLimitResponse
    end

    assert_pattern do
      response => {
        custom_object_types: HubSpotSDK::Crm::CustomObjectRecordLimitResponse,
        hubspot_defined_object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::LimitAndUsageForObjectType])
      }
    end
  end

  def test_get_record_limits
    skip("Mock server tests are disabled")

    response = @hubspot.crm.limits.get_record_limits

    assert_pattern do
      response => HubSpotSDK::Crm::RecordLimitResponse
    end

    assert_pattern do
      response => {
        custom_object_types: HubSpotSDK::Crm::CustomObjectRecordLimitResponse,
        hubspot_defined_object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::LimitAndUsageForObjectType])
      }
    end
  end
end
