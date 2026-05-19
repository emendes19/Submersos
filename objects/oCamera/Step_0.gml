if (!instance_exists(target_))
{
    target_ = instance_find(oScorpio, 0);
}

if (!instance_exists(target_)) exit;

// Suavização
x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y, 0.1);

// Posição da câmera
var cam_x = x - width_ / 2;
var cam_y = y - height_ / 2;

// Limites da room
cam_x = clamp(cam_x, 0, room_width - width_);
cam_y = clamp(cam_y, 0, room_height - height_);

// Pixel perfect
cam_x = round(cam_x);
cam_y = round(cam_y);

// Move câmera
camera_set_view_pos(view_camera[0], cam_x, cam_y);