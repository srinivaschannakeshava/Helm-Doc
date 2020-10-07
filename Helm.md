# Helm - Packaging applications with Helm for K8s

- Why Helm?
  - Helps in Packing of diff K8s components - ex - pods,deployments,services, pv,pvc,secrets, configmaps..etc
  - Easy Versioning - which helps in easy updates and rollbacks.
  - Customization
  - Dependencies - order in which diff components to k8s to be deployed.
  
- What is Helm?
  - A package manager for K8s.
  - ex:- maven - jar , npm - nodemodules, pip - python packages, Helm -charts
  - Heres is how helm works.
  - ![How Helm Works](img/how-helm-works.JPG)
  - Helm-Charts are the definition of your application and release is the instance of these charts.
  - Helm stores release manifest in K8s as secrets
  - Helm uses a Three way merge patches for update

## Helm chart-
  - Helm Chart structure-  ![structure](img/helm-structure.JPG)
  - Chart version - this is usually changed only when there is a change in chart structure.
    - The version follows major.minor.patch vresion index ex:- (0.1.0),(1.0.0);

## Helm Templates
  - Why Helm Templates>
    - Remove hardcoded values from K8s Components ex:-image version,port values etc
    - Append namespaces/env info to the k8s comp so that we have env based deployments ex:- dev,test,prod etc..
  - Helm Template Engine
    - Its based on GO template engine where the values in objects replace the ``` {{.Values.name}} ``` in the templates.
  - Testing Helm Template
    - ``` helm template [chart] ``` 
      - works without K8s cluster 
      - static release name
    - ``` helm install [release] [chart] --dry-run --debug ``` 
      -  real helm instlal but without commit
      -  cna generate a release-name