variable "db_cluster_id" {
  description = "The cluster ID of the RDS Aurora cluster that you want to monitor."
  type        = string
}

variable "db_cluster_members" {
  description = "List of RDS Instances that are a part of the cluster"
  type        = set(string)
}

variable "tags" {
  description = "Tags to be added to all resources."
  type        = map(string)
}

variable "cpu_utilization_threshold" {
  description = "The maximum percentage of CPU utilization."
  type        = number
  default     = 90
}

variable "cpu_utilization_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "disk_queue_depth_threshold" {
  description = "The maximum number of outstanding IOs (read/write requests) waiting to access the disk."
  type        = number
  default     = 1000
}

variable "disk_queue_depth_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "freeable_memory_threshold" {
  description = "The minimum amount of available random access memory in Byte."
  type        = number
  default     = 2147483648 #2GB in bytes
}

variable "freeable_memory_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "free_storage_space_threshold" {
  description = "The minimum amount of available storage space in bytes."
  type        = number
  default     = 2000000000

  # 2 Gigabyte in Byte
}

variable "swap_usage_threshold" {
  description = "The maximum amount of swap space used on the DB instance in bytes."
  type        = number
  default     = 256000000

  # 256 Megabyte in Byte
}

variable "swap_usage_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "percent_free_memory_threshold" {
  description = "The percent of memory that is unused."
  type        = number
  default     = 10
}

variable "percent_free_memory_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "sns_topic_name" {
  description = "The name of the SNS topic to publish alerts to."
  type        = string
}
