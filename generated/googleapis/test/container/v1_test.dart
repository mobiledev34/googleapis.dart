// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/container/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  var o = api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.acceleratorCount = 'foo';
    o.acceleratorType = 'foo';
  }
  buildCounterAcceleratorConfig--;
  return o;
}

void checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(o.acceleratorCount, unittest.equals('foo'));
    unittest.expect(o.acceleratorType, unittest.equals('foo'));
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAddonsConfig = 0;
api.AddonsConfig buildAddonsConfig() {
  var o = api.AddonsConfig();
  buildCounterAddonsConfig++;
  if (buildCounterAddonsConfig < 3) {
    o.cloudRunConfig = buildCloudRunConfig();
    o.configConnectorConfig = buildConfigConnectorConfig();
    o.dnsCacheConfig = buildDnsCacheConfig();
    o.gcePersistentDiskCsiDriverConfig =
        buildGcePersistentDiskCsiDriverConfig();
    o.horizontalPodAutoscaling = buildHorizontalPodAutoscaling();
    o.httpLoadBalancing = buildHttpLoadBalancing();
    o.kubernetesDashboard = buildKubernetesDashboard();
    o.networkPolicyConfig = buildNetworkPolicyConfig();
  }
  buildCounterAddonsConfig--;
  return o;
}

void checkAddonsConfig(api.AddonsConfig o) {
  buildCounterAddonsConfig++;
  if (buildCounterAddonsConfig < 3) {
    checkCloudRunConfig(o.cloudRunConfig as api.CloudRunConfig);
    checkConfigConnectorConfig(
        o.configConnectorConfig as api.ConfigConnectorConfig);
    checkDnsCacheConfig(o.dnsCacheConfig as api.DnsCacheConfig);
    checkGcePersistentDiskCsiDriverConfig(o.gcePersistentDiskCsiDriverConfig
        as api.GcePersistentDiskCsiDriverConfig);
    checkHorizontalPodAutoscaling(
        o.horizontalPodAutoscaling as api.HorizontalPodAutoscaling);
    checkHttpLoadBalancing(o.httpLoadBalancing as api.HttpLoadBalancing);
    checkKubernetesDashboard(o.kubernetesDashboard as api.KubernetesDashboard);
    checkNetworkPolicyConfig(o.networkPolicyConfig as api.NetworkPolicyConfig);
  }
  buildCounterAddonsConfig--;
}

core.int buildCounterAuthenticatorGroupsConfig = 0;
api.AuthenticatorGroupsConfig buildAuthenticatorGroupsConfig() {
  var o = api.AuthenticatorGroupsConfig();
  buildCounterAuthenticatorGroupsConfig++;
  if (buildCounterAuthenticatorGroupsConfig < 3) {
    o.enabled = true;
    o.securityGroup = 'foo';
  }
  buildCounterAuthenticatorGroupsConfig--;
  return o;
}

void checkAuthenticatorGroupsConfig(api.AuthenticatorGroupsConfig o) {
  buildCounterAuthenticatorGroupsConfig++;
  if (buildCounterAuthenticatorGroupsConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.securityGroup, unittest.equals('foo'));
  }
  buildCounterAuthenticatorGroupsConfig--;
}

core.int buildCounterAutoUpgradeOptions = 0;
api.AutoUpgradeOptions buildAutoUpgradeOptions() {
  var o = api.AutoUpgradeOptions();
  buildCounterAutoUpgradeOptions++;
  if (buildCounterAutoUpgradeOptions < 3) {
    o.autoUpgradeStartTime = 'foo';
    o.description = 'foo';
  }
  buildCounterAutoUpgradeOptions--;
  return o;
}

void checkAutoUpgradeOptions(api.AutoUpgradeOptions o) {
  buildCounterAutoUpgradeOptions++;
  if (buildCounterAutoUpgradeOptions < 3) {
    unittest.expect(o.autoUpgradeStartTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
  }
  buildCounterAutoUpgradeOptions--;
}

core.int buildCounterAutopilot = 0;
api.Autopilot buildAutopilot() {
  var o = api.Autopilot();
  buildCounterAutopilot++;
  if (buildCounterAutopilot < 3) {
    o.enabled = true;
  }
  buildCounterAutopilot--;
  return o;
}

void checkAutopilot(api.Autopilot o) {
  buildCounterAutopilot++;
  if (buildCounterAutopilot < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAutopilot--;
}

core.List<core.String> buildUnnamed1959() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1959(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAutoprovisioningNodePoolDefaults = 0;
api.AutoprovisioningNodePoolDefaults buildAutoprovisioningNodePoolDefaults() {
  var o = api.AutoprovisioningNodePoolDefaults();
  buildCounterAutoprovisioningNodePoolDefaults++;
  if (buildCounterAutoprovisioningNodePoolDefaults < 3) {
    o.bootDiskKmsKey = 'foo';
    o.diskSizeGb = 42;
    o.diskType = 'foo';
    o.management = buildNodeManagement();
    o.minCpuPlatform = 'foo';
    o.oauthScopes = buildUnnamed1959();
    o.serviceAccount = 'foo';
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.upgradeSettings = buildUpgradeSettings();
  }
  buildCounterAutoprovisioningNodePoolDefaults--;
  return o;
}

void checkAutoprovisioningNodePoolDefaults(
    api.AutoprovisioningNodePoolDefaults o) {
  buildCounterAutoprovisioningNodePoolDefaults++;
  if (buildCounterAutoprovisioningNodePoolDefaults < 3) {
    unittest.expect(o.bootDiskKmsKey, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskType, unittest.equals('foo'));
    checkNodeManagement(o.management as api.NodeManagement);
    unittest.expect(o.minCpuPlatform, unittest.equals('foo'));
    checkUnnamed1959(o.oauthScopes);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    checkShieldedInstanceConfig(
        o.shieldedInstanceConfig as api.ShieldedInstanceConfig);
    checkUpgradeSettings(o.upgradeSettings as api.UpgradeSettings);
  }
  buildCounterAutoprovisioningNodePoolDefaults--;
}

core.int buildCounterBigQueryDestination = 0;
api.BigQueryDestination buildBigQueryDestination() {
  var o = api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.datasetId = 'foo';
  }
  buildCounterBigQueryDestination--;
  return o;
}

void checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
  }
  buildCounterBigQueryDestination--;
}

core.int buildCounterBinaryAuthorization = 0;
api.BinaryAuthorization buildBinaryAuthorization() {
  var o = api.BinaryAuthorization();
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    o.enabled = true;
  }
  buildCounterBinaryAuthorization--;
  return o;
}

void checkBinaryAuthorization(api.BinaryAuthorization o) {
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterBinaryAuthorization--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
    o.name = 'foo';
    o.operationId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCidrBlock = 0;
api.CidrBlock buildCidrBlock() {
  var o = api.CidrBlock();
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    o.cidrBlock = 'foo';
    o.displayName = 'foo';
  }
  buildCounterCidrBlock--;
  return o;
}

void checkCidrBlock(api.CidrBlock o) {
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    unittest.expect(o.cidrBlock, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterCidrBlock--;
}

core.int buildCounterClientCertificateConfig = 0;
api.ClientCertificateConfig buildClientCertificateConfig() {
  var o = api.ClientCertificateConfig();
  buildCounterClientCertificateConfig++;
  if (buildCounterClientCertificateConfig < 3) {
    o.issueClientCertificate = true;
  }
  buildCounterClientCertificateConfig--;
  return o;
}

void checkClientCertificateConfig(api.ClientCertificateConfig o) {
  buildCounterClientCertificateConfig++;
  if (buildCounterClientCertificateConfig < 3) {
    unittest.expect(o.issueClientCertificate, unittest.isTrue);
  }
  buildCounterClientCertificateConfig--;
}

core.int buildCounterCloudRunConfig = 0;
api.CloudRunConfig buildCloudRunConfig() {
  var o = api.CloudRunConfig();
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    o.disabled = true;
    o.loadBalancerType = 'foo';
  }
  buildCounterCloudRunConfig--;
  return o;
}

void checkCloudRunConfig(api.CloudRunConfig o) {
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.loadBalancerType, unittest.equals('foo'));
  }
  buildCounterCloudRunConfig--;
}

core.List<api.StatusCondition> buildUnnamed1960() {
  var o = <api.StatusCondition>[];
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

void checkUnnamed1960(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0] as api.StatusCondition);
  checkStatusCondition(o[1] as api.StatusCondition);
}

core.List<core.String> buildUnnamed1961() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1961(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1962() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1962(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.NodePool> buildUnnamed1963() {
  var o = <api.NodePool>[];
  o.add(buildNodePool());
  o.add(buildNodePool());
  return o;
}

void checkUnnamed1963(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0] as api.NodePool);
  checkNodePool(o[1] as api.NodePool);
}

core.Map<core.String, core.String> buildUnnamed1964() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1964(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  var o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.addonsConfig = buildAddonsConfig();
    o.authenticatorGroupsConfig = buildAuthenticatorGroupsConfig();
    o.autopilot = buildAutopilot();
    o.autoscaling = buildClusterAutoscaling();
    o.binaryAuthorization = buildBinaryAuthorization();
    o.clusterIpv4Cidr = 'foo';
    o.conditions = buildUnnamed1960();
    o.createTime = 'foo';
    o.currentMasterVersion = 'foo';
    o.currentNodeCount = 42;
    o.currentNodeVersion = 'foo';
    o.databaseEncryption = buildDatabaseEncryption();
    o.defaultMaxPodsConstraint = buildMaxPodsConstraint();
    o.description = 'foo';
    o.enableKubernetesAlpha = true;
    o.enableTpu = true;
    o.endpoint = 'foo';
    o.expireTime = 'foo';
    o.initialClusterVersion = 'foo';
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed1961();
    o.ipAllocationPolicy = buildIPAllocationPolicy();
    o.labelFingerprint = 'foo';
    o.legacyAbac = buildLegacyAbac();
    o.location = 'foo';
    o.locations = buildUnnamed1962();
    o.loggingService = 'foo';
    o.maintenancePolicy = buildMaintenancePolicy();
    o.masterAuth = buildMasterAuth();
    o.masterAuthorizedNetworksConfig = buildMasterAuthorizedNetworksConfig();
    o.monitoringService = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.networkConfig = buildNetworkConfig();
    o.networkPolicy = buildNetworkPolicy();
    o.nodeConfig = buildNodeConfig();
    o.nodeIpv4CidrSize = 42;
    o.nodePools = buildUnnamed1963();
    o.notificationConfig = buildNotificationConfig();
    o.privateClusterConfig = buildPrivateClusterConfig();
    o.releaseChannel = buildReleaseChannel();
    o.resourceLabels = buildUnnamed1964();
    o.resourceUsageExportConfig = buildResourceUsageExportConfig();
    o.selfLink = 'foo';
    o.servicesIpv4Cidr = 'foo';
    o.shieldedNodes = buildShieldedNodes();
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.subnetwork = 'foo';
    o.tpuIpv4CidrBlock = 'foo';
    o.verticalPodAutoscaling = buildVerticalPodAutoscaling();
    o.workloadIdentityConfig = buildWorkloadIdentityConfig();
    o.zone = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkAddonsConfig(o.addonsConfig as api.AddonsConfig);
    checkAuthenticatorGroupsConfig(
        o.authenticatorGroupsConfig as api.AuthenticatorGroupsConfig);
    checkAutopilot(o.autopilot as api.Autopilot);
    checkClusterAutoscaling(o.autoscaling as api.ClusterAutoscaling);
    checkBinaryAuthorization(o.binaryAuthorization as api.BinaryAuthorization);
    unittest.expect(o.clusterIpv4Cidr, unittest.equals('foo'));
    checkUnnamed1960(o.conditions);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.currentMasterVersion, unittest.equals('foo'));
    unittest.expect(o.currentNodeCount, unittest.equals(42));
    unittest.expect(o.currentNodeVersion, unittest.equals('foo'));
    checkDatabaseEncryption(o.databaseEncryption as api.DatabaseEncryption);
    checkMaxPodsConstraint(o.defaultMaxPodsConstraint as api.MaxPodsConstraint);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.enableKubernetesAlpha, unittest.isTrue);
    unittest.expect(o.enableTpu, unittest.isTrue);
    unittest.expect(o.endpoint, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.initialClusterVersion, unittest.equals('foo'));
    unittest.expect(o.initialNodeCount, unittest.equals(42));
    checkUnnamed1961(o.instanceGroupUrls);
    checkIPAllocationPolicy(o.ipAllocationPolicy as api.IPAllocationPolicy);
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkLegacyAbac(o.legacyAbac as api.LegacyAbac);
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed1962(o.locations);
    unittest.expect(o.loggingService, unittest.equals('foo'));
    checkMaintenancePolicy(o.maintenancePolicy as api.MaintenancePolicy);
    checkMasterAuth(o.masterAuth as api.MasterAuth);
    checkMasterAuthorizedNetworksConfig(
        o.masterAuthorizedNetworksConfig as api.MasterAuthorizedNetworksConfig);
    unittest.expect(o.monitoringService, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    checkNetworkConfig(o.networkConfig as api.NetworkConfig);
    checkNetworkPolicy(o.networkPolicy as api.NetworkPolicy);
    checkNodeConfig(o.nodeConfig as api.NodeConfig);
    unittest.expect(o.nodeIpv4CidrSize, unittest.equals(42));
    checkUnnamed1963(o.nodePools);
    checkNotificationConfig(o.notificationConfig as api.NotificationConfig);
    checkPrivateClusterConfig(
        o.privateClusterConfig as api.PrivateClusterConfig);
    checkReleaseChannel(o.releaseChannel as api.ReleaseChannel);
    checkUnnamed1964(o.resourceLabels);
    checkResourceUsageExportConfig(
        o.resourceUsageExportConfig as api.ResourceUsageExportConfig);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.servicesIpv4Cidr, unittest.equals('foo'));
    checkShieldedNodes(o.shieldedNodes as api.ShieldedNodes);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.tpuIpv4CidrBlock, unittest.equals('foo'));
    checkVerticalPodAutoscaling(
        o.verticalPodAutoscaling as api.VerticalPodAutoscaling);
    checkWorkloadIdentityConfig(
        o.workloadIdentityConfig as api.WorkloadIdentityConfig);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.List<core.String> buildUnnamed1965() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1965(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ResourceLimit> buildUnnamed1966() {
  var o = <api.ResourceLimit>[];
  o.add(buildResourceLimit());
  o.add(buildResourceLimit());
  return o;
}

void checkUnnamed1966(core.List<api.ResourceLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceLimit(o[0] as api.ResourceLimit);
  checkResourceLimit(o[1] as api.ResourceLimit);
}

core.int buildCounterClusterAutoscaling = 0;
api.ClusterAutoscaling buildClusterAutoscaling() {
  var o = api.ClusterAutoscaling();
  buildCounterClusterAutoscaling++;
  if (buildCounterClusterAutoscaling < 3) {
    o.autoprovisioningLocations = buildUnnamed1965();
    o.autoprovisioningNodePoolDefaults =
        buildAutoprovisioningNodePoolDefaults();
    o.enableNodeAutoprovisioning = true;
    o.resourceLimits = buildUnnamed1966();
  }
  buildCounterClusterAutoscaling--;
  return o;
}

void checkClusterAutoscaling(api.ClusterAutoscaling o) {
  buildCounterClusterAutoscaling++;
  if (buildCounterClusterAutoscaling < 3) {
    checkUnnamed1965(o.autoprovisioningLocations);
    checkAutoprovisioningNodePoolDefaults(o.autoprovisioningNodePoolDefaults
        as api.AutoprovisioningNodePoolDefaults);
    unittest.expect(o.enableNodeAutoprovisioning, unittest.isTrue);
    checkUnnamed1966(o.resourceLimits);
  }
  buildCounterClusterAutoscaling--;
}

core.List<core.String> buildUnnamed1967() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1967(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterClusterUpdate = 0;
api.ClusterUpdate buildClusterUpdate() {
  var o = api.ClusterUpdate();
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    o.desiredAddonsConfig = buildAddonsConfig();
    o.desiredBinaryAuthorization = buildBinaryAuthorization();
    o.desiredClusterAutoscaling = buildClusterAutoscaling();
    o.desiredDatabaseEncryption = buildDatabaseEncryption();
    o.desiredDefaultSnatStatus = buildDefaultSnatStatus();
    o.desiredImageType = 'foo';
    o.desiredIntraNodeVisibilityConfig = buildIntraNodeVisibilityConfig();
    o.desiredLocations = buildUnnamed1967();
    o.desiredLoggingService = 'foo';
    o.desiredMasterAuthorizedNetworksConfig =
        buildMasterAuthorizedNetworksConfig();
    o.desiredMasterVersion = 'foo';
    o.desiredMonitoringService = 'foo';
    o.desiredNodePoolAutoscaling = buildNodePoolAutoscaling();
    o.desiredNodePoolId = 'foo';
    o.desiredNodeVersion = 'foo';
    o.desiredNotificationConfig = buildNotificationConfig();
    o.desiredPrivateClusterConfig = buildPrivateClusterConfig();
    o.desiredPrivateIpv6GoogleAccess = 'foo';
    o.desiredReleaseChannel = buildReleaseChannel();
    o.desiredResourceUsageExportConfig = buildResourceUsageExportConfig();
    o.desiredShieldedNodes = buildShieldedNodes();
    o.desiredVerticalPodAutoscaling = buildVerticalPodAutoscaling();
    o.desiredWorkloadIdentityConfig = buildWorkloadIdentityConfig();
  }
  buildCounterClusterUpdate--;
  return o;
}

void checkClusterUpdate(api.ClusterUpdate o) {
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    checkAddonsConfig(o.desiredAddonsConfig as api.AddonsConfig);
    checkBinaryAuthorization(
        o.desiredBinaryAuthorization as api.BinaryAuthorization);
    checkClusterAutoscaling(
        o.desiredClusterAutoscaling as api.ClusterAutoscaling);
    checkDatabaseEncryption(
        o.desiredDatabaseEncryption as api.DatabaseEncryption);
    checkDefaultSnatStatus(o.desiredDefaultSnatStatus as api.DefaultSnatStatus);
    unittest.expect(o.desiredImageType, unittest.equals('foo'));
    checkIntraNodeVisibilityConfig(
        o.desiredIntraNodeVisibilityConfig as api.IntraNodeVisibilityConfig);
    checkUnnamed1967(o.desiredLocations);
    unittest.expect(o.desiredLoggingService, unittest.equals('foo'));
    checkMasterAuthorizedNetworksConfig(o.desiredMasterAuthorizedNetworksConfig
        as api.MasterAuthorizedNetworksConfig);
    unittest.expect(o.desiredMasterVersion, unittest.equals('foo'));
    unittest.expect(o.desiredMonitoringService, unittest.equals('foo'));
    checkNodePoolAutoscaling(
        o.desiredNodePoolAutoscaling as api.NodePoolAutoscaling);
    unittest.expect(o.desiredNodePoolId, unittest.equals('foo'));
    unittest.expect(o.desiredNodeVersion, unittest.equals('foo'));
    checkNotificationConfig(
        o.desiredNotificationConfig as api.NotificationConfig);
    checkPrivateClusterConfig(
        o.desiredPrivateClusterConfig as api.PrivateClusterConfig);
    unittest.expect(o.desiredPrivateIpv6GoogleAccess, unittest.equals('foo'));
    checkReleaseChannel(o.desiredReleaseChannel as api.ReleaseChannel);
    checkResourceUsageExportConfig(
        o.desiredResourceUsageExportConfig as api.ResourceUsageExportConfig);
    checkShieldedNodes(o.desiredShieldedNodes as api.ShieldedNodes);
    checkVerticalPodAutoscaling(
        o.desiredVerticalPodAutoscaling as api.VerticalPodAutoscaling);
    checkWorkloadIdentityConfig(
        o.desiredWorkloadIdentityConfig as api.WorkloadIdentityConfig);
  }
  buildCounterClusterUpdate--;
}

core.int buildCounterCompleteIPRotationRequest = 0;
api.CompleteIPRotationRequest buildCompleteIPRotationRequest() {
  var o = api.CompleteIPRotationRequest();
  buildCounterCompleteIPRotationRequest++;
  if (buildCounterCompleteIPRotationRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCompleteIPRotationRequest--;
  return o;
}

void checkCompleteIPRotationRequest(api.CompleteIPRotationRequest o) {
  buildCounterCompleteIPRotationRequest++;
  if (buildCounterCompleteIPRotationRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCompleteIPRotationRequest--;
}

core.int buildCounterConfigConnectorConfig = 0;
api.ConfigConnectorConfig buildConfigConnectorConfig() {
  var o = api.ConfigConnectorConfig();
  buildCounterConfigConnectorConfig++;
  if (buildCounterConfigConnectorConfig < 3) {
    o.enabled = true;
  }
  buildCounterConfigConnectorConfig--;
  return o;
}

void checkConfigConnectorConfig(api.ConfigConnectorConfig o) {
  buildCounterConfigConnectorConfig++;
  if (buildCounterConfigConnectorConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterConfigConnectorConfig--;
}

core.int buildCounterConsumptionMeteringConfig = 0;
api.ConsumptionMeteringConfig buildConsumptionMeteringConfig() {
  var o = api.ConsumptionMeteringConfig();
  buildCounterConsumptionMeteringConfig++;
  if (buildCounterConsumptionMeteringConfig < 3) {
    o.enabled = true;
  }
  buildCounterConsumptionMeteringConfig--;
  return o;
}

void checkConsumptionMeteringConfig(api.ConsumptionMeteringConfig o) {
  buildCounterConsumptionMeteringConfig++;
  if (buildCounterConsumptionMeteringConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterConsumptionMeteringConfig--;
}

core.int buildCounterCreateClusterRequest = 0;
api.CreateClusterRequest buildCreateClusterRequest() {
  var o = api.CreateClusterRequest();
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    o.cluster = buildCluster();
    o.parent = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCreateClusterRequest--;
  return o;
}

void checkCreateClusterRequest(api.CreateClusterRequest o) {
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    checkCluster(o.cluster as api.Cluster);
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCreateClusterRequest--;
}

core.int buildCounterCreateNodePoolRequest = 0;
api.CreateNodePoolRequest buildCreateNodePoolRequest() {
  var o = api.CreateNodePoolRequest();
  buildCounterCreateNodePoolRequest++;
  if (buildCounterCreateNodePoolRequest < 3) {
    o.clusterId = 'foo';
    o.nodePool = buildNodePool();
    o.parent = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCreateNodePoolRequest--;
  return o;
}

void checkCreateNodePoolRequest(api.CreateNodePoolRequest o) {
  buildCounterCreateNodePoolRequest++;
  if (buildCounterCreateNodePoolRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkNodePool(o.nodePool as api.NodePool);
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCreateNodePoolRequest--;
}

core.int buildCounterDailyMaintenanceWindow = 0;
api.DailyMaintenanceWindow buildDailyMaintenanceWindow() {
  var o = api.DailyMaintenanceWindow();
  buildCounterDailyMaintenanceWindow++;
  if (buildCounterDailyMaintenanceWindow < 3) {
    o.duration = 'foo';
    o.startTime = 'foo';
  }
  buildCounterDailyMaintenanceWindow--;
  return o;
}

void checkDailyMaintenanceWindow(api.DailyMaintenanceWindow o) {
  buildCounterDailyMaintenanceWindow++;
  if (buildCounterDailyMaintenanceWindow < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterDailyMaintenanceWindow--;
}

core.int buildCounterDatabaseEncryption = 0;
api.DatabaseEncryption buildDatabaseEncryption() {
  var o = api.DatabaseEncryption();
  buildCounterDatabaseEncryption++;
  if (buildCounterDatabaseEncryption < 3) {
    o.keyName = 'foo';
    o.state = 'foo';
  }
  buildCounterDatabaseEncryption--;
  return o;
}

void checkDatabaseEncryption(api.DatabaseEncryption o) {
  buildCounterDatabaseEncryption++;
  if (buildCounterDatabaseEncryption < 3) {
    unittest.expect(o.keyName, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterDatabaseEncryption--;
}

core.int buildCounterDefaultSnatStatus = 0;
api.DefaultSnatStatus buildDefaultSnatStatus() {
  var o = api.DefaultSnatStatus();
  buildCounterDefaultSnatStatus++;
  if (buildCounterDefaultSnatStatus < 3) {
    o.disabled = true;
  }
  buildCounterDefaultSnatStatus--;
  return o;
}

void checkDefaultSnatStatus(api.DefaultSnatStatus o) {
  buildCounterDefaultSnatStatus++;
  if (buildCounterDefaultSnatStatus < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterDefaultSnatStatus--;
}

core.int buildCounterDnsCacheConfig = 0;
api.DnsCacheConfig buildDnsCacheConfig() {
  var o = api.DnsCacheConfig();
  buildCounterDnsCacheConfig++;
  if (buildCounterDnsCacheConfig < 3) {
    o.enabled = true;
  }
  buildCounterDnsCacheConfig--;
  return o;
}

void checkDnsCacheConfig(api.DnsCacheConfig o) {
  buildCounterDnsCacheConfig++;
  if (buildCounterDnsCacheConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterDnsCacheConfig--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterGcePersistentDiskCsiDriverConfig = 0;
api.GcePersistentDiskCsiDriverConfig buildGcePersistentDiskCsiDriverConfig() {
  var o = api.GcePersistentDiskCsiDriverConfig();
  buildCounterGcePersistentDiskCsiDriverConfig++;
  if (buildCounterGcePersistentDiskCsiDriverConfig < 3) {
    o.enabled = true;
  }
  buildCounterGcePersistentDiskCsiDriverConfig--;
  return o;
}

void checkGcePersistentDiskCsiDriverConfig(
    api.GcePersistentDiskCsiDriverConfig o) {
  buildCounterGcePersistentDiskCsiDriverConfig++;
  if (buildCounterGcePersistentDiskCsiDriverConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterGcePersistentDiskCsiDriverConfig--;
}

core.List<api.Jwk> buildUnnamed1968() {
  var o = <api.Jwk>[];
  o.add(buildJwk());
  o.add(buildJwk());
  return o;
}

void checkUnnamed1968(core.List<api.Jwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwk(o[0] as api.Jwk);
  checkJwk(o[1] as api.Jwk);
}

core.int buildCounterGetJSONWebKeysResponse = 0;
api.GetJSONWebKeysResponse buildGetJSONWebKeysResponse() {
  var o = api.GetJSONWebKeysResponse();
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    o.cacheHeader = buildHttpCacheControlResponseHeader();
    o.keys = buildUnnamed1968();
  }
  buildCounterGetJSONWebKeysResponse--;
  return o;
}

void checkGetJSONWebKeysResponse(api.GetJSONWebKeysResponse o) {
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    checkHttpCacheControlResponseHeader(
        o.cacheHeader as api.HttpCacheControlResponseHeader);
    checkUnnamed1968(o.keys);
  }
  buildCounterGetJSONWebKeysResponse--;
}

core.List<core.String> buildUnnamed1969() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1969(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1970() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1970(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1971() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1971(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1972() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1972(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1973() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1973(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGetOpenIDConfigResponse = 0;
api.GetOpenIDConfigResponse buildGetOpenIDConfigResponse() {
  var o = api.GetOpenIDConfigResponse();
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    o.cacheHeader = buildHttpCacheControlResponseHeader();
    o.claimsSupported = buildUnnamed1969();
    o.grantTypes = buildUnnamed1970();
    o.idTokenSigningAlgValuesSupported = buildUnnamed1971();
    o.issuer = 'foo';
    o.jwksUri = 'foo';
    o.responseTypesSupported = buildUnnamed1972();
    o.subjectTypesSupported = buildUnnamed1973();
  }
  buildCounterGetOpenIDConfigResponse--;
  return o;
}

void checkGetOpenIDConfigResponse(api.GetOpenIDConfigResponse o) {
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    checkHttpCacheControlResponseHeader(
        o.cacheHeader as api.HttpCacheControlResponseHeader);
    checkUnnamed1969(o.claimsSupported);
    checkUnnamed1970(o.grantTypes);
    checkUnnamed1971(o.idTokenSigningAlgValuesSupported);
    unittest.expect(o.issuer, unittest.equals('foo'));
    unittest.expect(o.jwksUri, unittest.equals('foo'));
    checkUnnamed1972(o.responseTypesSupported);
    checkUnnamed1973(o.subjectTypesSupported);
  }
  buildCounterGetOpenIDConfigResponse--;
}

core.int buildCounterHorizontalPodAutoscaling = 0;
api.HorizontalPodAutoscaling buildHorizontalPodAutoscaling() {
  var o = api.HorizontalPodAutoscaling();
  buildCounterHorizontalPodAutoscaling++;
  if (buildCounterHorizontalPodAutoscaling < 3) {
    o.disabled = true;
  }
  buildCounterHorizontalPodAutoscaling--;
  return o;
}

void checkHorizontalPodAutoscaling(api.HorizontalPodAutoscaling o) {
  buildCounterHorizontalPodAutoscaling++;
  if (buildCounterHorizontalPodAutoscaling < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterHorizontalPodAutoscaling--;
}

core.int buildCounterHttpCacheControlResponseHeader = 0;
api.HttpCacheControlResponseHeader buildHttpCacheControlResponseHeader() {
  var o = api.HttpCacheControlResponseHeader();
  buildCounterHttpCacheControlResponseHeader++;
  if (buildCounterHttpCacheControlResponseHeader < 3) {
    o.age = 'foo';
    o.directive = 'foo';
    o.expires = 'foo';
  }
  buildCounterHttpCacheControlResponseHeader--;
  return o;
}

void checkHttpCacheControlResponseHeader(api.HttpCacheControlResponseHeader o) {
  buildCounterHttpCacheControlResponseHeader++;
  if (buildCounterHttpCacheControlResponseHeader < 3) {
    unittest.expect(o.age, unittest.equals('foo'));
    unittest.expect(o.directive, unittest.equals('foo'));
    unittest.expect(o.expires, unittest.equals('foo'));
  }
  buildCounterHttpCacheControlResponseHeader--;
}

core.int buildCounterHttpLoadBalancing = 0;
api.HttpLoadBalancing buildHttpLoadBalancing() {
  var o = api.HttpLoadBalancing();
  buildCounterHttpLoadBalancing++;
  if (buildCounterHttpLoadBalancing < 3) {
    o.disabled = true;
  }
  buildCounterHttpLoadBalancing--;
  return o;
}

void checkHttpLoadBalancing(api.HttpLoadBalancing o) {
  buildCounterHttpLoadBalancing++;
  if (buildCounterHttpLoadBalancing < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterHttpLoadBalancing--;
}

core.int buildCounterIPAllocationPolicy = 0;
api.IPAllocationPolicy buildIPAllocationPolicy() {
  var o = api.IPAllocationPolicy();
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    o.clusterIpv4Cidr = 'foo';
    o.clusterIpv4CidrBlock = 'foo';
    o.clusterSecondaryRangeName = 'foo';
    o.createSubnetwork = true;
    o.nodeIpv4Cidr = 'foo';
    o.nodeIpv4CidrBlock = 'foo';
    o.servicesIpv4Cidr = 'foo';
    o.servicesIpv4CidrBlock = 'foo';
    o.servicesSecondaryRangeName = 'foo';
    o.subnetworkName = 'foo';
    o.tpuIpv4CidrBlock = 'foo';
    o.useIpAliases = true;
    o.useRoutes = true;
  }
  buildCounterIPAllocationPolicy--;
  return o;
}

void checkIPAllocationPolicy(api.IPAllocationPolicy o) {
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    unittest.expect(o.clusterIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.clusterIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.clusterSecondaryRangeName, unittest.equals('foo'));
    unittest.expect(o.createSubnetwork, unittest.isTrue);
    unittest.expect(o.nodeIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.nodeIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.servicesIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.servicesIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.servicesSecondaryRangeName, unittest.equals('foo'));
    unittest.expect(o.subnetworkName, unittest.equals('foo'));
    unittest.expect(o.tpuIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.useIpAliases, unittest.isTrue);
    unittest.expect(o.useRoutes, unittest.isTrue);
  }
  buildCounterIPAllocationPolicy--;
}

core.int buildCounterIntraNodeVisibilityConfig = 0;
api.IntraNodeVisibilityConfig buildIntraNodeVisibilityConfig() {
  var o = api.IntraNodeVisibilityConfig();
  buildCounterIntraNodeVisibilityConfig++;
  if (buildCounterIntraNodeVisibilityConfig < 3) {
    o.enabled = true;
  }
  buildCounterIntraNodeVisibilityConfig--;
  return o;
}

void checkIntraNodeVisibilityConfig(api.IntraNodeVisibilityConfig o) {
  buildCounterIntraNodeVisibilityConfig++;
  if (buildCounterIntraNodeVisibilityConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterIntraNodeVisibilityConfig--;
}

core.int buildCounterJwk = 0;
api.Jwk buildJwk() {
  var o = api.Jwk();
  buildCounterJwk++;
  if (buildCounterJwk < 3) {
    o.alg = 'foo';
    o.crv = 'foo';
    o.e = 'foo';
    o.kid = 'foo';
    o.kty = 'foo';
    o.n = 'foo';
    o.use = 'foo';
    o.x = 'foo';
    o.y = 'foo';
  }
  buildCounterJwk--;
  return o;
}

void checkJwk(api.Jwk o) {
  buildCounterJwk++;
  if (buildCounterJwk < 3) {
    unittest.expect(o.alg, unittest.equals('foo'));
    unittest.expect(o.crv, unittest.equals('foo'));
    unittest.expect(o.e, unittest.equals('foo'));
    unittest.expect(o.kid, unittest.equals('foo'));
    unittest.expect(o.kty, unittest.equals('foo'));
    unittest.expect(o.n, unittest.equals('foo'));
    unittest.expect(o.use, unittest.equals('foo'));
    unittest.expect(o.x, unittest.equals('foo'));
    unittest.expect(o.y, unittest.equals('foo'));
  }
  buildCounterJwk--;
}

core.int buildCounterKubernetesDashboard = 0;
api.KubernetesDashboard buildKubernetesDashboard() {
  var o = api.KubernetesDashboard();
  buildCounterKubernetesDashboard++;
  if (buildCounterKubernetesDashboard < 3) {
    o.disabled = true;
  }
  buildCounterKubernetesDashboard--;
  return o;
}

void checkKubernetesDashboard(api.KubernetesDashboard o) {
  buildCounterKubernetesDashboard++;
  if (buildCounterKubernetesDashboard < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterKubernetesDashboard--;
}

core.int buildCounterLegacyAbac = 0;
api.LegacyAbac buildLegacyAbac() {
  var o = api.LegacyAbac();
  buildCounterLegacyAbac++;
  if (buildCounterLegacyAbac < 3) {
    o.enabled = true;
  }
  buildCounterLegacyAbac--;
  return o;
}

void checkLegacyAbac(api.LegacyAbac o) {
  buildCounterLegacyAbac++;
  if (buildCounterLegacyAbac < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterLegacyAbac--;
}

core.Map<core.String, core.String> buildUnnamed1974() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1974(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterLinuxNodeConfig = 0;
api.LinuxNodeConfig buildLinuxNodeConfig() {
  var o = api.LinuxNodeConfig();
  buildCounterLinuxNodeConfig++;
  if (buildCounterLinuxNodeConfig < 3) {
    o.sysctls = buildUnnamed1974();
  }
  buildCounterLinuxNodeConfig--;
  return o;
}

void checkLinuxNodeConfig(api.LinuxNodeConfig o) {
  buildCounterLinuxNodeConfig++;
  if (buildCounterLinuxNodeConfig < 3) {
    checkUnnamed1974(o.sysctls);
  }
  buildCounterLinuxNodeConfig--;
}

core.List<api.Cluster> buildUnnamed1975() {
  var o = <api.Cluster>[];
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

void checkUnnamed1975(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0] as api.Cluster);
  checkCluster(o[1] as api.Cluster);
}

core.List<core.String> buildUnnamed1976() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1976(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  var o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed1975();
    o.missingZones = buildUnnamed1976();
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed1975(o.clusters);
    checkUnnamed1976(o.missingZones);
  }
  buildCounterListClustersResponse--;
}

core.List<api.NodePool> buildUnnamed1977() {
  var o = <api.NodePool>[];
  o.add(buildNodePool());
  o.add(buildNodePool());
  return o;
}

void checkUnnamed1977(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0] as api.NodePool);
  checkNodePool(o[1] as api.NodePool);
}

core.int buildCounterListNodePoolsResponse = 0;
api.ListNodePoolsResponse buildListNodePoolsResponse() {
  var o = api.ListNodePoolsResponse();
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    o.nodePools = buildUnnamed1977();
  }
  buildCounterListNodePoolsResponse--;
  return o;
}

void checkListNodePoolsResponse(api.ListNodePoolsResponse o) {
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    checkUnnamed1977(o.nodePools);
  }
  buildCounterListNodePoolsResponse--;
}

core.List<core.String> buildUnnamed1978() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1978(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Operation> buildUnnamed1979() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1979(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.missingZones = buildUnnamed1978();
    o.operations = buildUnnamed1979();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    checkUnnamed1978(o.missingZones);
    checkUnnamed1979(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.UsableSubnetwork> buildUnnamed1980() {
  var o = <api.UsableSubnetwork>[];
  o.add(buildUsableSubnetwork());
  o.add(buildUsableSubnetwork());
  return o;
}

void checkUnnamed1980(core.List<api.UsableSubnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsableSubnetwork(o[0] as api.UsableSubnetwork);
  checkUsableSubnetwork(o[1] as api.UsableSubnetwork);
}

core.int buildCounterListUsableSubnetworksResponse = 0;
api.ListUsableSubnetworksResponse buildListUsableSubnetworksResponse() {
  var o = api.ListUsableSubnetworksResponse();
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    o.nextPageToken = 'foo';
    o.subnetworks = buildUnnamed1980();
  }
  buildCounterListUsableSubnetworksResponse--;
  return o;
}

void checkListUsableSubnetworksResponse(api.ListUsableSubnetworksResponse o) {
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1980(o.subnetworks);
  }
  buildCounterListUsableSubnetworksResponse--;
}

core.int buildCounterMaintenancePolicy = 0;
api.MaintenancePolicy buildMaintenancePolicy() {
  var o = api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.resourceVersion = 'foo';
    o.window = buildMaintenanceWindow();
  }
  buildCounterMaintenancePolicy--;
  return o;
}

void checkMaintenancePolicy(api.MaintenancePolicy o) {
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    unittest.expect(o.resourceVersion, unittest.equals('foo'));
    checkMaintenanceWindow(o.window as api.MaintenanceWindow);
  }
  buildCounterMaintenancePolicy--;
}

core.Map<core.String, api.TimeWindow> buildUnnamed1981() {
  var o = <core.String, api.TimeWindow>{};
  o['x'] = buildTimeWindow();
  o['y'] = buildTimeWindow();
  return o;
}

void checkUnnamed1981(core.Map<core.String, api.TimeWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeWindow(o['x'] as api.TimeWindow);
  checkTimeWindow(o['y'] as api.TimeWindow);
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  var o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.dailyMaintenanceWindow = buildDailyMaintenanceWindow();
    o.maintenanceExclusions = buildUnnamed1981();
    o.recurringWindow = buildRecurringTimeWindow();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    checkDailyMaintenanceWindow(
        o.dailyMaintenanceWindow as api.DailyMaintenanceWindow);
    checkUnnamed1981(o.maintenanceExclusions);
    checkRecurringTimeWindow(o.recurringWindow as api.RecurringTimeWindow);
  }
  buildCounterMaintenanceWindow--;
}

core.int buildCounterMasterAuth = 0;
api.MasterAuth buildMasterAuth() {
  var o = api.MasterAuth();
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    o.clientCertificate = 'foo';
    o.clientCertificateConfig = buildClientCertificateConfig();
    o.clientKey = 'foo';
    o.clusterCaCertificate = 'foo';
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterMasterAuth--;
  return o;
}

void checkMasterAuth(api.MasterAuth o) {
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    unittest.expect(o.clientCertificate, unittest.equals('foo'));
    checkClientCertificateConfig(
        o.clientCertificateConfig as api.ClientCertificateConfig);
    unittest.expect(o.clientKey, unittest.equals('foo'));
    unittest.expect(o.clusterCaCertificate, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterMasterAuth--;
}

core.List<api.CidrBlock> buildUnnamed1982() {
  var o = <api.CidrBlock>[];
  o.add(buildCidrBlock());
  o.add(buildCidrBlock());
  return o;
}

void checkUnnamed1982(core.List<api.CidrBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCidrBlock(o[0] as api.CidrBlock);
  checkCidrBlock(o[1] as api.CidrBlock);
}

core.int buildCounterMasterAuthorizedNetworksConfig = 0;
api.MasterAuthorizedNetworksConfig buildMasterAuthorizedNetworksConfig() {
  var o = api.MasterAuthorizedNetworksConfig();
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    o.cidrBlocks = buildUnnamed1982();
    o.enabled = true;
  }
  buildCounterMasterAuthorizedNetworksConfig--;
  return o;
}

void checkMasterAuthorizedNetworksConfig(api.MasterAuthorizedNetworksConfig o) {
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    checkUnnamed1982(o.cidrBlocks);
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterMasterAuthorizedNetworksConfig--;
}

core.int buildCounterMaxPodsConstraint = 0;
api.MaxPodsConstraint buildMaxPodsConstraint() {
  var o = api.MaxPodsConstraint();
  buildCounterMaxPodsConstraint++;
  if (buildCounterMaxPodsConstraint < 3) {
    o.maxPodsPerNode = 'foo';
  }
  buildCounterMaxPodsConstraint--;
  return o;
}

void checkMaxPodsConstraint(api.MaxPodsConstraint o) {
  buildCounterMaxPodsConstraint++;
  if (buildCounterMaxPodsConstraint < 3) {
    unittest.expect(o.maxPodsPerNode, unittest.equals('foo'));
  }
  buildCounterMaxPodsConstraint--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  var o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.doubleValue = 42.0;
    o.intValue = 'foo';
    o.name = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.intValue, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  var o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.defaultSnatStatus = buildDefaultSnatStatus();
    o.enableIntraNodeVisibility = true;
    o.network = 'foo';
    o.privateIpv6GoogleAccess = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    checkDefaultSnatStatus(o.defaultSnatStatus as api.DefaultSnatStatus);
    unittest.expect(o.enableIntraNodeVisibility, unittest.isTrue);
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.privateIpv6GoogleAccess, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNetworkPolicy = 0;
api.NetworkPolicy buildNetworkPolicy() {
  var o = api.NetworkPolicy();
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    o.enabled = true;
    o.provider = 'foo';
  }
  buildCounterNetworkPolicy--;
  return o;
}

void checkNetworkPolicy(api.NetworkPolicy o) {
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.provider, unittest.equals('foo'));
  }
  buildCounterNetworkPolicy--;
}

core.int buildCounterNetworkPolicyConfig = 0;
api.NetworkPolicyConfig buildNetworkPolicyConfig() {
  var o = api.NetworkPolicyConfig();
  buildCounterNetworkPolicyConfig++;
  if (buildCounterNetworkPolicyConfig < 3) {
    o.disabled = true;
  }
  buildCounterNetworkPolicyConfig--;
  return o;
}

void checkNetworkPolicyConfig(api.NetworkPolicyConfig o) {
  buildCounterNetworkPolicyConfig++;
  if (buildCounterNetworkPolicyConfig < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
  }
  buildCounterNetworkPolicyConfig--;
}

core.List<api.AcceleratorConfig> buildUnnamed1983() {
  var o = <api.AcceleratorConfig>[];
  o.add(buildAcceleratorConfig());
  o.add(buildAcceleratorConfig());
  return o;
}

void checkUnnamed1983(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0] as api.AcceleratorConfig);
  checkAcceleratorConfig(o[1] as api.AcceleratorConfig);
}

core.Map<core.String, core.String> buildUnnamed1984() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1984(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1985() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1985(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1986() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1986(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1987() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1987(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.NodeTaint> buildUnnamed1988() {
  var o = <api.NodeTaint>[];
  o.add(buildNodeTaint());
  o.add(buildNodeTaint());
  return o;
}

void checkUnnamed1988(core.List<api.NodeTaint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTaint(o[0] as api.NodeTaint);
  checkNodeTaint(o[1] as api.NodeTaint);
}

core.int buildCounterNodeConfig = 0;
api.NodeConfig buildNodeConfig() {
  var o = api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.accelerators = buildUnnamed1983();
    o.bootDiskKmsKey = 'foo';
    o.diskSizeGb = 42;
    o.diskType = 'foo';
    o.imageType = 'foo';
    o.kubeletConfig = buildNodeKubeletConfig();
    o.labels = buildUnnamed1984();
    o.linuxNodeConfig = buildLinuxNodeConfig();
    o.localSsdCount = 42;
    o.machineType = 'foo';
    o.metadata = buildUnnamed1985();
    o.minCpuPlatform = 'foo';
    o.nodeGroup = 'foo';
    o.oauthScopes = buildUnnamed1986();
    o.preemptible = true;
    o.reservationAffinity = buildReservationAffinity();
    o.sandboxConfig = buildSandboxConfig();
    o.serviceAccount = 'foo';
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.tags = buildUnnamed1987();
    o.taints = buildUnnamed1988();
    o.workloadMetadataConfig = buildWorkloadMetadataConfig();
  }
  buildCounterNodeConfig--;
  return o;
}

void checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    checkUnnamed1983(o.accelerators);
    unittest.expect(o.bootDiskKmsKey, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.imageType, unittest.equals('foo'));
    checkNodeKubeletConfig(o.kubeletConfig as api.NodeKubeletConfig);
    checkUnnamed1984(o.labels);
    checkLinuxNodeConfig(o.linuxNodeConfig as api.LinuxNodeConfig);
    unittest.expect(o.localSsdCount, unittest.equals(42));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkUnnamed1985(o.metadata);
    unittest.expect(o.minCpuPlatform, unittest.equals('foo'));
    unittest.expect(o.nodeGroup, unittest.equals('foo'));
    checkUnnamed1986(o.oauthScopes);
    unittest.expect(o.preemptible, unittest.isTrue);
    checkReservationAffinity(o.reservationAffinity as api.ReservationAffinity);
    checkSandboxConfig(o.sandboxConfig as api.SandboxConfig);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    checkShieldedInstanceConfig(
        o.shieldedInstanceConfig as api.ShieldedInstanceConfig);
    checkUnnamed1987(o.tags);
    checkUnnamed1988(o.taints);
    checkWorkloadMetadataConfig(
        o.workloadMetadataConfig as api.WorkloadMetadataConfig);
  }
  buildCounterNodeConfig--;
}

core.int buildCounterNodeKubeletConfig = 0;
api.NodeKubeletConfig buildNodeKubeletConfig() {
  var o = api.NodeKubeletConfig();
  buildCounterNodeKubeletConfig++;
  if (buildCounterNodeKubeletConfig < 3) {
    o.cpuCfsQuota = true;
    o.cpuCfsQuotaPeriod = 'foo';
    o.cpuManagerPolicy = 'foo';
  }
  buildCounterNodeKubeletConfig--;
  return o;
}

void checkNodeKubeletConfig(api.NodeKubeletConfig o) {
  buildCounterNodeKubeletConfig++;
  if (buildCounterNodeKubeletConfig < 3) {
    unittest.expect(o.cpuCfsQuota, unittest.isTrue);
    unittest.expect(o.cpuCfsQuotaPeriod, unittest.equals('foo'));
    unittest.expect(o.cpuManagerPolicy, unittest.equals('foo'));
  }
  buildCounterNodeKubeletConfig--;
}

core.int buildCounterNodeManagement = 0;
api.NodeManagement buildNodeManagement() {
  var o = api.NodeManagement();
  buildCounterNodeManagement++;
  if (buildCounterNodeManagement < 3) {
    o.autoRepair = true;
    o.autoUpgrade = true;
    o.upgradeOptions = buildAutoUpgradeOptions();
  }
  buildCounterNodeManagement--;
  return o;
}

void checkNodeManagement(api.NodeManagement o) {
  buildCounterNodeManagement++;
  if (buildCounterNodeManagement < 3) {
    unittest.expect(o.autoRepair, unittest.isTrue);
    unittest.expect(o.autoUpgrade, unittest.isTrue);
    checkAutoUpgradeOptions(o.upgradeOptions as api.AutoUpgradeOptions);
  }
  buildCounterNodeManagement--;
}

core.List<api.StatusCondition> buildUnnamed1989() {
  var o = <api.StatusCondition>[];
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

void checkUnnamed1989(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0] as api.StatusCondition);
  checkStatusCondition(o[1] as api.StatusCondition);
}

core.List<core.String> buildUnnamed1990() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1990(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1991() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1991(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNodePool = 0;
api.NodePool buildNodePool() {
  var o = api.NodePool();
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    o.autoscaling = buildNodePoolAutoscaling();
    o.conditions = buildUnnamed1989();
    o.config = buildNodeConfig();
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed1990();
    o.locations = buildUnnamed1991();
    o.management = buildNodeManagement();
    o.maxPodsConstraint = buildMaxPodsConstraint();
    o.name = 'foo';
    o.podIpv4CidrSize = 42;
    o.selfLink = 'foo';
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.upgradeSettings = buildUpgradeSettings();
    o.version = 'foo';
  }
  buildCounterNodePool--;
  return o;
}

void checkNodePool(api.NodePool o) {
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    checkNodePoolAutoscaling(o.autoscaling as api.NodePoolAutoscaling);
    checkUnnamed1989(o.conditions);
    checkNodeConfig(o.config as api.NodeConfig);
    unittest.expect(o.initialNodeCount, unittest.equals(42));
    checkUnnamed1990(o.instanceGroupUrls);
    checkUnnamed1991(o.locations);
    checkNodeManagement(o.management as api.NodeManagement);
    checkMaxPodsConstraint(o.maxPodsConstraint as api.MaxPodsConstraint);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.podIpv4CidrSize, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    checkUpgradeSettings(o.upgradeSettings as api.UpgradeSettings);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterNodePool--;
}

core.int buildCounterNodePoolAutoscaling = 0;
api.NodePoolAutoscaling buildNodePoolAutoscaling() {
  var o = api.NodePoolAutoscaling();
  buildCounterNodePoolAutoscaling++;
  if (buildCounterNodePoolAutoscaling < 3) {
    o.autoprovisioned = true;
    o.enabled = true;
    o.maxNodeCount = 42;
    o.minNodeCount = 42;
  }
  buildCounterNodePoolAutoscaling--;
  return o;
}

void checkNodePoolAutoscaling(api.NodePoolAutoscaling o) {
  buildCounterNodePoolAutoscaling++;
  if (buildCounterNodePoolAutoscaling < 3) {
    unittest.expect(o.autoprovisioned, unittest.isTrue);
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.maxNodeCount, unittest.equals(42));
    unittest.expect(o.minNodeCount, unittest.equals(42));
  }
  buildCounterNodePoolAutoscaling--;
}

core.int buildCounterNodeTaint = 0;
api.NodeTaint buildNodeTaint() {
  var o = api.NodeTaint();
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    o.effect = 'foo';
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterNodeTaint--;
  return o;
}

void checkNodeTaint(api.NodeTaint o) {
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    unittest.expect(o.effect, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterNodeTaint--;
}

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  var o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.pubsub = buildPubSub();
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    checkPubSub(o.pubsub as api.PubSub);
  }
  buildCounterNotificationConfig--;
}

core.List<api.StatusCondition> buildUnnamed1992() {
  var o = <api.StatusCondition>[];
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

void checkUnnamed1992(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0] as api.StatusCondition);
  checkStatusCondition(o[1] as api.StatusCondition);
}

core.List<api.StatusCondition> buildUnnamed1993() {
  var o = <api.StatusCondition>[];
  o.add(buildStatusCondition());
  o.add(buildStatusCondition());
  return o;
}

void checkUnnamed1993(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0] as api.StatusCondition);
  checkStatusCondition(o[1] as api.StatusCondition);
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clusterConditions = buildUnnamed1992();
    o.detail = 'foo';
    o.endTime = 'foo';
    o.location = 'foo';
    o.name = 'foo';
    o.nodepoolConditions = buildUnnamed1993();
    o.operationType = 'foo';
    o.progress = buildOperationProgress();
    o.selfLink = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.targetLink = 'foo';
    o.zone = 'foo';
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    checkUnnamed1992(o.clusterConditions);
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1993(o.nodepoolConditions);
    unittest.expect(o.operationType, unittest.equals('foo'));
    checkOperationProgress(o.progress as api.OperationProgress);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.targetLink, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

core.List<api.Metric> buildUnnamed1994() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed1994(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0] as api.Metric);
  checkMetric(o[1] as api.Metric);
}

core.List<api.OperationProgress> buildUnnamed1995() {
  var o = <api.OperationProgress>[];
  o.add(buildOperationProgress());
  o.add(buildOperationProgress());
  return o;
}

void checkUnnamed1995(core.List<api.OperationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationProgress(o[0] as api.OperationProgress);
  checkOperationProgress(o[1] as api.OperationProgress);
}

core.int buildCounterOperationProgress = 0;
api.OperationProgress buildOperationProgress() {
  var o = api.OperationProgress();
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    o.metrics = buildUnnamed1994();
    o.name = 'foo';
    o.stages = buildUnnamed1995();
    o.status = 'foo';
  }
  buildCounterOperationProgress--;
  return o;
}

void checkOperationProgress(api.OperationProgress o) {
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    checkUnnamed1994(o.metrics);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1995(o.stages);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterOperationProgress--;
}

core.int buildCounterPrivateClusterConfig = 0;
api.PrivateClusterConfig buildPrivateClusterConfig() {
  var o = api.PrivateClusterConfig();
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    o.enablePrivateEndpoint = true;
    o.enablePrivateNodes = true;
    o.masterGlobalAccessConfig = buildPrivateClusterMasterGlobalAccessConfig();
    o.masterIpv4CidrBlock = 'foo';
    o.peeringName = 'foo';
    o.privateEndpoint = 'foo';
    o.publicEndpoint = 'foo';
  }
  buildCounterPrivateClusterConfig--;
  return o;
}

void checkPrivateClusterConfig(api.PrivateClusterConfig o) {
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    unittest.expect(o.enablePrivateEndpoint, unittest.isTrue);
    unittest.expect(o.enablePrivateNodes, unittest.isTrue);
    checkPrivateClusterMasterGlobalAccessConfig(o.masterGlobalAccessConfig
        as api.PrivateClusterMasterGlobalAccessConfig);
    unittest.expect(o.masterIpv4CidrBlock, unittest.equals('foo'));
    unittest.expect(o.peeringName, unittest.equals('foo'));
    unittest.expect(o.privateEndpoint, unittest.equals('foo'));
    unittest.expect(o.publicEndpoint, unittest.equals('foo'));
  }
  buildCounterPrivateClusterConfig--;
}

core.int buildCounterPrivateClusterMasterGlobalAccessConfig = 0;
api.PrivateClusterMasterGlobalAccessConfig
    buildPrivateClusterMasterGlobalAccessConfig() {
  var o = api.PrivateClusterMasterGlobalAccessConfig();
  buildCounterPrivateClusterMasterGlobalAccessConfig++;
  if (buildCounterPrivateClusterMasterGlobalAccessConfig < 3) {
    o.enabled = true;
  }
  buildCounterPrivateClusterMasterGlobalAccessConfig--;
  return o;
}

void checkPrivateClusterMasterGlobalAccessConfig(
    api.PrivateClusterMasterGlobalAccessConfig o) {
  buildCounterPrivateClusterMasterGlobalAccessConfig++;
  if (buildCounterPrivateClusterMasterGlobalAccessConfig < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterPrivateClusterMasterGlobalAccessConfig--;
}

core.int buildCounterPubSub = 0;
api.PubSub buildPubSub() {
  var o = api.PubSub();
  buildCounterPubSub++;
  if (buildCounterPubSub < 3) {
    o.enabled = true;
    o.topic = 'foo';
  }
  buildCounterPubSub--;
  return o;
}

void checkPubSub(api.PubSub o) {
  buildCounterPubSub++;
  if (buildCounterPubSub < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterPubSub--;
}

core.int buildCounterRecurringTimeWindow = 0;
api.RecurringTimeWindow buildRecurringTimeWindow() {
  var o = api.RecurringTimeWindow();
  buildCounterRecurringTimeWindow++;
  if (buildCounterRecurringTimeWindow < 3) {
    o.recurrence = 'foo';
    o.window = buildTimeWindow();
  }
  buildCounterRecurringTimeWindow--;
  return o;
}

void checkRecurringTimeWindow(api.RecurringTimeWindow o) {
  buildCounterRecurringTimeWindow++;
  if (buildCounterRecurringTimeWindow < 3) {
    unittest.expect(o.recurrence, unittest.equals('foo'));
    checkTimeWindow(o.window as api.TimeWindow);
  }
  buildCounterRecurringTimeWindow--;
}

core.int buildCounterReleaseChannel = 0;
api.ReleaseChannel buildReleaseChannel() {
  var o = api.ReleaseChannel();
  buildCounterReleaseChannel++;
  if (buildCounterReleaseChannel < 3) {
    o.channel = 'foo';
  }
  buildCounterReleaseChannel--;
  return o;
}

void checkReleaseChannel(api.ReleaseChannel o) {
  buildCounterReleaseChannel++;
  if (buildCounterReleaseChannel < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
  }
  buildCounterReleaseChannel--;
}

core.List<core.String> buildUnnamed1996() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1996(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReleaseChannelConfig = 0;
api.ReleaseChannelConfig buildReleaseChannelConfig() {
  var o = api.ReleaseChannelConfig();
  buildCounterReleaseChannelConfig++;
  if (buildCounterReleaseChannelConfig < 3) {
    o.channel = 'foo';
    o.defaultVersion = 'foo';
    o.validVersions = buildUnnamed1996();
  }
  buildCounterReleaseChannelConfig--;
  return o;
}

void checkReleaseChannelConfig(api.ReleaseChannelConfig o) {
  buildCounterReleaseChannelConfig++;
  if (buildCounterReleaseChannelConfig < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.defaultVersion, unittest.equals('foo'));
    checkUnnamed1996(o.validVersions);
  }
  buildCounterReleaseChannelConfig--;
}

core.List<core.String> buildUnnamed1997() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1997(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReservationAffinity = 0;
api.ReservationAffinity buildReservationAffinity() {
  var o = api.ReservationAffinity();
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    o.consumeReservationType = 'foo';
    o.key = 'foo';
    o.values = buildUnnamed1997();
  }
  buildCounterReservationAffinity--;
  return o;
}

void checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(o.consumeReservationType, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed1997(o.values);
  }
  buildCounterReservationAffinity--;
}

core.int buildCounterResourceLimit = 0;
api.ResourceLimit buildResourceLimit() {
  var o = api.ResourceLimit();
  buildCounterResourceLimit++;
  if (buildCounterResourceLimit < 3) {
    o.maximum = 'foo';
    o.minimum = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterResourceLimit--;
  return o;
}

void checkResourceLimit(api.ResourceLimit o) {
  buildCounterResourceLimit++;
  if (buildCounterResourceLimit < 3) {
    unittest.expect(o.maximum, unittest.equals('foo'));
    unittest.expect(o.minimum, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterResourceLimit--;
}

core.int buildCounterResourceUsageExportConfig = 0;
api.ResourceUsageExportConfig buildResourceUsageExportConfig() {
  var o = api.ResourceUsageExportConfig();
  buildCounterResourceUsageExportConfig++;
  if (buildCounterResourceUsageExportConfig < 3) {
    o.bigqueryDestination = buildBigQueryDestination();
    o.consumptionMeteringConfig = buildConsumptionMeteringConfig();
    o.enableNetworkEgressMetering = true;
  }
  buildCounterResourceUsageExportConfig--;
  return o;
}

void checkResourceUsageExportConfig(api.ResourceUsageExportConfig o) {
  buildCounterResourceUsageExportConfig++;
  if (buildCounterResourceUsageExportConfig < 3) {
    checkBigQueryDestination(o.bigqueryDestination as api.BigQueryDestination);
    checkConsumptionMeteringConfig(
        o.consumptionMeteringConfig as api.ConsumptionMeteringConfig);
    unittest.expect(o.enableNetworkEgressMetering, unittest.isTrue);
  }
  buildCounterResourceUsageExportConfig--;
}

core.int buildCounterRollbackNodePoolUpgradeRequest = 0;
api.RollbackNodePoolUpgradeRequest buildRollbackNodePoolUpgradeRequest() {
  var o = api.RollbackNodePoolUpgradeRequest();
  buildCounterRollbackNodePoolUpgradeRequest++;
  if (buildCounterRollbackNodePoolUpgradeRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterRollbackNodePoolUpgradeRequest--;
  return o;
}

void checkRollbackNodePoolUpgradeRequest(api.RollbackNodePoolUpgradeRequest o) {
  buildCounterRollbackNodePoolUpgradeRequest++;
  if (buildCounterRollbackNodePoolUpgradeRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterRollbackNodePoolUpgradeRequest--;
}

core.int buildCounterSandboxConfig = 0;
api.SandboxConfig buildSandboxConfig() {
  var o = api.SandboxConfig();
  buildCounterSandboxConfig++;
  if (buildCounterSandboxConfig < 3) {
    o.type = 'foo';
  }
  buildCounterSandboxConfig--;
  return o;
}

void checkSandboxConfig(api.SandboxConfig o) {
  buildCounterSandboxConfig++;
  if (buildCounterSandboxConfig < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSandboxConfig--;
}

core.List<api.ReleaseChannelConfig> buildUnnamed1998() {
  var o = <api.ReleaseChannelConfig>[];
  o.add(buildReleaseChannelConfig());
  o.add(buildReleaseChannelConfig());
  return o;
}

void checkUnnamed1998(core.List<api.ReleaseChannelConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReleaseChannelConfig(o[0] as api.ReleaseChannelConfig);
  checkReleaseChannelConfig(o[1] as api.ReleaseChannelConfig);
}

core.List<core.String> buildUnnamed1999() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1999(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2000() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2000(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2001() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2001(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServerConfig = 0;
api.ServerConfig buildServerConfig() {
  var o = api.ServerConfig();
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    o.channels = buildUnnamed1998();
    o.defaultClusterVersion = 'foo';
    o.defaultImageType = 'foo';
    o.validImageTypes = buildUnnamed1999();
    o.validMasterVersions = buildUnnamed2000();
    o.validNodeVersions = buildUnnamed2001();
  }
  buildCounterServerConfig--;
  return o;
}

void checkServerConfig(api.ServerConfig o) {
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    checkUnnamed1998(o.channels);
    unittest.expect(o.defaultClusterVersion, unittest.equals('foo'));
    unittest.expect(o.defaultImageType, unittest.equals('foo'));
    checkUnnamed1999(o.validImageTypes);
    checkUnnamed2000(o.validMasterVersions);
    checkUnnamed2001(o.validNodeVersions);
  }
  buildCounterServerConfig--;
}

core.int buildCounterSetAddonsConfigRequest = 0;
api.SetAddonsConfigRequest buildSetAddonsConfigRequest() {
  var o = api.SetAddonsConfigRequest();
  buildCounterSetAddonsConfigRequest++;
  if (buildCounterSetAddonsConfigRequest < 3) {
    o.addonsConfig = buildAddonsConfig();
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetAddonsConfigRequest--;
  return o;
}

void checkSetAddonsConfigRequest(api.SetAddonsConfigRequest o) {
  buildCounterSetAddonsConfigRequest++;
  if (buildCounterSetAddonsConfigRequest < 3) {
    checkAddonsConfig(o.addonsConfig as api.AddonsConfig);
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetAddonsConfigRequest--;
}

core.Map<core.String, core.String> buildUnnamed2002() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2002(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterSetLabelsRequest = 0;
api.SetLabelsRequest buildSetLabelsRequest() {
  var o = api.SetLabelsRequest();
  buildCounterSetLabelsRequest++;
  if (buildCounterSetLabelsRequest < 3) {
    o.clusterId = 'foo';
    o.labelFingerprint = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.resourceLabels = buildUnnamed2002();
    o.zone = 'foo';
  }
  buildCounterSetLabelsRequest--;
  return o;
}

void checkSetLabelsRequest(api.SetLabelsRequest o) {
  buildCounterSetLabelsRequest++;
  if (buildCounterSetLabelsRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed2002(o.resourceLabels);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetLabelsRequest--;
}

core.int buildCounterSetLegacyAbacRequest = 0;
api.SetLegacyAbacRequest buildSetLegacyAbacRequest() {
  var o = api.SetLegacyAbacRequest();
  buildCounterSetLegacyAbacRequest++;
  if (buildCounterSetLegacyAbacRequest < 3) {
    o.clusterId = 'foo';
    o.enabled = true;
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLegacyAbacRequest--;
  return o;
}

void checkSetLegacyAbacRequest(api.SetLegacyAbacRequest o) {
  buildCounterSetLegacyAbacRequest++;
  if (buildCounterSetLegacyAbacRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetLegacyAbacRequest--;
}

core.List<core.String> buildUnnamed2003() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2003(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSetLocationsRequest = 0;
api.SetLocationsRequest buildSetLocationsRequest() {
  var o = api.SetLocationsRequest();
  buildCounterSetLocationsRequest++;
  if (buildCounterSetLocationsRequest < 3) {
    o.clusterId = 'foo';
    o.locations = buildUnnamed2003();
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLocationsRequest--;
  return o;
}

void checkSetLocationsRequest(api.SetLocationsRequest o) {
  buildCounterSetLocationsRequest++;
  if (buildCounterSetLocationsRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkUnnamed2003(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetLocationsRequest--;
}

core.int buildCounterSetLoggingServiceRequest = 0;
api.SetLoggingServiceRequest buildSetLoggingServiceRequest() {
  var o = api.SetLoggingServiceRequest();
  buildCounterSetLoggingServiceRequest++;
  if (buildCounterSetLoggingServiceRequest < 3) {
    o.clusterId = 'foo';
    o.loggingService = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLoggingServiceRequest--;
  return o;
}

void checkSetLoggingServiceRequest(api.SetLoggingServiceRequest o) {
  buildCounterSetLoggingServiceRequest++;
  if (buildCounterSetLoggingServiceRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.loggingService, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetLoggingServiceRequest--;
}

core.int buildCounterSetMaintenancePolicyRequest = 0;
api.SetMaintenancePolicyRequest buildSetMaintenancePolicyRequest() {
  var o = api.SetMaintenancePolicyRequest();
  buildCounterSetMaintenancePolicyRequest++;
  if (buildCounterSetMaintenancePolicyRequest < 3) {
    o.clusterId = 'foo';
    o.maintenancePolicy = buildMaintenancePolicy();
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetMaintenancePolicyRequest--;
  return o;
}

void checkSetMaintenancePolicyRequest(api.SetMaintenancePolicyRequest o) {
  buildCounterSetMaintenancePolicyRequest++;
  if (buildCounterSetMaintenancePolicyRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkMaintenancePolicy(o.maintenancePolicy as api.MaintenancePolicy);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetMaintenancePolicyRequest--;
}

core.int buildCounterSetMasterAuthRequest = 0;
api.SetMasterAuthRequest buildSetMasterAuthRequest() {
  var o = api.SetMasterAuthRequest();
  buildCounterSetMasterAuthRequest++;
  if (buildCounterSetMasterAuthRequest < 3) {
    o.action = 'foo';
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.update = buildMasterAuth();
    o.zone = 'foo';
  }
  buildCounterSetMasterAuthRequest--;
  return o;
}

void checkSetMasterAuthRequest(api.SetMasterAuthRequest o) {
  buildCounterSetMasterAuthRequest++;
  if (buildCounterSetMasterAuthRequest < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkMasterAuth(o.update as api.MasterAuth);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetMasterAuthRequest--;
}

core.int buildCounterSetMonitoringServiceRequest = 0;
api.SetMonitoringServiceRequest buildSetMonitoringServiceRequest() {
  var o = api.SetMonitoringServiceRequest();
  buildCounterSetMonitoringServiceRequest++;
  if (buildCounterSetMonitoringServiceRequest < 3) {
    o.clusterId = 'foo';
    o.monitoringService = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetMonitoringServiceRequest--;
  return o;
}

void checkSetMonitoringServiceRequest(api.SetMonitoringServiceRequest o) {
  buildCounterSetMonitoringServiceRequest++;
  if (buildCounterSetMonitoringServiceRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.monitoringService, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetMonitoringServiceRequest--;
}

core.int buildCounterSetNetworkPolicyRequest = 0;
api.SetNetworkPolicyRequest buildSetNetworkPolicyRequest() {
  var o = api.SetNetworkPolicyRequest();
  buildCounterSetNetworkPolicyRequest++;
  if (buildCounterSetNetworkPolicyRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.networkPolicy = buildNetworkPolicy();
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNetworkPolicyRequest--;
  return o;
}

void checkSetNetworkPolicyRequest(api.SetNetworkPolicyRequest o) {
  buildCounterSetNetworkPolicyRequest++;
  if (buildCounterSetNetworkPolicyRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkNetworkPolicy(o.networkPolicy as api.NetworkPolicy);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetNetworkPolicyRequest--;
}

core.int buildCounterSetNodePoolAutoscalingRequest = 0;
api.SetNodePoolAutoscalingRequest buildSetNodePoolAutoscalingRequest() {
  var o = api.SetNodePoolAutoscalingRequest();
  buildCounterSetNodePoolAutoscalingRequest++;
  if (buildCounterSetNodePoolAutoscalingRequest < 3) {
    o.autoscaling = buildNodePoolAutoscaling();
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolAutoscalingRequest--;
  return o;
}

void checkSetNodePoolAutoscalingRequest(api.SetNodePoolAutoscalingRequest o) {
  buildCounterSetNodePoolAutoscalingRequest++;
  if (buildCounterSetNodePoolAutoscalingRequest < 3) {
    checkNodePoolAutoscaling(o.autoscaling as api.NodePoolAutoscaling);
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetNodePoolAutoscalingRequest--;
}

core.int buildCounterSetNodePoolManagementRequest = 0;
api.SetNodePoolManagementRequest buildSetNodePoolManagementRequest() {
  var o = api.SetNodePoolManagementRequest();
  buildCounterSetNodePoolManagementRequest++;
  if (buildCounterSetNodePoolManagementRequest < 3) {
    o.clusterId = 'foo';
    o.management = buildNodeManagement();
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolManagementRequest--;
  return o;
}

void checkSetNodePoolManagementRequest(api.SetNodePoolManagementRequest o) {
  buildCounterSetNodePoolManagementRequest++;
  if (buildCounterSetNodePoolManagementRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    checkNodeManagement(o.management as api.NodeManagement);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetNodePoolManagementRequest--;
}

core.int buildCounterSetNodePoolSizeRequest = 0;
api.SetNodePoolSizeRequest buildSetNodePoolSizeRequest() {
  var o = api.SetNodePoolSizeRequest();
  buildCounterSetNodePoolSizeRequest++;
  if (buildCounterSetNodePoolSizeRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodeCount = 42;
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolSizeRequest--;
  return o;
}

void checkSetNodePoolSizeRequest(api.SetNodePoolSizeRequest o) {
  buildCounterSetNodePoolSizeRequest++;
  if (buildCounterSetNodePoolSizeRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodeCount, unittest.equals(42));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterSetNodePoolSizeRequest--;
}

core.int buildCounterShieldedInstanceConfig = 0;
api.ShieldedInstanceConfig buildShieldedInstanceConfig() {
  var o = api.ShieldedInstanceConfig();
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
  }
  buildCounterShieldedInstanceConfig--;
  return o;
}

void checkShieldedInstanceConfig(api.ShieldedInstanceConfig o) {
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring, unittest.isTrue);
    unittest.expect(o.enableSecureBoot, unittest.isTrue);
  }
  buildCounterShieldedInstanceConfig--;
}

core.int buildCounterShieldedNodes = 0;
api.ShieldedNodes buildShieldedNodes() {
  var o = api.ShieldedNodes();
  buildCounterShieldedNodes++;
  if (buildCounterShieldedNodes < 3) {
    o.enabled = true;
  }
  buildCounterShieldedNodes--;
  return o;
}

void checkShieldedNodes(api.ShieldedNodes o) {
  buildCounterShieldedNodes++;
  if (buildCounterShieldedNodes < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterShieldedNodes--;
}

core.int buildCounterStartIPRotationRequest = 0;
api.StartIPRotationRequest buildStartIPRotationRequest() {
  var o = api.StartIPRotationRequest();
  buildCounterStartIPRotationRequest++;
  if (buildCounterStartIPRotationRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.rotateCredentials = true;
    o.zone = 'foo';
  }
  buildCounterStartIPRotationRequest--;
  return o;
}

void checkStartIPRotationRequest(api.StartIPRotationRequest o) {
  buildCounterStartIPRotationRequest++;
  if (buildCounterStartIPRotationRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.rotateCredentials, unittest.isTrue);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterStartIPRotationRequest--;
}

core.int buildCounterStatusCondition = 0;
api.StatusCondition buildStatusCondition() {
  var o = api.StatusCondition();
  buildCounterStatusCondition++;
  if (buildCounterStatusCondition < 3) {
    o.code = 'foo';
    o.message = 'foo';
  }
  buildCounterStatusCondition--;
  return o;
}

void checkStatusCondition(api.StatusCondition o) {
  buildCounterStatusCondition++;
  if (buildCounterStatusCondition < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatusCondition--;
}

core.int buildCounterTimeWindow = 0;
api.TimeWindow buildTimeWindow() {
  var o = api.TimeWindow();
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeWindow--;
  return o;
}

void checkTimeWindow(api.TimeWindow o) {
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeWindow--;
}

core.int buildCounterUpdateClusterRequest = 0;
api.UpdateClusterRequest buildUpdateClusterRequest() {
  var o = api.UpdateClusterRequest();
  buildCounterUpdateClusterRequest++;
  if (buildCounterUpdateClusterRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.update = buildClusterUpdate();
    o.zone = 'foo';
  }
  buildCounterUpdateClusterRequest--;
  return o;
}

void checkUpdateClusterRequest(api.UpdateClusterRequest o) {
  buildCounterUpdateClusterRequest++;
  if (buildCounterUpdateClusterRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkClusterUpdate(o.update as api.ClusterUpdate);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateClusterRequest--;
}

core.int buildCounterUpdateMasterRequest = 0;
api.UpdateMasterRequest buildUpdateMasterRequest() {
  var o = api.UpdateMasterRequest();
  buildCounterUpdateMasterRequest++;
  if (buildCounterUpdateMasterRequest < 3) {
    o.clusterId = 'foo';
    o.masterVersion = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterUpdateMasterRequest--;
  return o;
}

void checkUpdateMasterRequest(api.UpdateMasterRequest o) {
  buildCounterUpdateMasterRequest++;
  if (buildCounterUpdateMasterRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.masterVersion, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateMasterRequest--;
}

core.List<core.String> buildUnnamed2004() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2004(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateNodePoolRequest = 0;
api.UpdateNodePoolRequest buildUpdateNodePoolRequest() {
  var o = api.UpdateNodePoolRequest();
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    o.clusterId = 'foo';
    o.imageType = 'foo';
    o.kubeletConfig = buildNodeKubeletConfig();
    o.linuxNodeConfig = buildLinuxNodeConfig();
    o.locations = buildUnnamed2004();
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.nodeVersion = 'foo';
    o.projectId = 'foo';
    o.upgradeSettings = buildUpgradeSettings();
    o.workloadMetadataConfig = buildWorkloadMetadataConfig();
    o.zone = 'foo';
  }
  buildCounterUpdateNodePoolRequest--;
  return o;
}

void checkUpdateNodePoolRequest(api.UpdateNodePoolRequest o) {
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.imageType, unittest.equals('foo'));
    checkNodeKubeletConfig(o.kubeletConfig as api.NodeKubeletConfig);
    checkLinuxNodeConfig(o.linuxNodeConfig as api.LinuxNodeConfig);
    checkUnnamed2004(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodePoolId, unittest.equals('foo'));
    unittest.expect(o.nodeVersion, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUpgradeSettings(o.upgradeSettings as api.UpgradeSettings);
    checkWorkloadMetadataConfig(
        o.workloadMetadataConfig as api.WorkloadMetadataConfig);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateNodePoolRequest--;
}

core.int buildCounterUpgradeEvent = 0;
api.UpgradeEvent buildUpgradeEvent() {
  var o = api.UpgradeEvent();
  buildCounterUpgradeEvent++;
  if (buildCounterUpgradeEvent < 3) {
    o.currentVersion = 'foo';
    o.operation = 'foo';
    o.operationStartTime = 'foo';
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.targetVersion = 'foo';
  }
  buildCounterUpgradeEvent--;
  return o;
}

void checkUpgradeEvent(api.UpgradeEvent o) {
  buildCounterUpgradeEvent++;
  if (buildCounterUpgradeEvent < 3) {
    unittest.expect(o.currentVersion, unittest.equals('foo'));
    unittest.expect(o.operation, unittest.equals('foo'));
    unittest.expect(o.operationStartTime, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
    unittest.expect(o.targetVersion, unittest.equals('foo'));
  }
  buildCounterUpgradeEvent--;
}

core.int buildCounterUpgradeSettings = 0;
api.UpgradeSettings buildUpgradeSettings() {
  var o = api.UpgradeSettings();
  buildCounterUpgradeSettings++;
  if (buildCounterUpgradeSettings < 3) {
    o.maxSurge = 42;
    o.maxUnavailable = 42;
  }
  buildCounterUpgradeSettings--;
  return o;
}

void checkUpgradeSettings(api.UpgradeSettings o) {
  buildCounterUpgradeSettings++;
  if (buildCounterUpgradeSettings < 3) {
    unittest.expect(o.maxSurge, unittest.equals(42));
    unittest.expect(o.maxUnavailable, unittest.equals(42));
  }
  buildCounterUpgradeSettings--;
}

core.List<api.UsableSubnetworkSecondaryRange> buildUnnamed2005() {
  var o = <api.UsableSubnetworkSecondaryRange>[];
  o.add(buildUsableSubnetworkSecondaryRange());
  o.add(buildUsableSubnetworkSecondaryRange());
  return o;
}

void checkUnnamed2005(core.List<api.UsableSubnetworkSecondaryRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsableSubnetworkSecondaryRange(
      o[0] as api.UsableSubnetworkSecondaryRange);
  checkUsableSubnetworkSecondaryRange(
      o[1] as api.UsableSubnetworkSecondaryRange);
}

core.int buildCounterUsableSubnetwork = 0;
api.UsableSubnetwork buildUsableSubnetwork() {
  var o = api.UsableSubnetwork();
  buildCounterUsableSubnetwork++;
  if (buildCounterUsableSubnetwork < 3) {
    o.ipCidrRange = 'foo';
    o.network = 'foo';
    o.secondaryIpRanges = buildUnnamed2005();
    o.statusMessage = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterUsableSubnetwork--;
  return o;
}

void checkUsableSubnetwork(api.UsableSubnetwork o) {
  buildCounterUsableSubnetwork++;
  if (buildCounterUsableSubnetwork < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    checkUnnamed2005(o.secondaryIpRanges);
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
  }
  buildCounterUsableSubnetwork--;
}

core.int buildCounterUsableSubnetworkSecondaryRange = 0;
api.UsableSubnetworkSecondaryRange buildUsableSubnetworkSecondaryRange() {
  var o = api.UsableSubnetworkSecondaryRange();
  buildCounterUsableSubnetworkSecondaryRange++;
  if (buildCounterUsableSubnetworkSecondaryRange < 3) {
    o.ipCidrRange = 'foo';
    o.rangeName = 'foo';
    o.status = 'foo';
  }
  buildCounterUsableSubnetworkSecondaryRange--;
  return o;
}

void checkUsableSubnetworkSecondaryRange(api.UsableSubnetworkSecondaryRange o) {
  buildCounterUsableSubnetworkSecondaryRange++;
  if (buildCounterUsableSubnetworkSecondaryRange < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.rangeName, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterUsableSubnetworkSecondaryRange--;
}

core.int buildCounterVerticalPodAutoscaling = 0;
api.VerticalPodAutoscaling buildVerticalPodAutoscaling() {
  var o = api.VerticalPodAutoscaling();
  buildCounterVerticalPodAutoscaling++;
  if (buildCounterVerticalPodAutoscaling < 3) {
    o.enabled = true;
  }
  buildCounterVerticalPodAutoscaling--;
  return o;
}

void checkVerticalPodAutoscaling(api.VerticalPodAutoscaling o) {
  buildCounterVerticalPodAutoscaling++;
  if (buildCounterVerticalPodAutoscaling < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterVerticalPodAutoscaling--;
}

core.int buildCounterWorkloadIdentityConfig = 0;
api.WorkloadIdentityConfig buildWorkloadIdentityConfig() {
  var o = api.WorkloadIdentityConfig();
  buildCounterWorkloadIdentityConfig++;
  if (buildCounterWorkloadIdentityConfig < 3) {
    o.workloadPool = 'foo';
  }
  buildCounterWorkloadIdentityConfig--;
  return o;
}

void checkWorkloadIdentityConfig(api.WorkloadIdentityConfig o) {
  buildCounterWorkloadIdentityConfig++;
  if (buildCounterWorkloadIdentityConfig < 3) {
    unittest.expect(o.workloadPool, unittest.equals('foo'));
  }
  buildCounterWorkloadIdentityConfig--;
}

core.int buildCounterWorkloadMetadataConfig = 0;
api.WorkloadMetadataConfig buildWorkloadMetadataConfig() {
  var o = api.WorkloadMetadataConfig();
  buildCounterWorkloadMetadataConfig++;
  if (buildCounterWorkloadMetadataConfig < 3) {
    o.mode = 'foo';
  }
  buildCounterWorkloadMetadataConfig--;
  return o;
}

void checkWorkloadMetadataConfig(api.WorkloadMetadataConfig o) {
  buildCounterWorkloadMetadataConfig++;
  if (buildCounterWorkloadMetadataConfig < 3) {
    unittest.expect(o.mode, unittest.equals('foo'));
  }
  buildCounterWorkloadMetadataConfig--;
}

void main() {
  unittest.group('obj-schema-AcceleratorConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAcceleratorConfig();
      var od = api.AcceleratorConfig.fromJson(o.toJson());
      checkAcceleratorConfig(od as api.AcceleratorConfig);
    });
  });

  unittest.group('obj-schema-AddonsConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddonsConfig();
      var od = api.AddonsConfig.fromJson(o.toJson());
      checkAddonsConfig(od as api.AddonsConfig);
    });
  });

  unittest.group('obj-schema-AuthenticatorGroupsConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthenticatorGroupsConfig();
      var od = api.AuthenticatorGroupsConfig.fromJson(o.toJson());
      checkAuthenticatorGroupsConfig(od as api.AuthenticatorGroupsConfig);
    });
  });

  unittest.group('obj-schema-AutoUpgradeOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoUpgradeOptions();
      var od = api.AutoUpgradeOptions.fromJson(o.toJson());
      checkAutoUpgradeOptions(od as api.AutoUpgradeOptions);
    });
  });

  unittest.group('obj-schema-Autopilot', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutopilot();
      var od = api.Autopilot.fromJson(o.toJson());
      checkAutopilot(od as api.Autopilot);
    });
  });

  unittest.group('obj-schema-AutoprovisioningNodePoolDefaults', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoprovisioningNodePoolDefaults();
      var od = api.AutoprovisioningNodePoolDefaults.fromJson(o.toJson());
      checkAutoprovisioningNodePoolDefaults(
          od as api.AutoprovisioningNodePoolDefaults);
    });
  });

  unittest.group('obj-schema-BigQueryDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigQueryDestination();
      var od = api.BigQueryDestination.fromJson(o.toJson());
      checkBigQueryDestination(od as api.BigQueryDestination);
    });
  });

  unittest.group('obj-schema-BinaryAuthorization', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinaryAuthorization();
      var od = api.BinaryAuthorization.fromJson(o.toJson());
      checkBinaryAuthorization(od as api.BinaryAuthorization);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-CidrBlock', () {
    unittest.test('to-json--from-json', () {
      var o = buildCidrBlock();
      var od = api.CidrBlock.fromJson(o.toJson());
      checkCidrBlock(od as api.CidrBlock);
    });
  });

  unittest.group('obj-schema-ClientCertificateConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildClientCertificateConfig();
      var od = api.ClientCertificateConfig.fromJson(o.toJson());
      checkClientCertificateConfig(od as api.ClientCertificateConfig);
    });
  });

  unittest.group('obj-schema-CloudRunConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudRunConfig();
      var od = api.CloudRunConfig.fromJson(o.toJson());
      checkCloudRunConfig(od as api.CloudRunConfig);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () {
      var o = buildCluster();
      var od = api.Cluster.fromJson(o.toJson());
      checkCluster(od as api.Cluster);
    });
  });

  unittest.group('obj-schema-ClusterAutoscaling', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterAutoscaling();
      var od = api.ClusterAutoscaling.fromJson(o.toJson());
      checkClusterAutoscaling(od as api.ClusterAutoscaling);
    });
  });

  unittest.group('obj-schema-ClusterUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterUpdate();
      var od = api.ClusterUpdate.fromJson(o.toJson());
      checkClusterUpdate(od as api.ClusterUpdate);
    });
  });

  unittest.group('obj-schema-CompleteIPRotationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompleteIPRotationRequest();
      var od = api.CompleteIPRotationRequest.fromJson(o.toJson());
      checkCompleteIPRotationRequest(od as api.CompleteIPRotationRequest);
    });
  });

  unittest.group('obj-schema-ConfigConnectorConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigConnectorConfig();
      var od = api.ConfigConnectorConfig.fromJson(o.toJson());
      checkConfigConnectorConfig(od as api.ConfigConnectorConfig);
    });
  });

  unittest.group('obj-schema-ConsumptionMeteringConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildConsumptionMeteringConfig();
      var od = api.ConsumptionMeteringConfig.fromJson(o.toJson());
      checkConsumptionMeteringConfig(od as api.ConsumptionMeteringConfig);
    });
  });

  unittest.group('obj-schema-CreateClusterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateClusterRequest();
      var od = api.CreateClusterRequest.fromJson(o.toJson());
      checkCreateClusterRequest(od as api.CreateClusterRequest);
    });
  });

  unittest.group('obj-schema-CreateNodePoolRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateNodePoolRequest();
      var od = api.CreateNodePoolRequest.fromJson(o.toJson());
      checkCreateNodePoolRequest(od as api.CreateNodePoolRequest);
    });
  });

  unittest.group('obj-schema-DailyMaintenanceWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildDailyMaintenanceWindow();
      var od = api.DailyMaintenanceWindow.fromJson(o.toJson());
      checkDailyMaintenanceWindow(od as api.DailyMaintenanceWindow);
    });
  });

  unittest.group('obj-schema-DatabaseEncryption', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatabaseEncryption();
      var od = api.DatabaseEncryption.fromJson(o.toJson());
      checkDatabaseEncryption(od as api.DatabaseEncryption);
    });
  });

  unittest.group('obj-schema-DefaultSnatStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildDefaultSnatStatus();
      var od = api.DefaultSnatStatus.fromJson(o.toJson());
      checkDefaultSnatStatus(od as api.DefaultSnatStatus);
    });
  });

  unittest.group('obj-schema-DnsCacheConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildDnsCacheConfig();
      var od = api.DnsCacheConfig.fromJson(o.toJson());
      checkDnsCacheConfig(od as api.DnsCacheConfig);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-GcePersistentDiskCsiDriverConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGcePersistentDiskCsiDriverConfig();
      var od = api.GcePersistentDiskCsiDriverConfig.fromJson(o.toJson());
      checkGcePersistentDiskCsiDriverConfig(
          od as api.GcePersistentDiskCsiDriverConfig);
    });
  });

  unittest.group('obj-schema-GetJSONWebKeysResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetJSONWebKeysResponse();
      var od = api.GetJSONWebKeysResponse.fromJson(o.toJson());
      checkGetJSONWebKeysResponse(od as api.GetJSONWebKeysResponse);
    });
  });

  unittest.group('obj-schema-GetOpenIDConfigResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetOpenIDConfigResponse();
      var od = api.GetOpenIDConfigResponse.fromJson(o.toJson());
      checkGetOpenIDConfigResponse(od as api.GetOpenIDConfigResponse);
    });
  });

  unittest.group('obj-schema-HorizontalPodAutoscaling', () {
    unittest.test('to-json--from-json', () {
      var o = buildHorizontalPodAutoscaling();
      var od = api.HorizontalPodAutoscaling.fromJson(o.toJson());
      checkHorizontalPodAutoscaling(od as api.HorizontalPodAutoscaling);
    });
  });

  unittest.group('obj-schema-HttpCacheControlResponseHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpCacheControlResponseHeader();
      var od = api.HttpCacheControlResponseHeader.fromJson(o.toJson());
      checkHttpCacheControlResponseHeader(
          od as api.HttpCacheControlResponseHeader);
    });
  });

  unittest.group('obj-schema-HttpLoadBalancing', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpLoadBalancing();
      var od = api.HttpLoadBalancing.fromJson(o.toJson());
      checkHttpLoadBalancing(od as api.HttpLoadBalancing);
    });
  });

  unittest.group('obj-schema-IPAllocationPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildIPAllocationPolicy();
      var od = api.IPAllocationPolicy.fromJson(o.toJson());
      checkIPAllocationPolicy(od as api.IPAllocationPolicy);
    });
  });

  unittest.group('obj-schema-IntraNodeVisibilityConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntraNodeVisibilityConfig();
      var od = api.IntraNodeVisibilityConfig.fromJson(o.toJson());
      checkIntraNodeVisibilityConfig(od as api.IntraNodeVisibilityConfig);
    });
  });

  unittest.group('obj-schema-Jwk', () {
    unittest.test('to-json--from-json', () {
      var o = buildJwk();
      var od = api.Jwk.fromJson(o.toJson());
      checkJwk(od as api.Jwk);
    });
  });

  unittest.group('obj-schema-KubernetesDashboard', () {
    unittest.test('to-json--from-json', () {
      var o = buildKubernetesDashboard();
      var od = api.KubernetesDashboard.fromJson(o.toJson());
      checkKubernetesDashboard(od as api.KubernetesDashboard);
    });
  });

  unittest.group('obj-schema-LegacyAbac', () {
    unittest.test('to-json--from-json', () {
      var o = buildLegacyAbac();
      var od = api.LegacyAbac.fromJson(o.toJson());
      checkLegacyAbac(od as api.LegacyAbac);
    });
  });

  unittest.group('obj-schema-LinuxNodeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinuxNodeConfig();
      var od = api.LinuxNodeConfig.fromJson(o.toJson());
      checkLinuxNodeConfig(od as api.LinuxNodeConfig);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListClustersResponse();
      var od = api.ListClustersResponse.fromJson(o.toJson());
      checkListClustersResponse(od as api.ListClustersResponse);
    });
  });

  unittest.group('obj-schema-ListNodePoolsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNodePoolsResponse();
      var od = api.ListNodePoolsResponse.fromJson(o.toJson());
      checkListNodePoolsResponse(od as api.ListNodePoolsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListUsableSubnetworksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUsableSubnetworksResponse();
      var od = api.ListUsableSubnetworksResponse.fromJson(o.toJson());
      checkListUsableSubnetworksResponse(
          od as api.ListUsableSubnetworksResponse);
    });
  });

  unittest.group('obj-schema-MaintenancePolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaintenancePolicy();
      var od = api.MaintenancePolicy.fromJson(o.toJson());
      checkMaintenancePolicy(od as api.MaintenancePolicy);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaintenanceWindow();
      var od = api.MaintenanceWindow.fromJson(o.toJson());
      checkMaintenanceWindow(od as api.MaintenanceWindow);
    });
  });

  unittest.group('obj-schema-MasterAuth', () {
    unittest.test('to-json--from-json', () {
      var o = buildMasterAuth();
      var od = api.MasterAuth.fromJson(o.toJson());
      checkMasterAuth(od as api.MasterAuth);
    });
  });

  unittest.group('obj-schema-MasterAuthorizedNetworksConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildMasterAuthorizedNetworksConfig();
      var od = api.MasterAuthorizedNetworksConfig.fromJson(o.toJson());
      checkMasterAuthorizedNetworksConfig(
          od as api.MasterAuthorizedNetworksConfig);
    });
  });

  unittest.group('obj-schema-MaxPodsConstraint', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaxPodsConstraint();
      var od = api.MaxPodsConstraint.fromJson(o.toJson());
      checkMaxPodsConstraint(od as api.MaxPodsConstraint);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetric();
      var od = api.Metric.fromJson(o.toJson());
      checkMetric(od as api.Metric);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkConfig();
      var od = api.NetworkConfig.fromJson(o.toJson());
      checkNetworkConfig(od as api.NetworkConfig);
    });
  });

  unittest.group('obj-schema-NetworkPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkPolicy();
      var od = api.NetworkPolicy.fromJson(o.toJson());
      checkNetworkPolicy(od as api.NetworkPolicy);
    });
  });

  unittest.group('obj-schema-NetworkPolicyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkPolicyConfig();
      var od = api.NetworkPolicyConfig.fromJson(o.toJson());
      checkNetworkPolicyConfig(od as api.NetworkPolicyConfig);
    });
  });

  unittest.group('obj-schema-NodeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildNodeConfig();
      var od = api.NodeConfig.fromJson(o.toJson());
      checkNodeConfig(od as api.NodeConfig);
    });
  });

  unittest.group('obj-schema-NodeKubeletConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildNodeKubeletConfig();
      var od = api.NodeKubeletConfig.fromJson(o.toJson());
      checkNodeKubeletConfig(od as api.NodeKubeletConfig);
    });
  });

  unittest.group('obj-schema-NodeManagement', () {
    unittest.test('to-json--from-json', () {
      var o = buildNodeManagement();
      var od = api.NodeManagement.fromJson(o.toJson());
      checkNodeManagement(od as api.NodeManagement);
    });
  });

  unittest.group('obj-schema-NodePool', () {
    unittest.test('to-json--from-json', () {
      var o = buildNodePool();
      var od = api.NodePool.fromJson(o.toJson());
      checkNodePool(od as api.NodePool);
    });
  });

  unittest.group('obj-schema-NodePoolAutoscaling', () {
    unittest.test('to-json--from-json', () {
      var o = buildNodePoolAutoscaling();
      var od = api.NodePoolAutoscaling.fromJson(o.toJson());
      checkNodePoolAutoscaling(od as api.NodePoolAutoscaling);
    });
  });

  unittest.group('obj-schema-NodeTaint', () {
    unittest.test('to-json--from-json', () {
      var o = buildNodeTaint();
      var od = api.NodeTaint.fromJson(o.toJson());
      checkNodeTaint(od as api.NodeTaint);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotificationConfig();
      var od = api.NotificationConfig.fromJson(o.toJson());
      checkNotificationConfig(od as api.NotificationConfig);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationProgress', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationProgress();
      var od = api.OperationProgress.fromJson(o.toJson());
      checkOperationProgress(od as api.OperationProgress);
    });
  });

  unittest.group('obj-schema-PrivateClusterConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPrivateClusterConfig();
      var od = api.PrivateClusterConfig.fromJson(o.toJson());
      checkPrivateClusterConfig(od as api.PrivateClusterConfig);
    });
  });

  unittest.group('obj-schema-PrivateClusterMasterGlobalAccessConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildPrivateClusterMasterGlobalAccessConfig();
      var od = api.PrivateClusterMasterGlobalAccessConfig.fromJson(o.toJson());
      checkPrivateClusterMasterGlobalAccessConfig(
          od as api.PrivateClusterMasterGlobalAccessConfig);
    });
  });

  unittest.group('obj-schema-PubSub', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubSub();
      var od = api.PubSub.fromJson(o.toJson());
      checkPubSub(od as api.PubSub);
    });
  });

  unittest.group('obj-schema-RecurringTimeWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildRecurringTimeWindow();
      var od = api.RecurringTimeWindow.fromJson(o.toJson());
      checkRecurringTimeWindow(od as api.RecurringTimeWindow);
    });
  });

  unittest.group('obj-schema-ReleaseChannel', () {
    unittest.test('to-json--from-json', () {
      var o = buildReleaseChannel();
      var od = api.ReleaseChannel.fromJson(o.toJson());
      checkReleaseChannel(od as api.ReleaseChannel);
    });
  });

  unittest.group('obj-schema-ReleaseChannelConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildReleaseChannelConfig();
      var od = api.ReleaseChannelConfig.fromJson(o.toJson());
      checkReleaseChannelConfig(od as api.ReleaseChannelConfig);
    });
  });

  unittest.group('obj-schema-ReservationAffinity', () {
    unittest.test('to-json--from-json', () {
      var o = buildReservationAffinity();
      var od = api.ReservationAffinity.fromJson(o.toJson());
      checkReservationAffinity(od as api.ReservationAffinity);
    });
  });

  unittest.group('obj-schema-ResourceLimit', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceLimit();
      var od = api.ResourceLimit.fromJson(o.toJson());
      checkResourceLimit(od as api.ResourceLimit);
    });
  });

  unittest.group('obj-schema-ResourceUsageExportConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUsageExportConfig();
      var od = api.ResourceUsageExportConfig.fromJson(o.toJson());
      checkResourceUsageExportConfig(od as api.ResourceUsageExportConfig);
    });
  });

  unittest.group('obj-schema-RollbackNodePoolUpgradeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRollbackNodePoolUpgradeRequest();
      var od = api.RollbackNodePoolUpgradeRequest.fromJson(o.toJson());
      checkRollbackNodePoolUpgradeRequest(
          od as api.RollbackNodePoolUpgradeRequest);
    });
  });

  unittest.group('obj-schema-SandboxConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSandboxConfig();
      var od = api.SandboxConfig.fromJson(o.toJson());
      checkSandboxConfig(od as api.SandboxConfig);
    });
  });

  unittest.group('obj-schema-ServerConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildServerConfig();
      var od = api.ServerConfig.fromJson(o.toJson());
      checkServerConfig(od as api.ServerConfig);
    });
  });

  unittest.group('obj-schema-SetAddonsConfigRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetAddonsConfigRequest();
      var od = api.SetAddonsConfigRequest.fromJson(o.toJson());
      checkSetAddonsConfigRequest(od as api.SetAddonsConfigRequest);
    });
  });

  unittest.group('obj-schema-SetLabelsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetLabelsRequest();
      var od = api.SetLabelsRequest.fromJson(o.toJson());
      checkSetLabelsRequest(od as api.SetLabelsRequest);
    });
  });

  unittest.group('obj-schema-SetLegacyAbacRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetLegacyAbacRequest();
      var od = api.SetLegacyAbacRequest.fromJson(o.toJson());
      checkSetLegacyAbacRequest(od as api.SetLegacyAbacRequest);
    });
  });

  unittest.group('obj-schema-SetLocationsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetLocationsRequest();
      var od = api.SetLocationsRequest.fromJson(o.toJson());
      checkSetLocationsRequest(od as api.SetLocationsRequest);
    });
  });

  unittest.group('obj-schema-SetLoggingServiceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetLoggingServiceRequest();
      var od = api.SetLoggingServiceRequest.fromJson(o.toJson());
      checkSetLoggingServiceRequest(od as api.SetLoggingServiceRequest);
    });
  });

  unittest.group('obj-schema-SetMaintenancePolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetMaintenancePolicyRequest();
      var od = api.SetMaintenancePolicyRequest.fromJson(o.toJson());
      checkSetMaintenancePolicyRequest(od as api.SetMaintenancePolicyRequest);
    });
  });

  unittest.group('obj-schema-SetMasterAuthRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetMasterAuthRequest();
      var od = api.SetMasterAuthRequest.fromJson(o.toJson());
      checkSetMasterAuthRequest(od as api.SetMasterAuthRequest);
    });
  });

  unittest.group('obj-schema-SetMonitoringServiceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetMonitoringServiceRequest();
      var od = api.SetMonitoringServiceRequest.fromJson(o.toJson());
      checkSetMonitoringServiceRequest(od as api.SetMonitoringServiceRequest);
    });
  });

  unittest.group('obj-schema-SetNetworkPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetNetworkPolicyRequest();
      var od = api.SetNetworkPolicyRequest.fromJson(o.toJson());
      checkSetNetworkPolicyRequest(od as api.SetNetworkPolicyRequest);
    });
  });

  unittest.group('obj-schema-SetNodePoolAutoscalingRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetNodePoolAutoscalingRequest();
      var od = api.SetNodePoolAutoscalingRequest.fromJson(o.toJson());
      checkSetNodePoolAutoscalingRequest(
          od as api.SetNodePoolAutoscalingRequest);
    });
  });

  unittest.group('obj-schema-SetNodePoolManagementRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetNodePoolManagementRequest();
      var od = api.SetNodePoolManagementRequest.fromJson(o.toJson());
      checkSetNodePoolManagementRequest(od as api.SetNodePoolManagementRequest);
    });
  });

  unittest.group('obj-schema-SetNodePoolSizeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetNodePoolSizeRequest();
      var od = api.SetNodePoolSizeRequest.fromJson(o.toJson());
      checkSetNodePoolSizeRequest(od as api.SetNodePoolSizeRequest);
    });
  });

  unittest.group('obj-schema-ShieldedInstanceConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildShieldedInstanceConfig();
      var od = api.ShieldedInstanceConfig.fromJson(o.toJson());
      checkShieldedInstanceConfig(od as api.ShieldedInstanceConfig);
    });
  });

  unittest.group('obj-schema-ShieldedNodes', () {
    unittest.test('to-json--from-json', () {
      var o = buildShieldedNodes();
      var od = api.ShieldedNodes.fromJson(o.toJson());
      checkShieldedNodes(od as api.ShieldedNodes);
    });
  });

  unittest.group('obj-schema-StartIPRotationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartIPRotationRequest();
      var od = api.StartIPRotationRequest.fromJson(o.toJson());
      checkStartIPRotationRequest(od as api.StartIPRotationRequest);
    });
  });

  unittest.group('obj-schema-StatusCondition', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatusCondition();
      var od = api.StatusCondition.fromJson(o.toJson());
      checkStatusCondition(od as api.StatusCondition);
    });
  });

  unittest.group('obj-schema-TimeWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeWindow();
      var od = api.TimeWindow.fromJson(o.toJson());
      checkTimeWindow(od as api.TimeWindow);
    });
  });

  unittest.group('obj-schema-UpdateClusterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateClusterRequest();
      var od = api.UpdateClusterRequest.fromJson(o.toJson());
      checkUpdateClusterRequest(od as api.UpdateClusterRequest);
    });
  });

  unittest.group('obj-schema-UpdateMasterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateMasterRequest();
      var od = api.UpdateMasterRequest.fromJson(o.toJson());
      checkUpdateMasterRequest(od as api.UpdateMasterRequest);
    });
  });

  unittest.group('obj-schema-UpdateNodePoolRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateNodePoolRequest();
      var od = api.UpdateNodePoolRequest.fromJson(o.toJson());
      checkUpdateNodePoolRequest(od as api.UpdateNodePoolRequest);
    });
  });

  unittest.group('obj-schema-UpgradeEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpgradeEvent();
      var od = api.UpgradeEvent.fromJson(o.toJson());
      checkUpgradeEvent(od as api.UpgradeEvent);
    });
  });

  unittest.group('obj-schema-UpgradeSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpgradeSettings();
      var od = api.UpgradeSettings.fromJson(o.toJson());
      checkUpgradeSettings(od as api.UpgradeSettings);
    });
  });

  unittest.group('obj-schema-UsableSubnetwork', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsableSubnetwork();
      var od = api.UsableSubnetwork.fromJson(o.toJson());
      checkUsableSubnetwork(od as api.UsableSubnetwork);
    });
  });

  unittest.group('obj-schema-UsableSubnetworkSecondaryRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsableSubnetworkSecondaryRange();
      var od = api.UsableSubnetworkSecondaryRange.fromJson(o.toJson());
      checkUsableSubnetworkSecondaryRange(
          od as api.UsableSubnetworkSecondaryRange);
    });
  });

  unittest.group('obj-schema-VerticalPodAutoscaling', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerticalPodAutoscaling();
      var od = api.VerticalPodAutoscaling.fromJson(o.toJson());
      checkVerticalPodAutoscaling(od as api.VerticalPodAutoscaling);
    });
  });

  unittest.group('obj-schema-WorkloadIdentityConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkloadIdentityConfig();
      var od = api.WorkloadIdentityConfig.fromJson(o.toJson());
      checkWorkloadIdentityConfig(od as api.WorkloadIdentityConfig);
    });
  });

  unittest.group('obj-schema-WorkloadMetadataConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkloadMetadataConfig();
      var od = api.WorkloadMetadataConfig.fromJson(o.toJson());
      checkWorkloadMetadataConfig(od as api.WorkloadMetadataConfig);
    });
  });

  unittest.group('resource-ProjectsAggregatedUsableSubnetworksResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.aggregated.usableSubnetworks;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListUsableSubnetworksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUsableSubnetworksResponse(
            response as api.ListUsableSubnetworksResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--getServerConfig', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServerConfig(arg_name,
              projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServerConfig(response as api.ServerConfig);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsClustersResource', () {
    unittest.test('method--completeIpRotation', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildCompleteIPRotationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CompleteIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteIPRotationRequest(obj as api.CompleteIPRotationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .completeIpRotation(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildCreateClusterRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateClusterRequest(obj as api.CreateClusterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_name = 'foo';
      var arg_clusterId = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              clusterId: arg_clusterId,
              projectId: arg_projectId,
              zone: arg_zone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_name = 'foo';
      var arg_clusterId = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              clusterId: arg_clusterId,
              projectId: arg_projectId,
              zone: arg_zone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCluster(response as api.Cluster);
      })));
    });

    unittest.test('method--getJwks', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGetJSONWebKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getJwks(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetJSONWebKeysResponse(response as api.GetJSONWebKeysResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_parent = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClustersResponse(response as api.ListClustersResponse);
      })));
    });

    unittest.test('method--setAddons', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetAddonsConfigRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetAddonsConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetAddonsConfigRequest(obj as api.SetAddonsConfigRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAddons(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setLegacyAbac', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetLegacyAbacRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetLegacyAbacRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLegacyAbacRequest(obj as api.SetLegacyAbacRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLegacyAbac(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setLocations', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetLocationsRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLocationsRequest(obj as api.SetLocationsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLocations(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setLogging', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetLoggingServiceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetLoggingServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLoggingServiceRequest(obj as api.SetLoggingServiceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLogging(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setMaintenancePolicy', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetMaintenancePolicyRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetMaintenancePolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMaintenancePolicyRequest(
            obj as api.SetMaintenancePolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMaintenancePolicy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setMasterAuth', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetMasterAuthRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetMasterAuthRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMasterAuthRequest(obj as api.SetMasterAuthRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMasterAuth(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setMonitoring', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetMonitoringServiceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetMonitoringServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMonitoringServiceRequest(
            obj as api.SetMonitoringServiceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMonitoring(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setNetworkPolicy', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetNetworkPolicyRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetNetworkPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNetworkPolicyRequest(obj as api.SetNetworkPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setNetworkPolicy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setResourceLabels', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildSetLabelsRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLabelsRequest(obj as api.SetLabelsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setResourceLabels(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--startIpRotation', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildStartIPRotationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StartIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartIPRotationRequest(obj as api.StartIPRotationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startIpRotation(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildUpdateClusterRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateClusterRequest(obj as api.UpdateClusterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--updateMaster', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters;
      var arg_request = buildUpdateMasterRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateMasterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateMasterRequest(obj as api.UpdateMasterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateMaster(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsClustersNodePoolsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildCreateNodePoolRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateNodePoolRequest(obj as api.CreateNodePoolRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_name = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(
            queryMap["nodePoolId"].first, unittest.equals(arg_nodePoolId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              clusterId: arg_clusterId,
              nodePoolId: arg_nodePoolId,
              projectId: arg_projectId,
              zone: arg_zone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_name = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(
            queryMap["nodePoolId"].first, unittest.equals(arg_nodePoolId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNodePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              clusterId: arg_clusterId,
              nodePoolId: arg_nodePoolId,
              projectId: arg_projectId,
              zone: arg_zone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNodePool(response as api.NodePool);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_parent = 'foo';
      var arg_clusterId = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListNodePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              clusterId: arg_clusterId,
              projectId: arg_projectId,
              zone: arg_zone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNodePoolsResponse(response as api.ListNodePoolsResponse);
      })));
    });

    unittest.test('method--rollback', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildRollbackNodePoolUpgradeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RollbackNodePoolUpgradeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackNodePoolUpgradeRequest(
            obj as api.RollbackNodePoolUpgradeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rollback(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setAutoscaling', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildSetNodePoolAutoscalingRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetNodePoolAutoscalingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolAutoscalingRequest(
            obj as api.SetNodePoolAutoscalingRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAutoscaling(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setManagement', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildSetNodePoolManagementRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetNodePoolManagementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolManagementRequest(
            obj as api.SetNodePoolManagementRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setManagement(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setSize', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildSetNodePoolSizeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetNodePoolSizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolSizeRequest(obj as api.SetNodePoolSizeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setSize(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      var arg_request = buildUpdateNodePoolRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateNodePoolRequest(obj as api.UpdateNodePoolRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsClustersWellKnownResource', () {
    unittest.test('method--getOpenidConfiguration', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.clusters.wellKnown;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGetOpenIDConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getOpenidConfiguration(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOpenIDConfigResponse(response as api.GetOpenIDConfigResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_operationId = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["operationId"].first, unittest.equals(arg_operationId));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              operationId: arg_operationId,
              projectId: arg_projectId,
              zone: arg_zone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.locations.operations;
      var arg_parent = 'foo';
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["zone"].first, unittest.equals(arg_zone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsZonesResource', () {
    unittest.test('method--getServerconfig', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/serverconfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/serverconfig"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServerconfig(arg_projectId, arg_zone,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServerConfig(response as api.ServerConfig);
      })));
    });
  });

  unittest.group('resource-ProjectsZonesClustersResource', () {
    unittest.test('method--addons', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetAddonsConfigRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetAddonsConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetAddonsConfigRequest(obj as api.SetAddonsConfigRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/addons', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/addons"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addons(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--completeIpRotation', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildCompleteIPRotationRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CompleteIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteIPRotationRequest(obj as api.CompleteIPRotationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(':completeIpRotation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals(":completeIpRotation"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .completeIpRotation(
              arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildCreateClusterRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateClusterRequest(obj as api.CreateClusterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_zone, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_zone, arg_clusterId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_zone, arg_clusterId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCluster(response as api.Cluster);
      })));
    });

    unittest.test('method--legacyAbac', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetLegacyAbacRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetLegacyAbacRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLegacyAbacRequest(obj as api.SetLegacyAbacRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/legacyAbac', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/legacyAbac"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .legacyAbac(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_zone,
              parent: arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClustersResponse(response as api.ListClustersResponse);
      })));
    });

    unittest.test('method--locations', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetLocationsRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLocationsRequest(obj as api.SetLocationsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/locations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/locations"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .locations(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--logging', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetLoggingServiceRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetLoggingServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLoggingServiceRequest(obj as api.SetLoggingServiceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/logging', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/logging"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .logging(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--master', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildUpdateMasterRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateMasterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateMasterRequest(obj as api.UpdateMasterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/master', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/master"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .master(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--monitoring', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetMonitoringServiceRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetMonitoringServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMonitoringServiceRequest(
            obj as api.SetMonitoringServiceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/monitoring', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/monitoring"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .monitoring(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--resourceLabels', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetLabelsRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLabelsRequest(obj as api.SetLabelsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/resourceLabels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/resourceLabels"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resourceLabels(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setMaintenancePolicy', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetMaintenancePolicyRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetMaintenancePolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMaintenancePolicyRequest(
            obj as api.SetMaintenancePolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(':setMaintenancePolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals(":setMaintenancePolicy"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMaintenancePolicy(
              arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setMasterAuth', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetMasterAuthRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetMasterAuthRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMasterAuthRequest(obj as api.SetMasterAuthRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(':setMasterAuth', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals(":setMasterAuth"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMasterAuth(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setNetworkPolicy', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildSetNetworkPolicyRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetNetworkPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNetworkPolicyRequest(obj as api.SetNetworkPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(':setNetworkPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals(":setNetworkPolicy"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setNetworkPolicy(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--startIpRotation', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildStartIPRotationRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StartIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartIPRotationRequest(obj as api.StartIPRotationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(':startIpRotation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals(":startIpRotation"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startIpRotation(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildUpdateClusterRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateClusterRequest(obj as api.UpdateClusterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsZonesClustersNodePoolsResource', () {
    unittest.test('method--autoscaling', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildSetNodePoolAutoscalingRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetNodePoolAutoscalingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolAutoscalingRequest(
            obj as api.SetNodePoolAutoscalingRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf('/autoscaling', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_nodePoolId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/autoscaling"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .autoscaling(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildCreateNodePoolRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateNodePoolRequest(obj as api.CreateNodePoolRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/nodePools"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_zone, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_nodePoolId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_nodePoolId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNodePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNodePool(response as api.NodePool);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/nodePools"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListNodePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_zone, arg_clusterId,
              parent: arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNodePoolsResponse(response as api.ListNodePoolsResponse);
      })));
    });

    unittest.test('method--rollback', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildRollbackNodePoolUpgradeRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RollbackNodePoolUpgradeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackNodePoolUpgradeRequest(
            obj as api.RollbackNodePoolUpgradeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf(':rollback', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_nodePoolId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":rollback"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rollback(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setManagement', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildSetNodePoolManagementRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetNodePoolManagementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolManagementRequest(
            obj as api.SetNodePoolManagementRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf('/setManagement', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_nodePoolId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/setManagement"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setManagement(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setSize', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildSetNodePoolSizeRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetNodePoolSizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolSizeRequest(obj as api.SetNodePoolSizeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf('/setSize', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_nodePoolId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/setSize"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setSize(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      var arg_request = buildUpdateNodePoolRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_clusterId = 'foo';
      var arg_nodePoolId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateNodePoolRequest(obj as api.UpdateNodePoolRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/nodePools/"));
        pathOffset += 11;
        index = path.indexOf('/update', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_nodePoolId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/update"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_zone, arg_clusterId,
              arg_nodePoolId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsZonesOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_operationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/operations/"));
        pathOffset += 12;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_operationId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":cancel"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_projectId, arg_zone, arg_operationId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.operations;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_operationId = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/operations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_operationId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_zone, arg_operationId,
              name: arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ContainerApi(mock).projects.zones.operations;
      var arg_projectId = 'foo';
      var arg_zone = 'foo';
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf('/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_zone'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/operations"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_zone,
              parent: arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });
}
