{{- define "db.fullname" -}}
{{- if .Values.fullNameOverride -}}
{{- .Values.fullNameOverride -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name .Values.database .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}