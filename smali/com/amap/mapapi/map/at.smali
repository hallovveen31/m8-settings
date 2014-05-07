.class Lcom/amap/mapapi/map/at;
.super Ljava/lang/Object;
.source "Tile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/at$a;
    }
.end annotation


# static fields
.field private static a:Landroid/graphics/Paint;

.field private static b:Landroid/graphics/Bitmap;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/amap/mapapi/map/at;->a:Landroid/graphics/Paint;

    .line 18
    sput-object v0, Lcom/amap/mapapi/map/at;->b:Landroid/graphics/Bitmap;

    .line 19
    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/amap/mapapi/map/at;->c:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/amap/mapapi/map/at;->c:I

    return v0
.end method

.method public static b()Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/amap/mapapi/map/at;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amap/mapapi/map/at;->a:Landroid/graphics/Paint;

    .line 28
    sget-object v0, Lcom/amap/mapapi/map/at;->a:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    sget-object v0, Lcom/amap/mapapi/map/at;->a:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 30
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 32
    sget-object v1, Lcom/amap/mapapi/map/at;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 34
    :cond_0
    sget-object v0, Lcom/amap/mapapi/map/at;->a:Landroid/graphics/Paint;

    return-object v0

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x20t 0x40t
    .end array-data
.end method

.method public static c()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 38
    sget-object v0, Lcom/amap/mapapi/map/at;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/amap/mapapi/map/at$1;

    invoke-direct {v0}, Lcom/amap/mapapi/map/at$1;-><init>()V

    .line 54
    new-instance v1, Lcom/amap/mapapi/map/f;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {v1, v2}, Lcom/amap/mapapi/map/f;-><init>(Landroid/graphics/Bitmap$Config;)V

    .line 55
    invoke-virtual {v1, v3, v3}, Lcom/amap/mapapi/map/f;->a(II)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/f;->a(Lcom/amap/mapapi/map/g;)V

    .line 58
    invoke-virtual {v1}, Lcom/amap/mapapi/map/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/map/at;->b:Landroid/graphics/Bitmap;

    .line 61
    :cond_0
    sget-object v0, Lcom/amap/mapapi/map/at;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
