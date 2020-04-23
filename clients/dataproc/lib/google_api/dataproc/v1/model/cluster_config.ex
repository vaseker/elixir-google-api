# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Dataproc.V1.Model.ClusterConfig do
  @moduledoc """
  The cluster config.

  ## Attributes

  *   `autoscalingConfig` (*type:* `GoogleApi.Dataproc.V1.Model.AutoscalingConfig.t`, *default:* `nil`) - Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  *   `configBucket` (*type:* `String.t`, *default:* `nil`) - Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging bucket (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  *   `encryptionConfig` (*type:* `GoogleApi.Dataproc.V1.Model.EncryptionConfig.t`, *default:* `nil`) - Optional. Encryption settings for the cluster.
  *   `gceClusterConfig` (*type:* `GoogleApi.Dataproc.V1.Model.GceClusterConfig.t`, *default:* `nil`) - Optional. The shared Compute Engine config settings for all instances in a cluster.
  *   `initializationActions` (*type:* `list(GoogleApi.Dataproc.V1.Model.NodeInitializationAction.t)`, *default:* `nil`) - Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget):
      ROLE=$(curl -H Metadata-Flavor:Google
      http://metadata/computeMetadata/v1/instance/attributes/dataproc-role)
      if [[ "${ROLE}" == 'Master' ]]; then
        ... master specific actions ...
      else
        ... worker specific actions ...
      fi

  *   `lifecycleConfig` (*type:* `GoogleApi.Dataproc.V1.Model.LifecycleConfig.t`, *default:* `nil`) - Optional. Lifecycle setting for the cluster.
  *   `masterConfig` (*type:* `GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t`, *default:* `nil`) - Optional. The Compute Engine config settings for the master instance in a cluster.
  *   `secondaryWorkerConfig` (*type:* `GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t`, *default:* `nil`) - Optional. The Compute Engine config settings for additional worker instances in a cluster.
  *   `securityConfig` (*type:* `GoogleApi.Dataproc.V1.Model.SecurityConfig.t`, *default:* `nil`) - Optional. Security settings for the cluster.
  *   `softwareConfig` (*type:* `GoogleApi.Dataproc.V1.Model.SoftwareConfig.t`, *default:* `nil`) - Optional. The config settings for software inside the cluster.
  *   `workerConfig` (*type:* `GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t`, *default:* `nil`) - Optional. The Compute Engine config settings for worker instances in a cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalingConfig => GoogleApi.Dataproc.V1.Model.AutoscalingConfig.t(),
          :configBucket => String.t(),
          :encryptionConfig => GoogleApi.Dataproc.V1.Model.EncryptionConfig.t(),
          :gceClusterConfig => GoogleApi.Dataproc.V1.Model.GceClusterConfig.t(),
          :initializationActions =>
            list(GoogleApi.Dataproc.V1.Model.NodeInitializationAction.t()),
          :lifecycleConfig => GoogleApi.Dataproc.V1.Model.LifecycleConfig.t(),
          :masterConfig => GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t(),
          :secondaryWorkerConfig => GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t(),
          :securityConfig => GoogleApi.Dataproc.V1.Model.SecurityConfig.t(),
          :softwareConfig => GoogleApi.Dataproc.V1.Model.SoftwareConfig.t(),
          :workerConfig => GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t()
        }

  field(:autoscalingConfig, as: GoogleApi.Dataproc.V1.Model.AutoscalingConfig)
  field(:configBucket)
  field(:encryptionConfig, as: GoogleApi.Dataproc.V1.Model.EncryptionConfig)
  field(:gceClusterConfig, as: GoogleApi.Dataproc.V1.Model.GceClusterConfig)

  field(:initializationActions,
    as: GoogleApi.Dataproc.V1.Model.NodeInitializationAction,
    type: :list
  )

  field(:lifecycleConfig, as: GoogleApi.Dataproc.V1.Model.LifecycleConfig)
  field(:masterConfig, as: GoogleApi.Dataproc.V1.Model.InstanceGroupConfig)
  field(:secondaryWorkerConfig, as: GoogleApi.Dataproc.V1.Model.InstanceGroupConfig)
  field(:securityConfig, as: GoogleApi.Dataproc.V1.Model.SecurityConfig)
  field(:softwareConfig, as: GoogleApi.Dataproc.V1.Model.SoftwareConfig)
  field(:workerConfig, as: GoogleApi.Dataproc.V1.Model.InstanceGroupConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ClusterConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ClusterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ClusterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
