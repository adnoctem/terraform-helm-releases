module "full_releases" {
  source = ".."

  cluster_host                       = "https://example-cluster.example.com:6443"
  cluster_certificate_authority_data = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS1DTlNCQVRFLS0tLQo=...."
  cluster_token                      = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.dummy-payload.dummy-signature..."
  
  releases = {
    opentelemetry-operator = {
      chart            = "opentelemetry-operator"
      version          = "0.90.4"
      repository       = "https://open-telemetry.github.io/opentelemetry-helm-charts"
      description      = "OpenTelemetry Operator"
      namespace        = "operators"
      create_namespace = false
      values = [
        <<-EOT
        manager:
          collectorImage:
            repository: otel/opentelemetry-collector-contrib
          serviceMonitor:
            enabled: true
          prometheusRule:
            enabled: true
            defaultRules:
              enabled: true
        EOT
      ]
    }
    opensearch-operator = {
      chart            = "opensearch-operator"
      version          = "2.8.0"
      repository       = "https://opensearch-project.github.io/opensearch-k8s-operator/"
      description      = "OpenSearch Operator"
      namespace        = "operators"
      create_namespace = false
    }
  }
}
