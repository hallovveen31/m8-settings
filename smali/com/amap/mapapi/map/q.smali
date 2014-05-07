.class Lcom/amap/mapapi/map/q;
.super Lcom/amap/mapapi/map/p;
.source "FixViewOverlay.java"


# instance fields
.field private a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/amap/mapapi/map/p;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amap/mapapi/map/q;->a:Landroid/graphics/Rect;

    .line 13
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
