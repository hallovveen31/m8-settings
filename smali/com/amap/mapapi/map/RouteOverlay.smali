.class public Lcom/amap/mapapi/map/RouteOverlay;
.super Lcom/amap/mapapi/map/Overlay;
.source "RouteOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/RouteOverlay$a;
    }
.end annotation


# static fields
.field public static final OnDetail:I = 0x1

.field public static final OnIconClick:I = 0x4

.field public static final OnNext:I = 0x3

.field public static final OnOverview:I = 0x0

.field public static final OnPrev:I = 0x2


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/map/ap;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/mapapi/map/RouteOverlay$a;

.field private c:Lcom/amap/mapapi/map/ao;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/map/RouteMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/amap/mapapi/map/MapView;

.field private h:I

.field private i:Z

.field private j:Z

.field protected mContext:Lcom/amap/mapapi/map/MapActivity;

.field protected mRoute:Lcom/amap/mapapi/route/Route;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapActivity;Lcom/amap/mapapi/route/Route;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/amap/mapapi/map/Overlay;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    .line 22
    iput-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    .line 24
    iput-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->c:Lcom/amap/mapapi/map/ao;

    .line 25
    iput-boolean v2, p0, Lcom/amap/mapapi/map/RouteOverlay;->d:Z

    .line 26
    iput-boolean v2, p0, Lcom/amap/mapapi/map/RouteOverlay;->e:Z

    .line 27
    new-instance v0, Lcom/amap/mapapi/map/RouteOverlay$a;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/RouteOverlay$a;-><init>(Lcom/amap/mapapi/map/RouteOverlay;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->b:Lcom/amap/mapapi/map/RouteOverlay$a;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->f:Ljava/util/List;

    .line 30
    iput-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    .line 38
    iput v3, p0, Lcom/amap/mapapi/map/RouteOverlay;->h:I

    .line 42
    iput-boolean v3, p0, Lcom/amap/mapapi/map/RouteOverlay;->i:Z

    .line 44
    iput-boolean v2, p0, Lcom/amap/mapapi/map/RouteOverlay;->j:Z

    .line 47
    invoke-static {p1}, Lcom/amap/mapapi/core/r;->a(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/amap/mapapi/map/RouteOverlay;->mContext:Lcom/amap/mapapi/map/MapActivity;

    .line 49
    iput-object p2, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    .line 50
    return-void
.end method

.method static a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)Landroid/graphics/Point;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v0

    .line 441
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Lcom/amap/mapapi/map/o;
    .locals 2
    .parameter

    .prologue
    .line 445
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/o;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/o;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/RouteOverlay;I)Lcom/amap/mapapi/map/o;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/RouteOverlay;->a(I)Lcom/amap/mapapi/map/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/RouteOverlay;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->f:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/amap/mapapi/map/MapView;)V
    .locals 19
    .parameter

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->i:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 217
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    .line 172
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    new-instance v1, Lcom/amap/mapapi/map/o;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v2, v2, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/amap/mapapi/route/Route$d;->g(I)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v4

    sget-object v2, Lcom/amap/mapapi/core/r;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/mapapi/map/RouteOverlay;->b:Lcom/amap/mapapi/map/RouteOverlay$a;

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/amap/mapapi/map/o;-><init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/RouteMessageHandler;Z)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v18

    .line 179
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    .line 181
    if-lez v6, :cond_2

    add-int/lit8 v1, v18, -0x1

    if-ge v6, v1, :cond_2

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1, v6}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Segment;->getShapes()[Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/mapapi/route/Segment;->getShapes()[Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 184
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/amap/mapapi/core/GeoPoint;

    .line 185
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v7, v1

    invoke-static {v1, v4, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aput-object v2, v3, v1

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    new-instance v2, Lcom/amap/mapapi/map/y;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v4, v4, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    invoke-virtual {v4, v6}, Lcom/amap/mapapi/route/Route$d;->a(I)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/amap/mapapi/map/y;-><init>(Lcom/amap/mapapi/map/RouteOverlay;[Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Paint;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v1, v1, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/mapapi/map/RouteOverlay;->mContext:Lcom/amap/mapapi/map/MapActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/mapapi/map/RouteOverlay;->b:Lcom/amap/mapapi/map/RouteOverlay$a;

    move-object/from16 v2, p1

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/mapapi/route/Route$d;->a(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Lcom/amap/mapapi/map/RouteMessageHandler;Lcom/amap/mapapi/map/RouteOverlay;I)Landroid/view/View;

    move-result-object v15

    .line 195
    if-eqz v15, :cond_3

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v1, v1, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    invoke-virtual {v1, v6}, Lcom/amap/mapapi/route/Route$d;->g(I)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v10

    .line 197
    new-instance v7, Lcom/amap/mapapi/map/MapView$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x55

    invoke-direct/range {v7 .. v13}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IILcom/amap/mapapi/core/GeoPoint;III)V

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    new-instance v11, Lcom/amap/mapapi/map/be;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/map/RouteOverlay;->mContext:Lcom/amap/mapapi/map/MapActivity;

    invoke-static {v2}, Lcom/amap/mapapi/core/r;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v12, p0

    move v13, v6

    move-object v14, v10

    move-object/from16 v17, v7

    invoke-direct/range {v11 .. v17}, Lcom/amap/mapapi/map/be;-><init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 190
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    new-instance v2, Lcom/amap/mapapi/map/y;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v3, v6}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/mapapi/route/Segment;->getShapes()[Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v4, v4, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    invoke-virtual {v4, v6}, Lcom/amap/mapapi/route/Route$d;->a(I)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/amap/mapapi/map/y;-><init>(Lcom/amap/mapapi/map/RouteOverlay;[Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Paint;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/amap/mapapi/route/Route;->isDrive(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    new-instance v7, Lcom/amap/mapapi/map/o;

    add-int/lit8 v9, v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v2, v2, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/mapapi/route/Route$d;->g(I)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v10

    sget-object v2, Lcom/amap/mapapi/core/r;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amap/mapapi/map/RouteOverlay;->b:Lcom/amap/mapapi/map/RouteOverlay$a;

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/amap/mapapi/map/o;-><init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/RouteMessageHandler;Z)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 211
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    new-instance v1, Lcom/amap/mapapi/map/o;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v2, v2, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/route/Route$d;->g(I)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v4

    sget-object v2, Lcom/amap/mapapi/core/r;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/mapapi/map/RouteOverlay;->b:Lcom/amap/mapapi/map/RouteOverlay$a;

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v3, v18

    invoke-direct/range {v1 .. v7}, Lcom/amap/mapapi/map/o;-><init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/RouteMessageHandler;Z)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/mapapi/map/RouteOverlay;->i:Z

    goto/16 :goto_0
.end method

.method private a(Lcom/amap/mapapi/map/MapView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getController()Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController;->zoomOut()Z

    .line 303
    return-void
.end method

.method static a(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 426
    if-nez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    .line 434
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    .line 436
    iget v3, p1, Landroid/graphics/Point;->x:I

    if-le v3, p2, :cond_0

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-ge v3, v1, :cond_0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v1, p2, :cond_0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/amap/mapapi/map/MapView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getController()Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController;->zoomIn()Z

    .line 317
    return-void
.end method

.method private b(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 415
    .line 417
    invoke-static {p1, p2}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)Landroid/graphics/Point;

    move-result-object v0

    .line 418
    const/16 v1, 0x1e

    invoke-static {p1, v0, v1}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 420
    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getController()Lcom/amap/mapapi/map/MapController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v2, v3, v0}, Lcom/amap/mapapi/map/Projection;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/MapController;->animateTo(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 423
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amap/mapapi/map/RouteOverlay;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->e:Z

    return v0
.end method


# virtual methods
.method public addToMap(Lcom/amap/mapapi/map/MapView;)V
    .locals 3
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    .line 143
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/MapView;)V

    .line 145
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ap;

    .line 149
    iget-object v2, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/ap;->a(Lcom/amap/mapapi/map/MapView;)V

    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public closePopupWindow()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->c:Lcom/amap/mapapi/map/ao;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->c:Lcom/amap/mapapi/map/ao;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ao;->c()V

    .line 373
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->c:Lcom/amap/mapapi/map/ao;

    .line 374
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ap;

    .line 113
    instance-of v2, v0, Lcom/amap/mapapi/map/y;

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/mapapi/map/ap;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ap;

    .line 118
    instance-of v2, v0, Lcom/amap/mapapi/map/y;

    if-nez v2, :cond_2

    .line 121
    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/mapapi/map/ap;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V

    goto :goto_1

    .line 123
    :cond_3
    return-void
.end method

.method public enableDrag(Z)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/amap/mapapi/map/RouteOverlay;->e:Z

    .line 139
    return-void
.end method

.method public enablePopup(Z)V
    .locals 1
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/amap/mapapi/map/RouteOverlay;->d:Z

    .line 127
    iget-boolean v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->d:Z

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->closePopupWindow()V

    .line 130
    :cond_0
    return-void
.end method

.method public getEndPos()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(I)Lcom/amap/mapapi/map/o;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/o;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method protected getInfoView(Lcom/amap/mapapi/map/MapView;I)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    iget-object v2, p0, Lcom/amap/mapapi/map/RouteOverlay;->mContext:Lcom/amap/mapapi/map/MapActivity;

    iget-object v3, p0, Lcom/amap/mapapi/map/RouteOverlay;->b:Lcom/amap/mapapi/map/RouteOverlay$a;

    move-object v1, p1

    move-object v4, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/route/Route$d;->b(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Lcom/amap/mapapi/map/RouteMessageHandler;Lcom/amap/mapapi/map/RouteOverlay;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRoute()Lcom/amap/mapapi/route/Route;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    return-object v0
.end method

.method public getStartPos()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(I)Lcom/amap/mapapi/map/o;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/o;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public isStartEndMoved()Z
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->getStartPos()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStartPos()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->getEndPos()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getTargetPos()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ap;

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/amap/mapapi/map/ap;->a(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 70
    :cond_1
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/amap/mapapi/map/RouteOverlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    return v0
.end method

.method public registerRouteMessage(Lcom/amap/mapapi/map/RouteMessageHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public removeFromMap(Lcom/amap/mapapi/map/MapView;)Z
    .locals 3
    .parameter

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 328
    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->closePopupWindow()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    .line 331
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ap;

    .line 332
    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ap;->b(Lcom/amap/mapapi/map/MapView;)V

    goto :goto_0

    .line 338
    :cond_0
    return v1
.end method

.method public renewOverlay(Lcom/amap/mapapi/map/MapView;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 395
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/RouteOverlay;->removeFromMap(Lcom/amap/mapapi/map/MapView;)Z

    .line 396
    iput-boolean v4, p0, Lcom/amap/mapapi/map/RouteOverlay;->i:Z

    .line 397
    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->isStartEndMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mContext:Lcom/amap/mapapi/map/MapActivity;

    new-instance v1, Lcom/amap/mapapi/route/Route$FromAndTo;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->getStartPos()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->getEndPos()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/mapapi/route/Route$FromAndTo;-><init>(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;I)V

    iget-object v2, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v2}, Lcom/amap/mapapi/route/Route;->getMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amap/mapapi/route/Route;->calculateRoute(Landroid/content/Context;Lcom/amap/mapapi/route/Route$FromAndTo;I)Ljava/util/List;

    move-result-object v0

    .line 401
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Route;

    iput-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    .line 403
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/RouteOverlay;->addToMap(Lcom/amap/mapapi/map/MapView;)V

    .line 404
    return-void
.end method

.method public restoreOverlay(Lcom/amap/mapapi/map/MapView;)V
    .locals 2
    .parameter

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/RouteOverlay;->removeFromMap(Lcom/amap/mapapi/map/MapView;)Z

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(I)Lcom/amap/mapapi/map/o;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStartPos()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/mapapi/map/o;->b:Lcom/amap/mapapi/core/GeoPoint;

    .line 389
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(I)Lcom/amap/mapapi/map/o;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getTargetPos()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/mapapi/map/o;->b:Lcom/amap/mapapi/core/GeoPoint;

    .line 391
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/RouteOverlay;->addToMap(Lcom/amap/mapapi/map/MapView;)V

    .line 392
    return-void
.end method

.method public setBusLinePaint(Landroid/graphics/Paint;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    if-eqz p1, :cond_1

    .line 78
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint$Style;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    :cond_0
    sput-object p1, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    .line 83
    :cond_1
    return-void
.end method

.method public setCarLinePaint(Landroid/graphics/Paint;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    if-eqz p1, :cond_1

    .line 102
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint$Style;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    :cond_0
    sput-object p1, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    .line 107
    :cond_1
    return-void
.end method

.method public setFootLinePaint(Landroid/graphics/Paint;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    if-eqz p1, :cond_1

    .line 90
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint$Style;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    :cond_0
    sput-object p1, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    .line 95
    :cond_1
    return-void
.end method

.method public showNextPopUpWindow()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->h:I

    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    iget v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->h:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/mapapi/map/RouteOverlay;->takeDefaultAction(Lcom/amap/mapapi/map/MapView;II)V

    .line 257
    :cond_0
    return-void
.end method

.method public showPopupWindow(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-boolean v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->isStartEndMoved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    if-nez v1, :cond_2

    .line 346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "routeoverlay must be added to map frist!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {p0, v1, p1}, Lcom/amap/mapapi/map/RouteOverlay;->getInfoView(Lcom/amap/mapapi/map/MapView;I)Landroid/view/View;

    move-result-object v2

    .line 351
    if-eqz v2, :cond_0

    .line 359
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route$d;->g(I)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    .line 360
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView$e;->a:Z

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    invoke-direct {p0, v0, v3}, Lcom/amap/mapapi/map/RouteOverlay;->b(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)V

    .line 364
    :cond_3
    new-instance v0, Lcom/amap/mapapi/map/ao;

    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/ao;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/view/View;Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/RouteOverlay;I)V

    iput-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->c:Lcom/amap/mapapi/map/ao;

    .line 365
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->c:Lcom/amap/mapapi/map/ao;

    iget-boolean v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->j:Z

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ao;->a(Z)V

    .line 366
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showPrevPopUpWindow()V
    .locals 3

    .prologue
    .line 260
    iget v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->h:I

    if-lez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->g:Lcom/amap/mapapi/map/MapView;

    iget v1, p0, Lcom/amap/mapapi/map/RouteOverlay;->h:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/mapapi/map/RouteOverlay;->takeDefaultAction(Lcom/amap/mapapi/map/MapView;II)V

    .line 263
    :cond_0
    return-void
.end method

.method public showRouteButton(Z)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/amap/mapapi/map/RouteOverlay;->j:Z

    .line 135
    return-void
.end method

.method protected takeDefaultAction(Lcom/amap/mapapi/map/MapView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    packed-switch p3, :pswitch_data_0

    .line 249
    :goto_0
    invoke-virtual {p0, p2}, Lcom/amap/mapapi/map/RouteOverlay;->showPopupWindow(I)Z

    .line 250
    iput p2, p0, Lcom/amap/mapapi/map/RouteOverlay;->h:I

    .line 251
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    invoke-virtual {v0, p2}, Lcom/amap/mapapi/route/Route$d;->d(I)I

    move-result p2

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->mRoute:Lcom/amap/mapapi/route/Route;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    invoke-virtual {v0, p2}, Lcom/amap/mapapi/route/Route$d;->e(I)I

    move-result p2

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->closePopupWindow()V

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/MapView;I)V

    goto :goto_0

    .line 242
    :pswitch_3
    invoke-virtual {p0}, Lcom/amap/mapapi/map/RouteOverlay;->closePopupWindow()V

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/RouteOverlay;->b(Lcom/amap/mapapi/map/MapView;I)V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterRouteMessage(Lcom/amap/mapapi/map/RouteMessageHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method
