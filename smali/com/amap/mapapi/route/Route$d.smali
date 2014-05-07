.class public abstract Lcom/amap/mapapi/route/Route$d;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/amap/mapapi/route/Route;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/route/Route;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private h(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    if-nez p1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route;->mStartPlace:Ljava/lang/String;

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route;->mTargetPlace:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)Landroid/graphics/Paint;
.end method

.method public a(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Lcom/amap/mapapi/map/RouteMessageHandler;Lcom/amap/mapapi/map/RouteOverlay;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public b(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Lcom/amap/mapapi/map/RouteMessageHandler;Lcom/amap/mapapi/map/RouteOverlay;I)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    if-ltz p5, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    if-le p5, v0, :cond_2

    .line 366
    :cond_0
    const/4 v0, 0x0

    .line 448
    :cond_1
    :goto_0
    return-object v0

    .line 369
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 370
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 371
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 373
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 376
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 378
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 379
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 380
    invoke-virtual {p0, p5}, Lcom/amap/mapapi/route/Route$d;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    const/4 v3, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 382
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 387
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 388
    invoke-virtual {p0, p5}, Lcom/amap/mapapi/route/Route$d;->c(I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 390
    const/high16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 393
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 398
    const/16 v4, 0xa5

    const/16 v5, 0xa6

    const/16 v6, 0xa5

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 399
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 403
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 404
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 406
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 407
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 408
    array-length v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 409
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    const/16 v2, 0x52

    const/16 v3, 0x55

    const/16 v6, 0x52

    invoke-static {v2, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    :cond_3
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 420
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 421
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 422
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 424
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 437
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 439
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v2

    int-to-long v1, v1

    .line 440
    const-wide/32 v3, 0x25800

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 441
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 442
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 444
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 445
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$d;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Landroid/text/Spanned;
    .locals 2
    .parameter

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$d;->h(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "#000000"

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public d(I)I
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 335
    const/4 v0, -0x1

    .line 338
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method public e(I)I
    .locals 1
    .parameter

    .prologue
    .line 342
    if-gtz p1, :cond_0

    .line 343
    const/4 v0, -0x1

    .line 346
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method protected abstract f(I)Landroid/graphics/drawable/Drawable;
.end method

.method public g(I)Lcom/amap/mapapi/core/GeoPoint;
    .locals 2
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getLastPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$d;->b:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getFirstPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    goto :goto_0
.end method
