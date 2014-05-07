.class public final enum Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;
.super Ljava/lang/Enum;
.source "GeoPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/core/GeoPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumMapProjection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

.field public static final enum projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

.field public static final enum projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    const-string v1, "projection_900913"

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    const-string v1, "projection_custBeijing54"

    invoke-direct {v0, v1, v3}, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->$VALUES:[Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;
    .locals 1

    const-class v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    return-object v0
.end method

.method public static values()[Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;
    .locals 1

    sget-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->$VALUES:[Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    return-object v0
.end method
