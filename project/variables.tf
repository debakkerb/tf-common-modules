/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "billing_account_id" {
  description = "Billing account that should be attached to the project."
  type        = string
}

variable "create_project" {
  description = "Whether or not to create a project or use an existing one."
  type        = string
  default     = true
}

variable "parent" {
  description = "Parent for the project.  Has to be configured as either `folders/123456789` or `organizations/123456789`"
  type        = string
}

variable "project_apis" {
  description = "APIs to enable on the project"
  type        = set(string)
  default     = []
}

variable "project_name" {
  description = "Name to use for the project.  The Project ID will automatically get a random suffix.  When using an existing project, this variable should contain the value of the project id."
  type        = string
  default     = null
}