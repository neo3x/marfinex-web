# Guia de Instalacion - Marfinex Pages

## Archivos Creados

```
marfinex-child/
├── functions.php          # Heroicons + shortcodes
├── assets/
│   └── css/
│       └── custom.css     # Estilos profesionales
├── elementor-templates/
│   ├── about.json         # Plantilla Nosotros
│   ├── services.json      # Plantilla Servicios
│   ├── projects.json      # Plantilla Proyectos
│   └── contact.json       # Plantilla Contacto
└── install-pages.sql      # Script SQL
```

---

## Paso 1: Crear las Paginas en WordPress

1. Ve a **WordPress Admin > Paginas > Añadir nueva**
2. Crea 4 paginas con estos nombres:
   - **Nosotros** (slug: about)
   - **Servicios** (slug: services)
   - **Proyectos** (slug: projects)
   - **Contacto** (slug: contact)

3. En cada pagina:
   - Click en **Editar con Elementor**
   - Continua con el Paso 2

---

## Paso 2: Diseñar con Elementor

Para cada pagina, usa las plantillas JSON como referencia para construir el diseño:

### Pagina: Nosotros (about.json)

**Seccion 1 - Hero:**
- Heading: "Protegemos lo que importa"
- Text: "Somos un equipo especializado en inteligencia artificial y ciberseguridad..."

**Seccion 2 - Historia:** (fondo gris #f8fafc)
- 2 columnas (50/50)
- Izquierda: Titulo + texto sobre la historia
- Derecha: Imagen (subir una imagen corporativa)

**Seccion 3 - Valores:**
- 3 columnas con Icon Box:
  - Seguridad (icono: shield)
  - Innovacion (icono: lightbulb)
  - Confianza (icono: handshake)

**Seccion 4 - CTA:** (fondo oscuro #0f172a)
- Titulo blanco: "¿Listo para proteger tu negocio?"
- Boton: "Agendar Consulta"

---

### Pagina: Servicios (services.json)

**Seccion 1 - Hero:**
- Heading: "Soluciones a tu medida"

**Seccion 2 - Grid de Servicios:**
- 6 Icon Boxes (2 columnas x 3 filas):
  1. Auditoria de Seguridad
  2. Consultoria en IA
  3. Proteccion de Datos
  4. Automatizacion
  5. Soporte 24/7
  6. Capacitacion

**Seccion 3 - Proceso:** (fondo gris)
- 4 columnas con numeros: Analisis → Estrategia → Implementacion → Soporte

**Seccion 4 - CTA:**
- Boton "Agendar Llamada"

---

### Pagina: Proyectos (projects.json)

**Seccion 1 - Hero:**
- Heading: "Proyectos"

**Seccion 2 - Estadisticas:**
- 4 Counters: 50+ Proyectos | 30+ Clientes | 99% Satisfaccion | 5 años

**Seccion 3 - Grid:** (fondo gris)
- 6 tarjetas de proyectos (3 columnas x 2 filas)
- Cada tarjeta: Imagen + Titulo + Descripcion + Tag de categoria

**Seccion 4 - CTA:**
- Boton "Iniciar Proyecto"

---

### Pagina: Contacto (contact.json)

**Seccion 1 - Hero:**
- Heading: "Hablemos"

**Seccion 2 - Contenido Principal:**
- 2 columnas (40/60)
- Izquierda: Info de contacto
  - Email: hello@marfinex.com
  - Ubicacion: Remoto - Global
  - Horario: Lunes a Viernes, 9:00 - 18:00
  - Boton: "Agendar Llamada" (con LatePoint)
- Derecha: Formulario WPForms

**Seccion 3 - FAQ:** (fondo gris)
- Accordion con 4 preguntas frecuentes

---

## Paso 3: Configurar Formulario de Contacto

1. Ve a **WPForms > Todos los formularios**
2. Edita el formulario existente o crea uno nuevo
3. En **Configuracion > Notificaciones**:
   - Cambia "Enviar a" por: `hello@marfinex.com`
4. Guarda y copia el shortcode (ej: `[wpforms id="123"]`)
5. Pegalo en la pagina de Contacto

---

## Paso 4: Integrar LatePoint

Para los botones de reserva:

1. En Elementor, añade un **Boton**
2. En el enlace, pon `#`
3. En **Atributos personalizados** añade:
   ```
   data-latepoint-booking|
   ```
4. Esto abrira el popup de reservas de LatePoint

---

## Paso 5: Añadir al Menu

1. Ve a **Apariencia > Menus**
2. Añade las 4 paginas al menu principal
3. Orden sugerido: Nosotros | Servicios | Proyectos | Contacto

---

## Shortcodes Disponibles

```php
// Icono individual
[marfinex_icon name="shield-check" size="32"]

// Boton de reserva LatePoint
[marfinex_booking text="Agendar Consulta"]

// Tarjeta de servicio
[marfinex_service icon="shield-check" title="Seguridad" description="..."]

// Estadistica
[marfinex_stat number="50+" label="Proyectos"]
```

### Iconos disponibles:
- shield-check, lock-closed, finger-print, eye
- cpu-chip, sparkles, cog-6-tooth, light-bulb, bolt
- briefcase, chart-bar, users, building-office, rocket-launch
- envelope, phone, map-pin, calendar, clock
- check-circle, arrow-right, globe-alt, server-stack, code-bracket

---

## Colores del Tema

```css
--mfx-primary: #0f172a      /* Texto oscuro */
--mfx-accent: #3b82f6       /* Azul principal */
--mfx-text-light: #64748b   /* Texto secundario */
--mfx-gray-50: #f8fafc      /* Fondos claros */
```

---

## Soporte

Cualquier duda, contacta a: hello@marfinex.com
