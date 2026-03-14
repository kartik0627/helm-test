{{- define "python-basic.name" -}}
{{- .Values.app.name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "python-basic.labels" -}}
app: {{ .Values.app.name }}
app.kubernetes.io/name: {{ .Values.app.name }}
app.kubernetes.io/instance: {{ .Values.app.name }}
app.kubernetes.io/component: {{ .Values.app.name }}
app.kubernetes.io/part-of: {{ .Values.app.partOf }}
app.openshift.io/runtime: {{ .Values.app.runtime }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "python-basic.selectorLabels" -}}
app: {{ .Values.app.name }}
deployment: {{ .Values.app.name }}
{{- end }}
