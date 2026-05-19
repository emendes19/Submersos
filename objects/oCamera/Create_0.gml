// Objeto que a câmera vai seguir
target_ = oScorpio;

// Tamanho da câmera
width_ = 1280;
height_ = 720;

// Posição inicial
x = target_.x;
y = target_.y;

persistent = true;

if (!instance_exists(target_))
{
    target_ = instance_find(oScorpio, 0);
}

if (!instance_exists(target_)) exit;