extends CharacterBody2D

@export var speed: float = 220.0

func _physics_process(_delta):
    var direction = Input.get_vector(
        "ui_left",
        "ui_right",
        "ui_up",
        "ui_down"
    )

    velocity = direction * speed
    move_and_slide()
    queue_redraw()

func _draw():
    # Thân nhân vật
    draw_rect(
        Rect2(-12, -20, 24, 36),
        Color("35a9e8")
    )

    # Đầu nhân vật
    draw_circle(
        Vector2(0, -29),
        12,
        Color("ffd09a")
    )

    # Mắt
    draw_circle(
        Vector2(4, -31),
        2,
        Color.BLACK
    )
