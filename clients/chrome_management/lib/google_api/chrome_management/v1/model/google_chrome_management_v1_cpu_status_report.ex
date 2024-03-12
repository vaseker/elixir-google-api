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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuStatusReport do
  @moduledoc """
  Provides information about the status of the CPU. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Every 10 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_CPU_REPORT

  ## Attributes

  *   `cpuTemperatureInfo` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuTemperatureInfo.t)`, *default:* `nil`) - Output only. CPU temperature sample info per CPU core in Celsius
  *   `cpuUtilizationPct` (*type:* `integer()`, *default:* `nil`) - Output only. Sample of CPU utilization (0-100 percent).
  *   `reportTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp in milliseconds representing time at which this report was sampled.
  *   `sampleFrequency` (*type:* `String.t`, *default:* `nil`) - Output only. Frequency the report is sampled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpuTemperatureInfo =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuTemperatureInfo.t()
            )
            | nil,
          :cpuUtilizationPct => integer() | nil,
          :reportTime => DateTime.t() | nil,
          :sampleFrequency => String.t() | nil
        }

  field(:cpuTemperatureInfo,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuTemperatureInfo,
    type: :list
  )

  field(:cpuUtilizationPct)
  field(:reportTime, as: DateTime)
  field(:sampleFrequency)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuStatusReport do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuStatusReport.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CpuStatusReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
