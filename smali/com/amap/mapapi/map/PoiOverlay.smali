.class public Lcom/amap/mapapi/map/PoiOverlay;
.super Lcom/amap/mapapi/map/ItemizedOverlay;
.source "PoiOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/map/ItemizedOverlay",
        "<",
        "Lcom/amap/mapapi/core/PoiItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/amap/mapapi/map/t;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/amap/mapapi/map/MapView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/core/PoiItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/mapapi/map/PoiOverlay;-><init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/core/PoiItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->e:Z

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/PoiItem;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/core/PoiItem;->getTypeCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/amap/mapapi/core/PoiItem;->getTypeCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/amap/mapapi/core/PoiItem;->getTypeCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ItemizedOverlay;->populate()V

    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method static a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {p0}, Lcom/amap/mapapi/map/PoiOverlay;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, p1

    int-to-float v6, v3

    div-float/2addr v2, v6

    int-to-float v6, p2

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private a(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;
    .locals 4

    const-string v1, "\u7c7b\u522b: "

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/mapapi/core/PoiItem;->getTypeDes()Ljava/lang/String;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#000000"

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/amap/mapapi/core/PoiItem;Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p2}, Lcom/amap/mapapi/core/PoiItem;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tel:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#000000"

    invoke-static {v0, v2}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V

    const/4 v0, 0x4

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;
    .locals 3

    invoke-virtual {p1}, Lcom/amap/mapapi/core/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "\u5730\u5740: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addToMap(Lcom/amap/mapapi/map/MapView;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->e:Z

    return-void
.end method

.method public closePopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/t;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    return-void
.end method

.method protected bridge synthetic createItem(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->createItem(I)Lcom/amap/mapapi/core/PoiItem;

    move-result-object v0

    return-object v0
.end method

.method protected createItem(I)Lcom/amap/mapapi/core/PoiItem;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/PoiItem;

    return-object v0
.end method

.method public enablePopup(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/mapapi/map/PoiOverlay;->c:Z

    iget-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/PoiOverlay;->closePopupWindow()V

    :cond_0
    return-void
.end method

.method protected getLayoutParam()Lcom/amap/mapapi/map/MapView$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutParam(I)Lcom/amap/mapapi/map/MapView$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPopupMarker(Lcom/amap/mapapi/core/PoiItem;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/core/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/ItemizedOverlay;->getDefaultMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    const/16 v1, 0x18

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/amap/mapapi/map/PoiOverlay;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getPopupView(Lcom/amap/mapapi/core/PoiItem;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x5

    const/4 v8, -0x1

    const/4 v7, -0x2

    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-virtual {v1, v9, v2, v9, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->getPopupMarker(Lcom/amap/mapapi/core/PoiItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/amap/mapapi/core/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#000000"

    invoke-static {v5, v6}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->b(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->b(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->a(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1, p1, v0}, Lcom/amap/mapapi/map/PoiOverlay;->a(Landroid/widget/LinearLayout;Lcom/amap/mapapi/core/PoiItem;Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method protected onTap(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay;->onTap(I)Z

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->showPopupWindow(I)Z

    move-result v0

    return v0
.end method

.method public removeFromMap()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "poioverlay must be added to map frist!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lcom/amap/mapapi/map/PoiOverlay;->e:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/t;->a()V

    invoke-virtual {p0}, Lcom/amap/mapapi/map/PoiOverlay;->closePopupWindow()V

    :cond_2
    iput-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->e:Z

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public showPopupWindow(I)Z
    .locals 7

    iget-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "poioverlay must be added to map first!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amap/mapapi/core/PoiItem;

    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/PoiItem;

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/PoiOverlay;->getPopupView(Lcom/amap/mapapi/core/PoiItem;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/amap/mapapi/map/t;

    iget-object v1, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v6}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amap/mapapi/map/PoiOverlay;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->getLayoutParam(I)Lcom/amap/mapapi/map/MapView$LayoutParams;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/t;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/view/View;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v6}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/t;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
