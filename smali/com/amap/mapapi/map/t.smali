.class Lcom/amap/mapapi/map/t;
.super Ljava/lang/Object;
.source "InfoWindow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static a:Lcom/amap/mapapi/map/t;

.field public static b:Landroid/graphics/drawable/Drawable;

.field public static c:Landroid/graphics/Bitmap;


# instance fields
.field protected d:Lcom/amap/mapapi/map/MapView;

.field protected e:Landroid/view/View;

.field protected f:Lcom/amap/mapapi/core/GeoPoint;

.field protected g:J

.field protected h:Lcom/amap/mapapi/map/MapView$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    sput-object v0, Lcom/amap/mapapi/map/t;->b:Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/amap/mapapi/map/t;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/map/MapView;Landroid/view/View;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/mapapi/map/t;->g:J

    iput-object p1, p0, Lcom/amap/mapapi/map/t;->d:Lcom/amap/mapapi/map/MapView;

    iput-object p2, p0, Lcom/amap/mapapi/map/t;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/amap/mapapi/map/t;->f:Lcom/amap/mapapi/core/GeoPoint;

    iput-object p5, p0, Lcom/amap/mapapi/map/t;->h:Lcom/amap/mapapi/map/MapView$LayoutParams;

    invoke-direct {p0, p4}, Lcom/amap/mapapi/map/t;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 6

    const/16 v0, 0x54

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x14

    const/16 v3, 0xf

    const/16 v4, 0x13

    const/16 v5, 0x24

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v3, "popup_bg.9.png"

    invoke-virtual {v2, p0, v3}, Lcom/amap/mapapi/core/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/amap/mapapi/map/t;->c:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v3, Lcom/amap/mapapi/map/t;->c:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    sput-object v2, Lcom/amap/mapapi/map/t;->b:Landroid/graphics/drawable/Drawable;

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x13t
        0x0t
        0x0t
        0x0t
        0xft
        0x0t
        0x0t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x8bt
        0x0t
        0x0t
        0x0t
        0xft
        0x0t
        0x0t
        0x0t
        0x1dt
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xfft
        0xfft
        0xfft
        0xf2t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_1

    sget-object v0, Lcom/amap/mapapi/map/t;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/t;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/map/t;->a(Landroid/content/Context;)V

    :cond_0
    sget-object p1, Lcom/amap/mapapi/map/t;->b:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/t;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private d()Z
    .locals 1

    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/amap/mapapi/map/t;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/mapapi/map/t;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/mapapi/map/t;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/map/t;->c:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    const/4 v1, -0x2

    invoke-direct {p0}, Lcom/amap/mapapi/map/t;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/t;->c()V

    :cond_1
    sput-object p0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    iget-object v0, p0, Lcom/amap/mapapi/map/t;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/mapapi/map/MapView$c;->a(Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/t;->h:Lcom/amap/mapapi/map/MapView$LayoutParams;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/mapapi/map/MapView$LayoutParams;

    iget-object v3, p0, Lcom/amap/mapapi/map/t;->f:Lcom/amap/mapapi/core/GeoPoint;

    const/16 v4, 0x19

    const/4 v5, 0x5

    const/16 v6, 0x55

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IILcom/amap/mapapi/core/GeoPoint;III)V

    iput-object v0, p0, Lcom/amap/mapapi/map/t;->h:Lcom/amap/mapapi/map/MapView$LayoutParams;

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/t;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/t;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/amap/mapapi/map/t;->h:Lcom/amap/mapapi/map/MapView$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/amap/mapapi/core/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/map/t;->g:J

    iget-object v0, p0, Lcom/amap/mapapi/map/t;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v0

    iget-wide v1, p0, Lcom/amap/mapapi/map/t;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapView$c;->a(J)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/mapapi/map/t;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/t;->d:Lcom/amap/mapapi/map/MapView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    iget-object v0, p0, Lcom/amap/mapapi/map/t;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/t;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/t;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/mapapi/map/MapView$c;->b(Landroid/view/GestureDetector$OnGestureListener;)V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
