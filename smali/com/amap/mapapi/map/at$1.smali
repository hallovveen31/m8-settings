.class final Lcom/amap/mapapi/map/at$1;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Lcom/amap/mapapi/map/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/mapapi/map/at;->c()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter

    .prologue
    const/high16 v4, 0x4380

    const/4 v2, 0x0

    .line 42
    invoke-static {}, Lcom/amap/mapapi/map/at;->b()Landroid/graphics/Paint;

    move-result-object v5

    .line 43
    invoke-static {}, Lcom/amap/mapapi/map/at;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 44
    const/4 v0, 0x0

    move v12, v0

    .line 45
    :goto_0
    const/16 v0, 0xeb

    if-ge v12, v0, :cond_0

    .line 46
    int-to-float v1, v12

    int-to-float v3, v12

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    int-to-float v8, v12

    int-to-float v10, v12

    move-object v6, p1

    move v7, v2

    move v9, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    add-int/lit8 v0, v12, 0x15

    move v12, v0

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
