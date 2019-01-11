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

defmodule GoogleApi.Testing.V1.Model.AndroidTestLoop do
  @moduledoc """
  A test of an Android Application with a Test Loop. The intent \\&lt;intent-name\\&gt; will be implicitly added, since Games is the only user of this api, for the time being.

  ## Attributes

  - appApk (FileReference): The APK for the application under test. Defaults to: `null`.
  - appBundle (AppBundle): A multi-apk app bundle for the application under test. Defaults to: `null`.
  - appPackageId (String.t): The java package for the application under test. The default is determined by examining the application&#39;s manifest. Defaults to: `null`.
  - scenarioLabels ([String.t]): The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application&#39;s manifest. For example, player_experience and com.google.test.loops.player_experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field. Defaults to: `null`.
  - scenarios ([integer()]): The list of scenarios that should be run during the test. The default is all test loops, derived from the application&#39;s manifest. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appApk => GoogleApi.Testing.V1.Model.FileReference.t(),
          :appBundle => GoogleApi.Testing.V1.Model.AppBundle.t(),
          :appPackageId => any(),
          :scenarioLabels => list(any()),
          :scenarios => list(any())
        }

  field(:appApk, as: GoogleApi.Testing.V1.Model.FileReference)
  field(:appBundle, as: GoogleApi.Testing.V1.Model.AppBundle)
  field(:appPackageId)
  field(:scenarioLabels, type: :list)
  field(:scenarios, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.AndroidTestLoop do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.AndroidTestLoop.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.AndroidTestLoop do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
