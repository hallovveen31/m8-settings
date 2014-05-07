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
    .parameter
    .parameter
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

    .prologue
    .line 51
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/mapapi/map/PoiOverlay;-><init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->c:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->e:Z

    .line 57
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 58
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

    .line 59
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/core/PoiItem;->getTypeCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/amap/mapapi/core/PoiItem;->getTypeCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0}, Lcom/amap/mapapi/core/PoiItem;->getTypeCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/amap/mapapi/map/PoiOverlay;->populate()V

    .line 73
    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 290
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 291
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 294
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 296
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    return-object v0

    .line 291
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method static a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 303
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 305
    invoke-static {p0}, Lcom/amap/mapapi/map/PoiOverlay;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 308
    int-to-float v2, p1

    int-to-float v6, v3

    div-float/2addr v2, v6

    .line 309
    int-to-float v6, p2

    int-to-float v7, v4

    div-float/2addr v6, v7

    .line 310
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 312
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 314
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    return-object v0
.end method

.method private a(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;
    .locals 4
    .parameter

    .prologue
    .line 258
    const-string v1, "\u7c7b\u522b: "

    .line 259
    const-string v0, ""

    .line 261
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/mapapi/core/PoiItem;->getTypeDes()Ljava/lang/String;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 262
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

    .line 266
    :goto_0
    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/amap/mapapi/core/PoiItem;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 235
    invoke-virtual {p2}, Lcom/amap/mapapi/core/PoiItem;->getTel()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 242
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

    .line 243
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 244
    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 246
    const/4 v0, 0x4

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 247
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;
    .locals 3
    .parameter

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/amap/mapapi/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    .line 276
    :cond_0
    const-string v1, "\u5730\u5740: "

    .line 277
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

    .line 278
    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addToMap(Lcom/amap/mapapi/map/MapView;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    .line 87
    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->e:Z

    .line 90
    return-void
.end method

.method public closePopupWindow()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/t;->c()V

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    .line 48
    return-void
.end method

.method protected bridge synthetic createItem(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->createItem(I)Lcom/amap/mapapi/core/PoiItem;

    move-result-object v0

    return-object v0
.end method

.method protected createItem(I)Lcom/amap/mapapi/core/PoiItem;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/PoiItem;

    return-object v0
.end method

.method public enablePopup(Z)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/amap/mapapi/map/PoiOverlay;->c:Z

    .line 124
    iget-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->c:Z

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/amap/mapapi/map/PoiOverlay;->closePopupWindow()V

    .line 127
    :cond_0
    return-void
.end method

.method protected getLayoutParam()Lcom/amap/mapapi/map/MapView$LayoutParams;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutParam(I)Lcom/amap/mapapi/map/MapView$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPopupMarker(Lcom/amap/mapapi/core/PoiItem;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/core/PoiItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/amap/mapapi/map/PoiOverlay;->getDefaultMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    :cond_0
    const/16 v1, 0x18

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/amap/mapapi/map/PoiOverlay;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getPopupView(Lcom/amap/mapapi/core/PoiItem;)Landroid/view/View;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x5

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 177
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-virtual {v1, v9, v2, v9, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 182
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 183
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 186
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->getPopupMarker(Lcom/amap/mapapi/core/PoiItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 192
    invoke-virtual {p1}, Lcom/amap/mapapi/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#000000"

    invoke-static {v5, v6}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 194
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->b(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_0

    .line 208
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 210
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->b(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 218
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->a(Lcom/amap/mapapi/core/PoiItem;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-direct {p0, v1, p1, v0}, Lcom/amap/mapapi/map/PoiOverlay;->a(Landroid/widget/LinearLayout;Lcom/amap/mapapi/core/PoiItem;Landroid/content/Context;)V

    .line 224
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 225
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 227
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 229
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    return-object v1
.end method

.method protected onTap(I)Z
    .locals 1
    .parameter

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/amap/mapapi/map/ItemizedOverlay;->onTap(I)Z

    .line 160
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->showPopupWindow(I)Z

    move-result v0

    return v0
.end method

.method public removeFromMap()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    if-nez v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "poioverlay must be added to map frist!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-boolean v1, p0, Lcom/amap/mapapi/map/PoiOverlay;->e:Z

    if-nez v1, :cond_1

    .line 111
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    iget-object v2, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/t;->a()V

    .line 105
    invoke-virtual {p0}, Lcom/amap/mapapi/map/PoiOverlay;->closePopupWindow()V

    .line 109
    :cond_2
    iput-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->e:Z

    :cond_3
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method public showPopupWindow(I)Z
    .locals 7
    .parameter

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->c:Z

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "poioverlay must be added to map first!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amap/mapapi/core/PoiItem;

    .line 140
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/PoiItem;

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/PoiOverlay;->getPopupView(Lcom/amap/mapapi/core/PoiItem;)Landroid/view/View;

    move-result-object v2

    .line 141
    new-instance v0, Lcom/amap/mapapi/map/t;

    iget-object v1, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v6}, Lcom/amap/mapapi/core/PoiItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amap/mapapi/map/PoiOverlay;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/PoiOverlay;->getLayoutParam(I)Lcom/amap/mapapi/map/MapView$LayoutParams;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/t;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/view/View;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    .line 143
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v6}, Lcom/amap/mapapi/core/PoiItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 148
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/t;->b()V

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amap/mapapi/map/PoiOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
