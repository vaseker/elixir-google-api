# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  @moduledoc """
  A Cloud SQL instance resource.

  ## Attributes

  - backendType (String.t): FIRST_GEN: Basic Cloud SQL instance that runs in a Google-managed container. SECOND_GEN: A newer Cloud SQL backend that runs in a Compute Engine VM. EXTERNAL: A MySQL server that is not managed by Google. Defaults to: `null`.
  - connectionName (String.t): Connection name of the Cloud SQL instance used in connection strings. Defaults to: `null`.
  - currentDiskSize (String.t): The current disk usage of the instance in bytes. This property has been deprecated. Users should use the \&quot;cloudsql.googleapis.com/database/disk/bytes_used\&quot; metric in Cloud Monitoring API instead. Please see https://groups.google.com/d/msg/google-cloud-sql-announce/I_7-F9EBhT0/BtvFtdFeAgAJ for details. Defaults to: `null`.
  - databaseVersion (String.t): The database engine type and version. The databaseVersion field can not be changed after instance creation. MySQL Second Generation instances: MYSQL_5_7 (default) or MYSQL_5_6. PostgreSQL instances: POSTGRES_9_6 MySQL First Generation instances: MYSQL_5_6 (default) or MYSQL_5_5 Defaults to: `null`.
  - etag (String.t): HTTP 1.1 Entity tag for the resource. Defaults to: `null`.
  - failoverReplica (DatabaseInstanceFailoverReplica):  Defaults to: `null`.
  - gceZone (String.t): The Compute Engine zone that the instance is currently serving from. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary zone. Defaults to: `null`.
  - instanceType (String.t): The instance type. This can be one of the following. CLOUD_SQL_INSTANCE: A Cloud SQL instance that is not replicating from a master. ON_PREMISES_INSTANCE: An instance running on the customer&#39;s premises. READ_REPLICA_INSTANCE: A Cloud SQL instance configured as a read-replica. Defaults to: `null`.
  - ipAddresses ([IpMapping]): The assigned IP addresses for the instance. Defaults to: `null`.
  - ipv6Address (String.t): The IPv6 address assigned to the instance. This property is applicable only to First Generation instances. Defaults to: `null`.
  - kind (String.t): This is always sql#instance. Defaults to: `null`.
  - masterInstanceName (String.t): The name of the instance which will act as master in the replication setup. Defaults to: `null`.
  - maxDiskSize (String.t): The maximum disk size of the instance in bytes. Defaults to: `null`.
  - name (String.t): Name of the Cloud SQL instance. This does not include the project ID. Defaults to: `null`.
  - onPremisesConfiguration (OnPremisesConfiguration): Configuration specific to on-premises instances. Defaults to: `null`.
  - project (String.t): The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable. Defaults to: `null`.
  - region (String.t): The geographical region. Can be us-central (FIRST_GEN instances only), us-central1 (SECOND_GEN instances only), asia-east1 or europe-west1. Defaults to us-central or us-central1 depending on the instance type (First Generation or Second Generation). The region can not be changed after instance creation. Defaults to: `null`.
  - replicaConfiguration (ReplicaConfiguration): Configuration specific to read-replicas replicating from on-premises masters. Defaults to: `null`.
  - replicaNames ([String.t]): The replicas of the instance. Defaults to: `null`.
  - selfLink (String.t): The URI of this resource. Defaults to: `null`.
  - serverCaCert (SslCert): SSL configuration. Defaults to: `null`.
  - serviceAccountEmailAddress (String.t): The service account email address assigned to the instance. This property is applicable only to Second Generation instances. Defaults to: `null`.
  - settings (Settings): The user settings. Defaults to: `null`.
  - state (String.t): The current serving state of the Cloud SQL instance. This can be one of the following. RUNNABLE: The instance is running, or is ready to run when accessed. SUSPENDED: The instance is not available, for example due to problems with billing. PENDING_CREATE: The instance is being created. MAINTENANCE: The instance is down for maintenance. FAILED: The instance creation failed. UNKNOWN_STATE: The state of the instance is unknown. Defaults to: `null`.
  - suspensionReason ([String.t]): If the instance state is SUSPENDED, the reason for the suspension. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backendType => any(),
          :connectionName => any(),
          :currentDiskSize => any(),
          :databaseVersion => any(),
          :etag => any(),
          :failoverReplica => GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica.t(),
          :gceZone => any(),
          :instanceType => any(),
          :ipAddresses => list(GoogleApi.SQLAdmin.V1beta4.Model.IpMapping.t()),
          :ipv6Address => any(),
          :kind => any(),
          :masterInstanceName => any(),
          :maxDiskSize => any(),
          :name => any(),
          :onPremisesConfiguration => GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration.t(),
          :project => any(),
          :region => any(),
          :replicaConfiguration => GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration.t(),
          :replicaNames => list(any()),
          :selfLink => any(),
          :serverCaCert => GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t(),
          :serviceAccountEmailAddress => any(),
          :settings => GoogleApi.SQLAdmin.V1beta4.Model.Settings.t(),
          :state => any(),
          :suspensionReason => list(any())
        }

  field(:backendType)
  field(:connectionName)
  field(:currentDiskSize)
  field(:databaseVersion)
  field(:etag)
  field(:failoverReplica, as: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica)
  field(:gceZone)
  field(:instanceType)
  field(:ipAddresses, as: GoogleApi.SQLAdmin.V1beta4.Model.IpMapping, type: :list)
  field(:ipv6Address)
  field(:kind)
  field(:masterInstanceName)
  field(:maxDiskSize)
  field(:name)
  field(:onPremisesConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration)
  field(:project)
  field(:region)
  field(:replicaConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration)
  field(:replicaNames, type: :list)
  field(:selfLink)
  field(:serverCaCert, as: GoogleApi.SQLAdmin.V1beta4.Model.SslCert)
  field(:serviceAccountEmailAddress)
  field(:settings, as: GoogleApi.SQLAdmin.V1beta4.Model.Settings)
  field(:state)
  field(:suspensionReason, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
