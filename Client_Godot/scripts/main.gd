extends Node2D

func _ready():
    print("Dragon World started")

func _draw():
    # Bầu trời
    draw_rect(
        Rect2(-1000, -1000, 3000, 2000),
        Color("a6dcff")
    )

    # Mặt đất
    draw_rect(
        Rect2(-1000, 150, 3000, 1000),
        Color("65bd65")
    )

    # Đường đi
    draw_rect(
        Rect2(-1000, 180, 3000, 55),
        Color("d9bd83")
    )

    # Cây
    for x in range(-400, 1000, 180):
        draw_rect(
            Rect2(x, 80, 14, 85),
            Color("75472b")
        )
        draw_circle(
            Vector2(x + 7, 65),
            35,
            Color("238b48")
        )
