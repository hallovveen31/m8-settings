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

    const/4 v0, -0x1

    sput v0, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/amap/mapapi/map/Overlay;-><init>()V

    iput-boolean v4, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->a:Z

    iput-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    iput-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    iput v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    iput v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    iput-object p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->c:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Lcom/amap/mapapi/map/aq;

    invoke-direct {v0}, Lcom/amap/mapapi/map/aq;-><init>()V

    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/aq;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    sget v1, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/ItemizedOverlay$a;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/amap/mapapi/map/ItemizedOverlay$a;->a:Lcom/amap/mapapi/map/ItemizedOverlay$a;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    sget-object v3, Lcom/amap/mapapi/map/ItemizedOverlay$a;->b:Lcom/amap/mapapi/map/ItemizedOverlay$a;

    if-ne p1, v3, :cond_2

    div-int/lit8 v1, v1, 0x2

    neg-int v0, v1

    :cond_2
    neg-int v3, v2

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/ItemizedOverlay;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/amap/mapapi/map/MapView;",
            "ZTItem;I)V"
        }
    .end annotation

    invoke-virtual {p4, p5}, Lcom/amap/mapapi/core/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    if-eqz v1, :cond_0

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/amap/mapapi/map/aq;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_2
    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v2

    invoke-virtual {p4}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v1, :cond_4

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0, v1, v2}, Lcom/amap/mapapi/map/Overlay;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    :goto_3
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0, v1, v2, p3}, Lcom/amap/mapapi/map/Overlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    goto :goto_3
.end method

.method private b(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

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

    const/4 v0, 0x2

    sput v0, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

    sget-object v0, Lcom/amap/mapapi/map/ItemizedOverlay$a;->b:Lcom/amap/mapapi/map/ItemizedOverlay$a;

    invoke-static {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/ItemizedOverlay$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/amap/mapapi/map/ItemizedOverlay;->d:I

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

    const/4 v11, 0x4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v0

    if-ge v6, v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/amap/mapapi/map/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    iget v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getItem(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZLcom/amap/mapapi/core/OverlayItem;I)V

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getFocus()Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v10

    iget-boolean v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->a:Z

    if-eqz v0, :cond_2

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZLcom/amap/mapapi/core/OverlayItem;I)V

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZLcom/amap/mapapi/core/OverlayItem;I)V

    :cond_2
    return-void
.end method

.method public getCenter()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getItem(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultMarker()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->c:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method public getFocus()Lcom/amap/mapapi/core/OverlayItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    iget v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getIndexToDraw(I)I
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b(I)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    return-object v0
.end method

.method public final getLastFocusedIndex()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    return v0
.end method

.method public getLatSpanE6()I
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Z)I

    move-result v0

    return v0
.end method

.method public getLonSpanE6()I
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Z)I

    move-result v0

    return v0
.end method

.method protected hitTest(Lcom/amap/mapapi/core/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public nextFocus(Z)Lcom/amap/mapapi/core/OverlayItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    :goto_1
    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->b(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/amap/mapapi/map/MapView;)Z
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v2

    invoke-virtual {p4}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p3, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p3, Landroid/graphics/Point;->y:I

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int v3, p1, v3

    int-to-double v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, p2, v2

    int-to-double v5, v2

    mul-double v2, v3, v3

    mul-double v4, v5, v5

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4050

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    move v1, v2

    :cond_0
    return v1

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onTap(I)Z
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay;->getItem(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->setFocus(Lcom/amap/mapapi/core/OverlayItem;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0, p1, p2}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final populate()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;-><init>(Lcom/amap/mapapi/map/ItemizedOverlay;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    iput v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    iput v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->a:Z

    return-void
.end method

.method public setFocus(Lcom/amap/mapapi/core/OverlayItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    iget-object v1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/OverlayItem;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/amap/mapapi/map/ItemizedOverlay;Lcom/amap/mapapi/core/OverlayItem;)V

    :cond_2
    iput v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->e:Lcom/amap/mapapi/map/ItemizedOverlay$b;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/OverlayItem;)I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->h:I

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->setLastFocusedIndex(I)V

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/amap/mapapi/map/ItemizedOverlay;Lcom/amap/mapapi/core/OverlayItem;)V

    goto :goto_0
.end method

.method protected setLastFocusedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->g:I

    return-void
.end method

.method public setOnFocusChangeListener(Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay;->f:Lcom/amap/mapapi/map/ItemizedOverlay$OnFocusChangeListener;

    return-void
.end method

.method public abstract size()I
.end method
