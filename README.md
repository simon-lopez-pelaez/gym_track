#  Aplicación Móvil de Entrenamiento Físico

##  Tabla de contenido

- [Introducción](#introducción)
- [Problemática](#problemática)
- [Objetivos y métrica de éxito](#objetivos-y-métrica-de-éxito)
  - [Objetivo general](#objetivo-general)
  - [Objetivos específicos](#objetivos-específicos)
  - [Objetivo medible](#objetivo-medible)
  - [Métrica de éxito](#métrica-de-éxito)
- [Restricciones](#restricciones)
  - [Fijas e innegociables](#fijas-e-innegociables)
  - [Ya resueltas](#ya-resueltas)
  - [Restricción propuesta de datos sensibles](#restricción-propuesta-de-datos-sensibles)
- [Stakeholders](#stakeholders)
- [Alcance](#alcance)
  - [Incluye](#incluye)
  - [No incluye](#no-incluye)
- [Conceptos del dominio y reglas de negocio](#conceptos-del-dominio-y-reglas-de-negocio)
- [Reglas de negocio](#reglas-de-negocio)
- [Actores](#actores)
- [Historias de usuario](#historias-de-usuario)
- [Casos de uso](#casos-de-uso)
  - [Registrar datos del perfil](#caso-de-uso-registrar-datos-del-perfil)
  - [Consultar la rutina del día](#caso-de-uso-consultar-la-rutina-del-día)
- [Flujo de pantallas](#flujo-de-pantallas)
- [Propuestas de diseño y mockups](#propuestas-de-diseño-y-mockups)
  - [Pantalla de perfil](#pantalla-de-perfil)
  - [Pantalla de menú principal](#pantalla-de-menú-principal)
  - [Pantalla de rutinas](#pantalla-de-rutinas)

---

##  Introducción

Este proyecto consiste en el desarrollo de una aplicación móvil de entrenamiento físico, construida en **Flutter y Dart**, que permite a un usuario registrar sus datos personales y corporales, organizar sus días de entrenamiento y consultar rutinas de ejercicio según el lugar donde va a entrenar (**gimnasio, casa o parque**).

La aplicación usa una base de datos para guardar la información del usuario y de sus rutinas.

Este documento describe el problema que resuelve la aplicación, qué se espera lograr con ella, quiénes están involucrados, qué se va a construir y qué queda fuera del alcance actual.

---

##  Problemática

Hoy, una persona que quiere empezar a entrenar sin pagar un entrenador personal tiene dos caminos: seguir rutinas genéricas que encuentra en internet o redes sociales, que no tienen en cuenta su edad, peso, estatura ni objetivo, o inscribirse en un gimnasio, donde tampoco recibe un plan realmente personalizado si no paga un servicio adicional.

No existe una forma sencilla de tener, desde el celular, una rutina organizada por días y ajustada a los datos del propio cuerpo, sin importar si esa persona entrena en el gimnasio, en casa o al aire libre.

Durante el curso se construye el lado del usuario que entrena: el registro de sus datos, el cálculo de su condición corporal, la organización de sus días de entrenamiento y la asignación de rutinas según el lugar elegido.

---

#  Objetivos y métrica de éxito

## Objetivo general

Desarrollar una aplicación móvil en **Flutter y Dart** que permita a un usuario registrar sus datos corporales, calcular su índice de masa corporal, organizar sus días de entrenamiento y acceder a rutinas de ejercicio según el lugar donde entrena, con el fin de ofrecer una herramienta simple y personalizada para el seguimiento de su actividad física.

## Objetivos específicos

- Diseñar e implementar una pantalla de perfil donde el usuario ingrese sus datos personales (**nombre, edad, altura, peso**) y visualice el cálculo automático de su índice de masa corporal.

- Diseñar e implementar un menú principal que le permita al usuario elegir el lugar donde va a entrenar (**gimnasio, casa o parque**) y acceder desde ahí a las demás funciones de la aplicación.

- Implementar una sección de horarios donde el usuario defina los días de la semana en los que va a entrenar.

- Implementar una sección de rutinas que muestre al usuario, según el día y el lugar elegido, el grupo muscular que le corresponde trabajar y los ejercicios asociados.

- Integrar una base de datos local que almacene de forma persistente los datos del perfil, los horarios y las rutinas del usuario, sin depender de conexión a internet.

- Dejar planteada, aunque no desarrollada por completo, la opción de alimentación como una función premium para una futura versión del proyecto.

## Objetivo medible

> Que un usuario registre sus datos corporales (**edad, altura, peso**) y obtenga, en menos de **2 minutos**, la rutina asignada al día que le corresponde entrenar, sin salir de la aplicación.

## Métrica de éxito

**Primera métrica:** tiempo transcurrido entre que el usuario abre su perfil por primera vez y llega a ver la rutina del día correspondiente.

**Meta:** menos de 2 minutos.

**Segunda métrica:** el **100% de las rutinas mostradas** deben coincidir con el día que el usuario configuró en su horario.

---

#  Restricciones

## Fijas e innegociables

- **Tecnología:** Flutter y Dart para la parte visual y de lógica; pruebas finales en un dispositivo Android.

- **Tiempo:** el definido para el desarrollo del curso.

- **Equipo:** el número de integrantes que tengas asignado para el proyecto.

## Ya resueltas

- **Pagos:** sin pasarela de pago real. La opción premium de alimentación, si se llega a implementar, se simula; no hay cobro real.

- **Contenido de rutinas:** no hay integración con un entrenador humano real ni con un gimnasio externo; las rutinas se cargan manualmente en la base de datos por el equipo de desarrollo.

## Restricción propuesta de datos sensibles

Los datos corporales del usuario (**peso, altura, edad**) se guardan únicamente en la base de datos local del dispositivo.

No se envían a ningún servidor externo, ya que son datos personales de salud y el proyecto no cuenta con un backend en la nube.

---

#  Stakeholders

- **El usuario (deportista):** usa la aplicación para registrar sus datos, definir sus horarios y consultar sus rutinas.

- **El entrenador o experto en rutinas:** no usa la aplicación directamente en esta versión, pero el contenido de las rutinas que ve el usuario (qué ejercicios hacer, cuántas series, qué días trabajar cada grupo muscular) está basado en conocimiento de entrenamiento físico, aunque en esta primera versión ese contenido lo carga el propio equipo de desarrollo.

- **El gimnasio o entrenador personal físico:** no usa la aplicación, pero le interesa si esta le resta clientes (personas que dejan de pagar un plan porque ya tienen su rutina organizada en el celular) o si la complementa (personas que usan la app como apoyo a lo que ya hacen en el gimnasio).

---

#  Alcance

## Incluye

- **Perfil de usuario:** registro de nombre, edad, altura y peso, con cálculo automático del índice de masa corporal (IMC).

- **Menú principal:** con las opciones de lugar de entrenamiento: gimnasio, casa o parque.

- **Horarios:** selección de los días de la semana en que el usuario va a entrenar.

- **Rutinas:** asignación de un grupo muscular (pecho, espalda, brazo, pierna, etc.) a cada día configurado.

## No incluye

- Opción de alimentación premium desarrollada por completo (queda mencionada como idea futura).

- Cobro real de cualquier función premium.

- Comunicación directa con un entrenador real dentro de la aplicación.

- Sincronización con dispositivos externos (relojes inteligentes, bandas de frecuencia cardiaca, etc.).

---

#  Conceptos del dominio y reglas de negocio

- **Usuario:** persona que se registra en la aplicación y usa sus datos corporales para entrenar.

- **Perfil:** conjunto de datos personales y corporales de un usuario: edad, altura, peso e IMC calculado.

- **Horario:** los días de la semana que el usuario define para entrenar.

- **Lugar de entrenamiento:** el sitio donde el usuario va a hacer ejercicio: gimnasio, casa o parque.

- **Rutina:** conjunto de ejercicios agrupados por grupo muscular o tipo de entrenamiento, asignado a un día específico del horario.

- **Ejercicio:** unidad más pequeña dentro de una rutina, con nombre, series y repeticiones.

> **Relación principal:** un Usuario tiene un Perfil, define un Horario y sigue Rutinas compuestas por Ejercicios, organizadas según el Lugar de entrenamiento que elija.

---

#  Reglas de negocio

| Código | Regla |
|---|---|
| **RN-01** | Un usuario no puede ver rutinas asignadas a un día si antes no ha configurado su horario de entrenamiento. |
| **RN-02** | El índice de masa corporal solo se puede calcular si el usuario ha ingresado su altura y su peso en el perfil. |
| **RN-03** | La opción de alimentación solo está disponible para usuarios con cuenta premium (simulada). |
| **RN-04** | Toda rutina debe estar asociada a un grupo muscular y a un lugar de entrenamiento válido (gimnasio, casa o parque). |

---

#  Actores

### Usuario / deportista

**Actor principal.** Interactúa con todas las pantallas: perfil, menú principal, horarios y rutinas.

### Base de datos local (SQLite)

**Actor de sistema.** No es una persona, pero participa guardando y entregando la información del perfil, los horarios y las rutinas cada vez que el usuario abre la aplicación.

---

#  Historias de usuario

### HU-01 — Registrar datos corporales

> Como usuario, quiero registrar mis datos corporales (**edad, altura, peso**), para que la aplicación calcule mi índice de masa corporal y conozca mi punto de partida.

### HU-02 — Elegir lugar de entrenamiento

> Como usuario, quiero elegir el lugar donde voy a entrenar (**gimnasio, casa o parque**), para ver rutinas que se ajusten a ese lugar.

### HU-03 — Definir días de entrenamiento

> Como usuario, quiero definir los días de la semana en que voy a entrenar, para que la aplicación me muestre la rutina que corresponde a cada día.

### HU-04 — Consultar la rutina del día

> Como usuario, quiero ver la rutina asignada al día actual con sus ejercicios, para saber qué grupo muscular trabajar sin tener que planearlo yo mismo.

---

#  Casos de uso

## Caso de uso: Registrar datos del perfil

**Actor:** Usuario.

**Precondición:** el usuario abrió la aplicación por primera vez y no tiene un perfil creado todavía.

### Flujo principal

1. La aplicación muestra el formulario de perfil (**nombre, edad, altura, peso**).
2. El usuario ingresa sus datos.
3. El usuario guarda el perfil.
4. La aplicación calcula el índice de masa corporal y lo muestra junto con los datos guardados.

### Excepción

Si el usuario deja algún campo vacío o ingresa un valor no numérico en altura o peso, la aplicación muestra un mensaje de error y no permite guardar hasta que lo corrija.

---

## Caso de uso: Consultar la rutina del día

**Actor:** Usuario.

**Precondición:** el usuario ya configuró su horario de entrenamiento (días de la semana) y su lugar de entrenamiento.

### Flujo principal

1. El usuario abre el menú principal.
2. El usuario selecciona la opción **"Rutinas"**.
3. La aplicación identifica el día actual y el lugar de entrenamiento elegido.
4. La aplicación muestra el grupo muscular y los ejercicios correspondientes a ese día.

### Excepción

Si el día actual no tiene ninguna rutina asignada en el horario, la aplicación muestra un mensaje indicando que ese día es de descanso.

---

#  Flujo de pantallas

El flujo del usuario arranca en la **pantalla de perfil**, donde ingresa o consulta sus datos personales y su IMC.

Luego avanza al **menú principal**, donde elige el lugar de entrenamiento y ve las demás opciones:

- Horarios
- Rutinas
- Alimentación premium

Desde ahí llega a la **pantalla de rutinas**, donde ve el grupo muscular y los ejercicios que le corresponden según el día y el lugar elegido.

### Flujo general

```text
┌─────────────────┐
│     PERFIL      │
│ Datos + IMC     │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│ MENÚ PRINCIPAL  │
│                 │
│ • Entrenar      │
│ • Horarios      │
│ • Rutinas       │
│ • Alimentación  │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│    RUTINAS      │
│ Día + lugar     │
│ Grupo muscular  │
│ Ejercicios      │
└─────────────────┘
```

---

#  Propuestas de diseño y mockups

## Pantalla de perfil

En la parte superior va el nombre de la aplicación.

Debajo, un formulario con los campos **edad, altura y peso**, cada uno con su etiqueta.

Al fondo, un botón principal para guardar los datos.

Si el perfil ya existe, en su lugar se muestra el **IMC calculado** y un resumen de los datos guardados.

---

## Pantalla de menú principal

En la parte superior, un saludo con el nombre del usuario.

Debajo, una lista o cuadrícula con las opciones principales:

- **Entrenar**
  - Gimnasio
  - Casa
  - Parque
- **Horarios**
- **Rutinas**
- **Alimentación** — *Premium*

La acción principal es entrar a **"Rutinas"** o elegir el lugar de entrenamiento.

---

## Pantalla de rutinas

En la parte superior, el **día actual** y el **lugar de entrenamiento elegido**.

Debajo, el grupo muscular que corresponde a ese día y una lista de los ejercicios asociados, cada uno con su nombre y sus series o repeticiones.

---

## 🛠️ Tecnologías principales

| Tecnología | Uso |
|---|---|
| **Flutter** | Desarrollo de la aplicación móvil |
| **Dart** | Lenguaje de programación |
| **SQLite** | Base de datos local |
| **Android** | Plataforma de pruebas |

---

##  Estado del proyecto

>  **Proyecto en desarrollo académico.**
>
> La aplicación se desarrolla como parte del curso y algunas funcionalidades, como la alimentación premium, se encuentran planteadas para futuras versiones.

---

##  Nota

Este proyecto corresponde a una primera versión enfocada principalmente en el registro del usuario, organización de horarios y consulta de rutinas de entrenamiento.
