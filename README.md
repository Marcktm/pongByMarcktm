# 🏓 Pong by MarckTM

¡Bienvenido a mi versión personalizada de Pong hecha con [Godot Engine](https://godotengine.org/)!  
Este proyecto fue desarrollado para aprender y experimentar con la física 2D, colisiones y lógica de juego simple, y ahora está disponible en GitHub.

---

## 🎮 Controles

### Jugador 1 (Izquierda):
- `W`: subir
- `S`: bajar

### Jugador 2 (Derecha):
- ⬆️ Flecha arriba: subir
- ⬇️ Flecha abajo: bajar

---

## ⚙️ Cómo jugar

- El objetivo es simple: ¡evitá que la pelota pase por tu lado!
- Cuando un jugador anota, la pelota se reinicia automáticamente desde el centro después de un breve delay.
- La dirección de saque se invierte luego de cada gol.

---

## 🧠 Características

- Física con `RigidBody2D` real
- Reinicio de pelota controlado con `_integrate_forces()` (Godot physics-safe way)
- Lógica 100% desarrollada en GDScript
- Puntaje en pantalla
- Estructura lista para agregar IA, sonidos o efectos visuales

---

## 🚀 Cómo correrlo

1. Abrí [Godot](https://godotengine.org/download).
2. Elegí **Importar Proyecto**.
3. Seleccioná la carpeta de este repo.
4. Abrí `pricipal.tscn` y presioná ▶️ para jugar.

---

## 💻 Requisitos

- Godot 4.2 o superior

---

## 🧑‍💻 Autor

**Marcos Agustín Reyeros**  
GitHub: [@MarckTM](https://github.com/MarckTM)

---

## 📝 Licencia

Este proyecto está bajo la licencia MIT. Usalo, modificálo y compartilo libremente. 🎉
