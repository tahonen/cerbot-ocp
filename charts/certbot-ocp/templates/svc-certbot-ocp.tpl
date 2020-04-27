---
apiVersion: v1
kind: Service
metadata:
  labels:
    app: certbot-ocp
  name: {{ .Release.Name }}-certbot-ocp
  namespace: {{ .Release.Namespace }}
spec:
  ports:
    - name: 8080-tcp
      port: 8080
      protocol: TCP
      targetPort: 8080
  selector:
    name: {{ .Release.Name }}-certbot-ocp
  sessionAffinity: None
  type: ClusterIP
