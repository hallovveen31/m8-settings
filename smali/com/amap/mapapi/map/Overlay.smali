.class public Lcom/amap/mapapi/map/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/Overlay$Snappable;
    }
.end annotation


# static fields
.field protected static final SHADOW_X_SKEW:F = -0.9f

.field protected static final SHADOW_Y_SCALE:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    return-void
.end method

.method protected static drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    .line 55
    if-eqz p4, :cond_0

    .line 56
    new-instance v0, Lcom/amap/mapapi/map/aq;

    invoke-direct {v0}, Lcom/amap/mapapi/map/aq;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/aq;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    invoke-static {v0, p1}, Lcom/amap/mapapi/map/aq;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    .line 61
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/amap/mapapi/map/Overlay;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 62
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/mapapi/map/Overlay;->draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
