{{- define "backend.fullname" -}}
{{- if .Values.fullNameOverride -}}
{{- .Values.fullNameOverride -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}