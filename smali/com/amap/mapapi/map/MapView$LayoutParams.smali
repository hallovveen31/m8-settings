.class public Lcom/amap/mapapi/map/MapView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x50

.field public static final BOTTOM_CENTER:I = 0x51

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final LEFT:I = 0x3

.field public static final MODE_MAP:I = 0x0

.field public static final MODE_VIEW:I = 0x1

.field public static final RIGHT:I = 0x5

.field public static final TOP:I = 0x30

.field public static final TOP_LEFT:I = 0x33


# instance fields
.field public alignment:I

.field public mode:I

.field public point:Lcom/amap/mapapi/core/GeoPoint;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2098
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2077
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->mode:I

    .line 2078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->point:Lcom/amap/mapapi/core/GeoPoint;

    .line 2079
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->x:I

    .line 2080
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->y:I

    .line 2081
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 2099
    iput p3, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->x:I

    .line 2100
    iput p4, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->y:I

    .line 2101
    iput p5, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 2102
    return-void
.end method

.method public constructor <init>(IILcom/amap/mapapi/core/GeoPoint;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2084
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IILcom/amap/mapapi/core/GeoPoint;III)V

    .line 2085
    return-void
.end method

.method public constructor <init>(IILcom/amap/mapapi/core/GeoPoint;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2089
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2077
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->mode:I

    .line 2078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->point:Lcom/amap/mapapi/core/GeoPoint;

    .line 2079
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->x:I

    .line 2080
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->y:I

    .line 2081
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 2090
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->mode:I

    .line 2091
    iput-object p3, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->point:Lcom/amap/mapapi/core/GeoPoint;

    .line 2092
    iput p4, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->x:I

    .line 2093
    iput p5, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->y:I

    .line 2094
    iput p6, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 2095
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2105
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2077
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->mode:I

    .line 2078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->point:Lcom/amap/mapapi/core/GeoPoint;

    .line 2079
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->x:I

    .line 2080
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->y:I

    .line 2081
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 2106
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2109
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2077
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->mode:I

    .line 2078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->point:Lcom/amap/mapapi/core/GeoPoint;

    .line 2079
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->x:I

    .line 2080
    iput v1, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->y:I

    .line 2081
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/mapapi/map/MapView$LayoutParams;->alignment:I

    .line 2110
    return-void
.end method
