.class public final enum Lcom/amap/mapapi/busline/BusQuery$SearchType;
.super Ljava/lang/Enum;
.source "BusQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/busline/BusQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/mapapi/busline/BusQuery$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BY_ID:Lcom/amap/mapapi/busline/BusQuery$SearchType;

.field public static final enum BY_LINE_NAME:Lcom/amap/mapapi/busline/BusQuery$SearchType;

.field public static final enum BY_STATION_NAME:Lcom/amap/mapapi/busline/BusQuery$SearchType;

.field private static final synthetic a:[Lcom/amap/mapapi/busline/BusQuery$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;

    const-string v1, "BY_ID"

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/busline/BusQuery$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_ID:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    new-instance v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;

    const-string v1, "BY_LINE_NAME"

    invoke-direct {v0, v1, v3}, Lcom/amap/mapapi/busline/BusQuery$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_LINE_NAME:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    new-instance v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;

    const-string v1, "BY_STATION_NAME"

    invoke-direct {v0, v1, v4}, Lcom/amap/mapapi/busline/BusQuery$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_STATION_NAME:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amap/mapapi/busline/BusQuery$SearchType;

    sget-object v1, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_ID:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_LINE_NAME:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_STATION_NAME:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;->a:[Lcom/amap/mapapi/busline/BusQuery$SearchType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amap/mapapi/busline/BusQuery$SearchType;
    .locals 1

    const-class v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/amap/mapapi/busline/BusQuery$SearchType;
    .locals 1

    sget-object v0, Lcom/amap/mapapi/busline/BusQuery$SearchType;->a:[Lcom/amap/mapapi/busline/BusQuery$SearchType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/mapapi/busline/BusQuery$SearchType;

    return-object v0
.end method
