# Get the External IP
output "gce_public_ip" {
  value       = "${element(concat(google_compute_instance.minecraft.*.network_interface.0.access_config.0.nat_ip, list("")), 0)}"
  description = "The public IP address of the minecraft server instance."
}
