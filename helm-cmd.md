# Helm Commands - Cheat sheet

- ``` helm env ``` - lists the helm env variables
- ``` helm repo add stable https://kubernetes-charts.storage.googleapis.com/ ```  - adding helm repo 

## Helm Usage cmds

- ``` helm install demo-mysql stable/mysql ```
- ``` helm uninstall demo-mysql ```
- ``` helm upgrade mysql stable/mysql ```

- ``` helm install [release] [chart] ```
  - ex: ``` helm install demo-guestbook guestbook ```
- ``` helm upgrade [release] [chart] ```
  - ex: ``` helm upgrade demo-guestbook guestbook ```

- ``` helm rollback [release] [revision] ```
- ``` helm history [release] ``` - list release history
- ``` helm status [release] ``` - show release status
  - ex: ``` helm status demo-guestbook ```
- ``` helm get all [release] ``` - show details of release
- ``` helm uninstall [release] ``` - uninstall a release
- ``` helm list ``` - list releases
- ``` helm get manifest demo-guestbook ``` - lists the manifest
  