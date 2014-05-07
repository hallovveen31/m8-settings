.class public abstract Lcom/amap/mapapi/map/ItemizedOverlay;
.super Lcom/amap/mapapi/map/Overlay;
.source "ItemizedOverlay.java"

# interfaces
.implements Lcom/amap/mapapi/map/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/ItemizedOverlay$b;,
        Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;,
        Lcom/amap/mapapi/map/ItemizedOverlay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/amap/mapapi/core/OverlayItem;",
        ">",
        "Lcom/amap/mapapi/map/Overlay;",
        "Lcom/amap/mapapi/map/Overlay$Snappable;"
    }
.end annotation


# static fields
.field private static d:I


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private e:Lcom/amap/mapapi/map/ItemizedOverlay$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/mapapi/map/ItemizedOverlay",
            "<TItem;>.b;"
        }
    .end annotation
.end field

.field private f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 52
    invoke-direct {p0}, Lcom/amap/mapapi/map/Overlay;-><init>()V

    .line 43
    iput-boolean v4, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->a:Z

    .line 47
    iput-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    .line 48
    iput-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    .line 49
    iput v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    .line 50
    iput v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    .line 53
    iput-object p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->c:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    new-instance v0, Lcom/amap/mapapi/map/aq;

    invoke-direct {v0}, Lcom/amap/mapapi/map/aq;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/aq;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    .line 68
    sget v0, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    if-ne v4, v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x2

    sget v1, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    if-ne v0, v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/ItemizedOverlay$a;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 110
    if-eqz p0, :cond_0

    sget-object v1, Lcom/amap/mapapi/map/ItemizedOverlay$a;->a:Lcom/amap/mapapi/map/ItemizedOverlay$a;

    if-ne v1, p1, :cond_1

    .line 111
    :cond_0
    const/4 p0, 0x0

    .line 130
    :goto_0
    return-object p0

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    .line 125
    sget-object v3, Lcom/amap/mapapi/map/ItemizedOverlay$a;->b:Lcom/amap/mapapi/map/ItemizedOverlay$a;

    if-ne p1, v3, :cond_2

    .line 126
    div-int/lit8 v1, v1, 0x2

    .line 127
    neg-int v0, v1

    .line 129
    :cond_2
    neg-int v3, v2

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/ItemizedOverlay;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZLcom/amap/mapapi/core/OverlayItem;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/amap/mapapi/map/MapView;",
            "ZTItem;I)V"
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p4, p5}, Lcom/amap/mapapi/core/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 393
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 394
    :goto_0
    if-nez v0, :cond_2

    .line 398
    :goto_1
    if-eqz v1, :cond_0

    .line 399
    if-eqz p3, :cond_3

    .line 400
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    .line 401
    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 402
    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/amap/mapapi/map/aq;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 408
    :cond_0
    :goto_2
    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v2

    .line 409
    invoke-virtual {p4}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 412
    if-eqz v1, :cond_4

    .line 413
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0, v1, v2}, Lcom/amap/mapapi/map/Overlay;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 428
    :goto_3
    return-void

    .line 393
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 396
    :cond_2
    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 415
    :cond_4
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0, v1, v2, p3}, Lcom/amap/mapapi/map/Overlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    goto :goto_3
.end method

.method private b(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x2

    sput v0, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    .line 106
    sget-object v0, Lcom/amap/mapapi/map/ItemizedOverlay$a;->b:Lcom/amap/mapapi/map/ItemizedOverlay$a;

    invoke-static {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/ItemizedOverlay$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 91
    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    .line 93
    sget-object v0, Lcom/amap/mapapi/map/ItemizedOverlay$a;->c:Lcom/amap/mapapi/map/ItemizedOverlay$a;

    invoke-static {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/ItemizedOverlay$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract createItem(I)Lcom/amap/mapapi/core/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v5, 0x0

    .line 372
    move v6, v5

    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 373
    invoke-virtual {p0, v6}, Lcom/amap/mapapi/map/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    .line 374
    iget v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-eq v0, v1, :cond_0

    .line 375
    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getItem(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 376
    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZLcom/amap/mapapi/core/OverlayItem;I)V

    .line 372
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getFocus()Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v10

    .line 381
    iget-boolean v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->a:Z

    if-eqz v0, :cond_2

    if-eqz v10, :cond_2

    .line 382
    const/4 v9, 0x1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZLcom/amap/mapapi/core/OverlayItem;I)V

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v5

    .line 384
    invoke-direct/range {v6 .. v11}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZLcom/amap/mapapi/core/OverlayItem;I)V

    .line 387
    :cond_2
    return-void
.end method

.method public getCenter()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getItem(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultMarker()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 652
    const/4 v0, 0x0

    .line 653
    if-nez v0, :cond_0

    .line 654
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->c:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 659
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 660
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 661
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    return-object v0
.end method

.method public getFocus()Lcom/amap/mapapi/core/OverlayItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    iget v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    iget v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    .line 215
    :cond_0
    return-object v0
.end method

.method protected getIndexToDraw(I)I
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b(I)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    return-object v0
.end method

.method public final getLastFocusedIndex()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    return v0
.end method

.method public getLatSpanE6()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Z)I

    move-result v0

    return v0
.end method

.method public getLonSpanE6()I
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Z)I

    move-result v0

    return v0
.end method

.method protected hitTest(Lcom/amap/mapapi/core/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public nextFocus(Z)Lcom/amap/mapapi/core/OverlayItem;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 248
    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    if-ne v1, v2, :cond_2

    .line 253
    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_2
    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    .line 260
    :goto_1
    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->b(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_3
    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    goto :goto_1

    .line 260
    :cond_4
    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/amap/mapapi/map/MapView;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 316
    move v0, v1

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v2

    .line 320
    invoke-virtual {p4}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 321
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p3, Landroid/graphics/Point;->x:I

    .line 322
    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p3, Landroid/graphics/Point;->y:I

    .line 323
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int v3, p1, v3

    int-to-double v3, v3

    .line 324
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, p2, v2

    int-to-double v5, v2

    .line 325
    mul-double v2, v3, v3

    mul-double v4, v5, v5

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4050

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    .line 326
    :goto_1
    if-eqz v2, :cond_2

    move v1, v2

    .line 330
    :cond_0
    return v1

    :cond_1
    move v2, v1

    .line 325
    goto :goto_1

    .line 318
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onTap(I)Z
    .locals 1
    .parameter

    .prologue
    .line 307
    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-eq p1, v0, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay;->getItem(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->setFocus(Lcom/amap/mapapi/core/OverlayItem;)V

    .line 310
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0, p1, p2}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method protected final populate()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 154
    new-instance v0, Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;-><init>(Lcom/amap/mapapi/map/ItemizedOverlay;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    .line 155
    iput v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    .line 156
    iput v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    .line 157
    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->a:Z

    .line 200
    return-void
.end method

.method public setFocus(Lcom/amap/mapapi/core/OverlayItem;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 220
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/OverlayItem;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    if-nez p1, :cond_3

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-eq v0, v2, :cond_3

    .line 225
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/amap/mapapi/map/ItemizedOverlay;Lcom/amap/mapapi/core/OverlayItem;)V

    .line 230
    :cond_2
    iput v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    goto :goto_0

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/OverlayItem;)I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    .line 235
    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-eq v0, v2, :cond_0

    .line 236
    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->setLastFocusedIndex(I)V

    .line 237
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/amap/mapapi/map/ItemizedOverlay;Lcom/amap/mapapi/core/OverlayItem;)V

    goto :goto_0
.end method

.method protected setLastFocusedIndex(I)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    .line 208
    return-void
.end method

.method public setOnFocusChangeListener(Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    .line 196
    return-void
.end method

.method public abstract size()I
.end method
