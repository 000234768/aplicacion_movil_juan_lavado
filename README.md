# Aplicación Flutter

Este repositorio contiene una aplicación móvil desarrollada en Flutter. La aplicación consiste en una serie de páginas que presentan información sobre la página web [CCU](https://www.ccu.cl/) de la empresa CCU.

## Estructura de directorios

El repositorio está organizado de la siguiente manera:

- **lib/**: Contiene todo el código fuente de la aplicación.
  - **pages/**: Contiene las diferentes páginas de la aplicación.
    - **brands_page.dart**: Página que muestra información sobre las marcas de CCU en Chile.
    - **community_page.dart**: Página que presenta información sobre la comunidad relacionada con CCU.
    - **home_page.dart**: Página de inicio, donde comienza la aplicación.
    - **sustentability_page.dart**: Página que proporciona detalles sobre la sustentabilidad en CCU.
  - **routes/**: Contiene el enrutador de la aplicación.
    - **app_router.dart**: Archivo que gestiona el ruteo de las páginas de la aplicación.
- **widgets/**: Contiene widgets reutilizables en toda la aplicación.
  - **header_page.dart**: Widget de cabecera para todas las páginas.
  - **footer_page.dart**: Widget de pie de página para todas las páginas.

## Uso

Para ejecutar la aplicación, asegúrate de tener Flutter instalado en tu sistema. Luego, puedes clonar este repositorio y ejecutar la aplicación utilizando el comando `flutter run` en el directorio raíz del proyecto que es `ccu_movil`.

