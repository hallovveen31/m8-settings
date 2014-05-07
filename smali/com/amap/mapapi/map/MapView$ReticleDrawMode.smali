.class public final enum Lcom/amap/mapapi/map/MapView$ReticleDrawMode;
.super Ljava/lang/Enum;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReticleDrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/mapapi/map/MapView$ReticleDrawMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRAW_RETICLE_NEVER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_OVER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_UNDER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

.field private static final synthetic a:[Lcom/amap/mapapi/map/MapView$ReticleDrawMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    new-instance v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    const-string v1, "DRAW_RETICLE_NEVER"

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    new-instance v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    const-string v1, "DRAW_RETICLE_OVER"

    invoke-direct {v0, v1, v3}, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    new-instance v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    const-string v1, "DRAW_RETICLE_UNDER"

    invoke-direct {v0, v1, v4}, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    .line 452
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    sget-object v1, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->a:[Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/mapapi/map/MapView$ReticleDrawMode;
    .locals 1
    .parameter

    .prologue
    .line 452
    const-class v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    return-object v0
.end method

.method public static values()[Lcom/amap/mapapi/map/MapView$ReticleDrawMode;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->a:[Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    invoke-virtual {v0}, [Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    return-object v0
.end method
